/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package main

import (
	"flag"
	"io/ioutil"
	"log"
	"math"
	"os"
	"time"
)

const version = "0.0.1"

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

func loadMAR() {
	regMAR = uint16(memRead(regPC+1))<<8 | uint16(memRead(regPC))
	regPC += 2
}

func memRead(addr uint16) byte {
	if addr == 0xFFFF {
		var in [1]byte
		if _, err := os.Stdin.Read(in[:]); err != nil {
			panic(err)
		}
		return in[0]
	}
	return memory[addr]
}

func memWrite(addr uint16, data byte) {
	switch addr {
	case 0xFFFF:
		if _, err := os.Stdout.Write([]byte{data}); err != nil {
			panic(err)
		}
	case 0xFFFE:
		log.Println("halt")
		os.Exit(0)
	default:
		memory[addr] = data
	}

}

func aluOperation(inst, destReg, srcReg byte) {
	switch inst {
	case opADD, opADC, opSUB, opSBC, opAND, opOR, opXOR, opTST:
	default:
		panic("invalid ALU opcode")
	}
}

func main() {
	flag.UintVar(&frequency, "hz", frequency, "Specify CPU frequency")
	romName := flag.String("rom", "", "ROM to execute")
	romLocation := flag.Uint("load", 0, "ROM location")
	flag.Parse()

	log.Println("AMM816 Emulator")
	log.Println("Copyright (C) 2016-2018 Andreas T Jonsson")
	log.Printf("Version: %v", version)
	log.Println()

	if *romName == "" {
		flag.PrintDefaults()
		return
	}

	rom, err := ioutil.ReadFile(*romName)
	if err != nil {
		log.Println(err)
		return
	}
	copy(memory[*romLocation:], rom)
	regPC = uint16(*romLocation)

	for {
		beginTime := time.Now()

		regIR = memRead(regPC)
		regPC++

		destReg := regIR & 0x30
		srcReg := regIR & 0xC0

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
			panic("invalid opcode")
		}

		execTime := (time.Second / time.Duration(frequency)) * time.Duration(cycles)
		untilEnd := time.Until(beginTime.Add(execTime))

		if untilEnd > 0 {
			time.Sleep(untilEnd)
		} else {
			log.Printf("simulation lagging %v", untilEnd*-1)
		}
	}
}
