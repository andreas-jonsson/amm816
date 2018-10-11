/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package generate

func ALULow() []byte {
	const romSize = 8 * 1024
	rom := make([]byte, romSize)

	for i := range rom {
		a := i & 0xF         // 0-3
		b := i & 0xF0 >> 4   // 4-7
		c := i & 0x1000 >> 8 // 8
		op := i & 0xE00 >> 9 // 11-13

		n := genALULow(a, b, op, c)

		if n&0xF0 != 0 {
			rom[i] = byte(n&0xF) | 0xF0
		} else {
			rom[i] = byte(n)
		}
	}
	return rom
}

func genALULow(a, b, op, c int) int {
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
