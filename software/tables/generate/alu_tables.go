/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package generate

func ALULow() []byte {
	const romSize = 8 * 1024
	rom := make([]byte, romSize)

	for i := range rom {
		a := i & 0xF          // 0-3
		b := i & 0xF0 >> 4    // 4-7
		c := i & 0x100 >> 8   // 8, Carry in
		op := i & 0xE00 >> 11 // 11-13, ALU opcode
		opb := byte(op)

		if opb != opADC && opb != opSBC {
			c = 0
		}

		var n int
		if opb == opTST {
			n = a
			switch {
			case a > b:
				n |= 0x10 // 4, Carry out
			case a < b:
				n |= 0x20 // 5, Negative
			default:
				n |= 0x40 // 6, Zero
			}
		} else {
			switch opb {
			case opADC, opSBC:
				n = genALU(a, b, op, c)
			default:
				n = genALU(a, b, op, 0)
			}

			data := n & 0xF
			if n&0xF0 != 0 {
				n = data  // 0-3, Data out
				n |= 0x10 // 4, Carry out
			} else {
				n = data
			}

			if int8(data) < 0 {
				// Not used at the moment
				//n |= 0x20 // 5, Negative
			} else if data == 0 {
				n |= 0x40 // 6, Zero
			}
		}

		rom[i] = byte(n)
	}
	return rom
}

func ALUHigh() []byte {
	const romSize = 8 * 1024
	rom := make([]byte, romSize)

	for i := range rom {
		a := i & 0xF          // 0-3
		b := i & 0xF0 >> 4    // 4-7
		c := i & 0x100 >> 8   // 8, Carry in
		m := i & 0x200 >> 9   // 9, Negative
		z := i & 0x400 >> 10  // 10, Zero in
		op := i & 0xE00 >> 11 // 11-13, ALU opcode

		var n int
		if byte(op) == opTST {
			n = a
			switch {
			case a > b:
				n |= 0x10 // 4, Carry out
			case a < b:
				n |= 0x20 // 5, Negative
			default:
				switch {
				case c != 0:
					n |= 0x10 // 4, Carry out
				case m != 0:
					n |= 0x20 // 5, Negative
				case z != 0:
					n |= 0x40 // 6, Zero
				default:
					panic("invalid case")
				}
			}
		} else {
			n = genALU(a, b, op, c)

			data := n & 0xF
			if n&0xF0 != 0 {
				n = data  // 0-3, Data out
				n |= 0x10 // 4, Carry out
			} else {
				n = data
			}

			if int8(data) < 0 {
				n |= 0x20 // 5, Negative
			} else if data == 0 && z == 1 {
				n |= 0x40 // 6, Zero
			}
		}

		rom[i] = byte(n)
	}
	return rom
}

func genALU(a, b, op, c int) int {
	switch byte(op) {
	case opADD:
		return a + b
	case opADC:
		return a + b + c
	case opSUB:
		return a - b
	case opSBC:
		return a - b + c
	case opAND:
		return a & b
	case opOR:
		return a | b
	case opXOR:
		return a ^ b
	default:
		panic("invalid opcode")
	}
}
