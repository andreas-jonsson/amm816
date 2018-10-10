/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package main

import (
	"bufio"
	"bytes"
	"encoding/binary"
	"encoding/hex"
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"os"
	"path"
	"strconv"
	"strings"
)

const version = "0.0.1"

type (
	patchInfo struct {
		lable,
		file string
		line        int
		isImmediate bool
	}

	assembler struct {
		file   string
		line   int
		offset uint16

		writer  io.WriteSeeker
		patches map[uint16]patchInfo
		lables  map[string]uint16
	}
)

var logger *log.Logger

var opcodes = map[string]byte{
	"ADD": 0x0,
	"ADC": 0x1,
	"SUB": 0x2,
	"SBC": 0x3,
	"AND": 0x4,
	"OR":  0x5,
	"XOR": 0x6,
	"TST": 0x7,
	"LDI": 0x8,
	"LDM": 0x9,
	"STM": 0xA,
	"MOV": 0xB,
	"JMP": 0xC,
	"JPC": 0xD,
	"JPN": 0xE,
	"JPZ": 0xF,
}

func (asm *assembler) syntaxError() {
	//logger.Panicf("syntax error, %s : %d", asm.file, asm.line)
	logger.Fatalf("syntax error, %s : %d", asm.file, asm.line)
}

func (asm *assembler) checkLen(args []string, n int) {
	if len(args) != n {
		asm.syntaxError()
	}
}

func (asm *assembler) parseNumber(s string) (uint16, error) {
	var (
		n   uint64
		err error
	)

	if strings.HasPrefix(s, "0x") {
		n, err = strconv.ParseUint(s[2:], 16, 16)
		if err == nil {
			return uint16(n), nil
		}
	} else if strings.HasPrefix(s, "%") {
		n, err = strconv.ParseUint(s[1:], 2, 16)
		if err == nil {
			return uint16(n), nil
		}
	} else {
		n, err = strconv.ParseUint(s, 10, 16)
		if err == nil {
			return uint16(n), nil
		}
	}

	return 0, err
}

func (asm *assembler) parseRegName(s string) byte {
	if s[0] == 'A' {
		n, err := strconv.ParseUint(s[1:], 10, 2)
		if err == nil {
			return byte(n)
		}
	}

	asm.syntaxError()
	return 0
}

func (asm *assembler) toInstruction(inst, dest, src string) byte {
	op, ok := opcodes[inst]
	if !ok {
		asm.syntaxError()
	}

	d := asm.parseRegName(dest) << 4
	s := asm.parseRegName(src) << 6
	return op | d | s
}

func (asm *assembler) writeUint8(value byte) {
	if err := binary.Write(asm.writer, binary.LittleEndian, value); err != nil {
		logger.Fatalln(err)
	}
	asm.offset++
}

func (asm *assembler) writeUint16(value uint16) {
	if err := binary.Write(asm.writer, binary.LittleEndian, value); err != nil {
		logger.Fatalln(err)
	}
	asm.offset += 2
}

func (asm *assembler) writeString(value string) uint16 {
	if !strings.HasPrefix(value, "\"") || !strings.HasSuffix(value, "\"") {
		asm.syntaxError()
	}
	value = value[1:]

	var b bytes.Buffer
	for i := 0; i < len(value); i++ {
		r := value[i]
		switch r {
		case '\\':
			i++
			switch value[i] {
			case 'n':
				b.WriteRune('\n')
			case 't':
				b.WriteRune('\t')
			case 'r':
				b.WriteRune('\r')
			case 'a':
				b.WriteRune('\a')
			case '0':
				b.WriteByte(0)
			case '"':
				b.WriteRune('"')
			default:
				asm.syntaxError()
				return 0
			}
		case '"':
			b.WriteByte(0)
			if err := binary.Write(asm.writer, binary.LittleEndian, b.Bytes()); err != nil {
				logger.Fatalln(err)
			}

			ln := uint16(b.Len())
			asm.offset += ln
			return ln
		default:
			b.WriteByte(r)
		}
	}

	asm.syntaxError()
	return 0
}

func (asm *assembler) writeOpcode(args []string) uint16 {
	switch args[0] {
	case ".":
		asm.checkLen(args, 2)
		n, err := asm.parseNumber(args[1])
		if err != nil {
			asm.syntaxError()
		}
		asm.writeUint8(byte(n))
		return 1
	case "..":
		asm.checkLen(args, 2)
		n, err := asm.parseNumber(args[1])
		if err != nil {
			asm.syntaxError()
		}
		asm.writeUint16(n)
		return 2
	case "-":
		asm.checkLen(args, 2)
		return asm.writeString(args[1])
	case "ADD", "ADC", "SUB", "SBC", "AND", "OR", "XOR", "TST":
		asm.checkLen(args, 4)
		asm.writeUint8(asm.toInstruction(args[0], args[1], args[2]))

		lable := args[3]
		n, err := asm.parseNumber(lable)
		if err != nil {
			asm.patches[asm.offset] = patchInfo{lable, asm.file, asm.line, false}
		}
		asm.writeUint16(n)
		return 3
	case "LDM":
		asm.checkLen(args, 3)
		asm.writeUint8(asm.toInstruction(args[0], args[1], "A0"))

		lable := args[2]
		n, err := asm.parseNumber(lable)
		if err != nil {
			asm.patches[asm.offset] = patchInfo{lable, asm.file, asm.line, false}
		}
		asm.writeUint16(n)
		return 3
	case "STM":
		asm.checkLen(args, 3)
		asm.writeUint8(asm.toInstruction(args[0], "A0", args[1]))

		lable := args[2]
		n, err := asm.parseNumber(lable)
		if err != nil {
			asm.patches[asm.offset] = patchInfo{lable, asm.file, asm.line, false}
		}
		asm.writeUint16(n)
		return 3
	case "JMP", "JPC", "JPN", "JPZ":
		asm.checkLen(args, 2)
		asm.writeUint8(asm.toInstruction(args[0], "A0", "A0"))

		lable := args[1]
		n, err := asm.parseNumber(lable)
		if err != nil {
			asm.patches[asm.offset] = patchInfo{lable, asm.file, asm.line, false}
		}
		asm.writeUint16(n)
		return 3
	case "LDI":
		asm.checkLen(args, 3)
		asm.writeUint8(asm.toInstruction(args[0], args[1], "A0"))

		lable := args[2]
		n, err := asm.parseNumber(lable)
		if err != nil {
			asm.patches[asm.offset] = patchInfo{lable, asm.file, asm.line, true}
		}
		asm.writeUint8(byte(n))
		return 2
	case "MOV":
		asm.checkLen(args, 3)
		asm.writeUint8(asm.toInstruction(args[0], args[1], args[2]))
		return 1
	default:
		asm.syntaxError()
		return 0
	}
}

