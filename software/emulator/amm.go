/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package main

import (
	"bytes"
	"encoding/hex"
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"math"
	"os"
	"time"

	"gitlab.com/phix/amm812/software/tables/generate"
)

var logger *log.Logger

var (
	frequency uint = 1000 // 1Khz
	memory         = make([]byte, math.MaxUint16)
)

var (
	regA  [4]byte
	regIR byte
	regMAR,
	regPC uint16
)

var (
	flagC,
	flagN,
	flagZ bool
)

const (
	opADD byte = iota
	opADC
	opSUB
	opSBC
	opAND
	opOR
	opXOR
	opTST
	opLDI
	opLDM
	opSTM
	opMOV
	opJMP
	opJPC
	opJPN
	opJPZ
)

var timing = []int{
	3, //ADD
	3, //ADC
	3, //SUB
	3, //SBC
	3, //AND
	3, //OR
	3, //XOR
	3, //TST
	2, //LDI
	3, //LDM
	3, //STM
	2, //MOV
	4, //JMP
	1, //JPC
	1, //JPN
	1, //JPZ
}

var (
	aluLow  = generate.ALULow()
	aluHigh = generate.ALUHigh()
)

func loadMAR() {
	regMAR = uint16(memRead(regPC+1))<<8 | uint16(memRead(regPC))
	regPC += 2
}

func memRead(addr uint16) byte {
	if addr == 0xFFFF {
		var in [1]byte
		if _, err := os.Stdin.Read(in[:]); err != nil {
			logger.Fatalln(err)
		}
		return in[0]
	}
	return memory[addr]
}

func memWrite(addr uint16, data byte) {
	switch addr {
	case 0xFFFF:
		if _, err := os.Stdout.Write([]byte{data}); err != nil {
			logger.Fatalln(err)
		}
	case 0xFFFE:
		fmt.Printf("0x%X\n", data)
	case 0xFFFD:
		fmt.Printf("%d\n", data)
	case 0xFFFC:
		logger.Println("halt")
		os.Exit(0)
	case 0xFFFB:
		start := uint16(regA[0]) << 8
		end := uint16(regA[1]) << 8
		if start == end {
			start = 0
			end = 0xFFFF
		} else if start > end {
			start = 0
		}

		fmt.Println()
		io.Copy(hex.Dumper(os.Stdout), bytes.NewReader(memory[start:end]))
	case 0xFFFA:
		fmt.Printf("\nA=[0x%X,0x%X,0x%X,0x%X], PC=0x%X, F=[", regA[0], regA[1], regA[2], regA[3], regPC)
		if flagC {
			fmt.Print("C")
		} else {
			fmt.Print("_,")
		}
		if flagN {
			fmt.Print("N")
		} else {
			fmt.Print("_,")
		}
		if flagZ {
			fmt.Print("Z")
		} else {
			fmt.Print("_,")
		}
		fmt.Print("]\n")
	default:
		memory[addr] = data
	}

}

func aluOperation(inst, destReg, srcReg byte) {
	a := regA[srcReg]
	b := memRead(regMAR)

	// Low nibble

	al := uint16(a & 0xF)
	bl := uint16((b & 0xF) << 4)

	il := uint16(inst) << 11
	if flagC {
		il &= 0x100
	}

	l := aluLow[il|al|bl]
	lout := l & 0xF
	lc := l & 0x10
	ln := l & 0x20
	lz := l & 0x40

	// High nibble
	ah := uint16(a&0xF0) >> 4
	bh := uint16((b & 0xF0))

	ih := uint16(inst) << 11
	if lc != 0 {
		ih &= 0x100
	}
	if ln != 0 {
		ih &= 0x200
	}

	h := aluLow[ih|ah|bh]
	hout := h & 0xF

	flagC = h&0x10 != 0
	flagN = h&0x20 != 0
	flagZ = h&0x40 != 0 && lz != 0

	regA[destReg] = hout<<4 | lout
}

func main() {
	flag.UintVar(&frequency, "hz", frequency, "Specify CPU frequency")
	romName := flag.String("rom", "", "ROM to execute")
	romLocation := flag.Uint("location", 0, "ROM location")
	romLoad := flag.Uint("load", 0, "Size of ROM that will be loaded from stdin")
	pipeMode := flag.Bool("pipe", false, "Run in pipe mode")
	flag.Parse()

	if *pipeMode {
		logger = log.New(ioutil.Discard, "", 0)
	} else {
		logger = log.New(os.Stdout, "", 0)

		logger.Println("AMM816 Emulator")
		logger.Println("Copyright (C) 2016-2018 Andreas T Jonsson")
		logger.Println()
	}

	if *romName == "" && *romLoad == 0 {
		flag.PrintDefaults()
		return
	}

	if *romLoad > 0 {
		rom := make([]byte, *romLoad)
		if n, err := os.Stdin.Read(rom); n != len(rom) || err != nil {
			logger.Fatalln("could not read ROM from stdin")
		}
		copy(memory[*romLocation:], rom)
	} else {
		rom, err := ioutil.ReadFile(*romName)
		if err != nil {
			logger.Println(err)
			return
		}
		copy(memory[*romLocation:], rom)
	}

	regPC = uint16(*romLocation)

	for {
		beginTime := time.Now()

		regIR = memRead(regPC)
		regPC++

		destReg := (regIR & 0x30) >> 4
		srcReg := (regIR & 0xC0) >> 6

		cycles := timing[regIR&0xF]

		switch regIR & 0xF {
		case opADD, opADC, opSUB, opSBC, opAND, opOR, opXOR, opTST:
			loadMAR()
			aluOperation(regIR&0x7, destReg, srcReg)
		case opLDI:
			regA[destReg] = memRead(regPC)
			regPC++
		case opLDM:
			loadMAR()
			regA[destReg] = memRead(regMAR)
		case opSTM:
			loadMAR()
			memWrite(regMAR, regA[srcReg])
		case opMOV:
			regA[destReg] = regA[srcReg]
		case opJMP:
			loadMAR()
			regPC = regMAR
		case opJPC:
			if flagC {
				loadMAR()
				regPC = regMAR
				cycles = 4
			}
		case opJPN:
			if flagN {
				loadMAR()
				regPC = regMAR
				cycles = 4
			}
		case opJPZ:
			if flagZ {
				loadMAR()
				regPC = regMAR
				cycles = 4
			}
		default:
			logger.Fatalln("invalid opcode")
		}

		execTime := (time.Second / time.Duration(frequency)) * time.Duration(cycles)
		untilEnd := time.Until(beginTime.Add(execTime))

		if untilEnd > 0 {
			time.Sleep(untilEnd)
		} else {
			logger.Printf("simulation lagging %v", untilEnd*-1)
		}
	}
}
