# amm812

## Mnemonic Table

| Mnemonic | Opcode | Description |
| :------: | :----: | ----------- |
| `ADD` | 0x0 | Adds contens of memory to accumulator.
| `ADC` | 0x1 | Adds content of memory to accumulator with carry.
| `SUB` | 0x2 | Subtracts contents of memory from accumulator.
| `SBC` | 0x3 | Subtracts contents of memory from accumulator with carry.
| `AND` | 0x4 | Binary AND of memory with accumulator.
| `OR`  | 0x5 | Binary OR of memory with accumulator.
| `XOR` | 0x6 | Binary XOR of memory with accumulator.
| `TST` | 0x7 | Compare accumelator with content of memory location. Sets flags: C=greater, Z=equal, N=less
| `LDI` | 0x8 | Loads 8-bit value of operand into accumulator.
| `LDM` | 0x9 | Loads contents of memory into accumulator.
| `STM` | 0xA | Stores contents of accumulator to memory.
| `JMP` | 0xB | Jumps to memory location.
| `JPC` | 0xC | If carry flag is set, jumps to memory location.
| `JPE` | 0xD | If event flag is set, jumps to memory location.
| `JPN` | 0xE | If accumulator is negative, jumps to memory location.
| `JPZ` | 0xF | If accumulator is zero, jumps to memory location.