func (asm *assembler) patchProgram() {
	for offset, info := range asm.patches {
		parts := strings.SplitN(info.lable, "+", 2)

		var (
			add uint16
			err error
		)

		if len(parts) == 2 {
			add, err = asm.parseNumber(parts[1])
			if err != nil {
				asm.syntaxError()
				return
			}
		}

		addr, ok := asm.lables[parts[0]]
		if !ok {
			logger.Fatalf("unknown lable '%s', %s : %d", parts[0], info.file, info.line)
		}

		asm.writer.Seek(int64(offset), io.SeekStart)
		if info.isImmediate {
			if add == 1 {
				asm.writeUint8(byte((addr & 0xFF00) >> 8))
			} else {
				asm.writeUint8(byte(addr & 0xFF))
			}
		} else {
			asm.writeUint16(addr + add)
		}
	}
	asm.writer.Seek(0, io.SeekEnd)
}

func (asm *assembler) saveLable(lable string) {
	asm.lables[lable] = asm.offset
}

func main() {
	fileName := flag.String("in", "tests/simple.asm", "Assemble file to process")
	outFile := flag.String("out", "-", "Resulting binary")
	flag.Parse()

	if *outFile != "-" {
		logger = log.New(os.Stdout, "", 0)

		logger.Println("AMM816 Assembler")
		logger.Println("Copyright (C) 2016-2018 Andreas T Jonsson")
		logger.Printf("Version: %v", version)
		logger.Println()
	} else {
		logger = log.New(ioutil.Discard, "", 0)
	}

	var (
		fp     = os.Stdin
		ofp, _ = ioutil.TempFile("", "")
		mfp    = ioutil.Discard
		err    error
	)

	defer func() {
		finalOutput := os.Stdout
		if *outFile != "-" {
			var err error
			finalOutput, err = os.Create(*outFile)
			if err != nil {
				logger.Fatalln(err)
			}
			defer ofp.Close()

			ofp.Seek(0, io.SeekStart)
			io.Copy(hex.Dumper(os.Stdout), ofp)
			logger.Println("\n")
		}

		size, _ := ofp.Seek(0, io.SeekEnd)
		logger.Printf("program size: %d bytes", size)

		ofp.Seek(0, io.SeekStart)
		io.Copy(finalOutput, ofp)
		ofp.Close()
		os.Remove(ofp.Name())
	}()

	if *fileName != "-" {
		fp, err = os.Open(*fileName)
		if err != nil {
			logger.Fatalln(err)
		}
		defer fp.Close()
	}

	if *outFile != "-" {
		dbg, err := os.Create(strings.TrimSuffix(*outFile, path.Ext(*outFile)) + ".map")
		if err != nil {
			logger.Fatalln(err)
		}
		defer dbg.Close()
		mfp = dbg
	}
	fmt.Fprintln(mfp, *fileName)

	asm := &assembler{
		file:    *fileName,
		offset:  0,
		lables:  make(map[string]uint16),
		patches: make(map[uint16]patchInfo),
		writer:  ofp,
	}

	scanner := bufio.NewScanner(fp)
	for asm.line = 1; scanner.Scan(); asm.line++ {
		line := scanner.Text()
		if line == "q" {
			break
		}

		for i, c := range line {
			if c == ';' {
				line = strings.TrimSpace(line[:i])
				break
			}
		}

		args := strings.Fields(line)
		argsLen := len(args)

		if argsLen == 0 {
			continue
		}

		// This is a bit of a hack.
		if args[0] == "-" {
			args[1] = strings.TrimSpace(line[1:])
			args = args[:2]
			argsLen = len(args)
		}

		first := args[0]
		l := len(first)

		if argsLen == 1 && first[l-1:] == ":" {
			lable := first[:l-1]
			asm.saveLable(lable)
			continue
		}

		args[0] = strings.ToUpper(args[0])
		for n := asm.writeOpcode(args); n > 0; n-- {
			fmt.Fprintln(mfp, asm.line)
		}
	}

	if err = scanner.Err(); err != nil {
		asm.syntaxError()
	}
	asm.patchProgram()
}
