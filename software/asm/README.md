# Assembler

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
| `MOV` | 0xB | Move values between registers.
| `JMP` | 0xC | Jumps to memory location.
| `JPC` | 0xD | If carry flag is set, jumps to memory location.
| `JPN` | 0xE | If accumulator is negative, jumps to memory location.
| `JPZ` | 0xF | If accumulator is zero, jumps to memory location.

## T-Stages

| T | Action | Operations |
| :---: | ------ | ---------- |
| 0 | Instruction fetch (low-byte) / PC increment                   | All
| 1 | Data fetch (low-byte) / PC increment / Decode                 | All except MOV and LDI
| 2 | Data fetch (high-byte) / PC increment                         | All except MOV and LDI
| 3 | Arithmetic or logic instruction with data                     | ADD, ADC, SUB, SBC, AND, OR, XOR, TST
| 4 | Load accumulator, immediate / PC increment                    | LDI
| 5 | Load accumulator from memory                                  | LDM
| 6 | Store accumulator to memory                                   | STM
| 7 | Move value between registers                                  | MOV
| 8 | Jump immediate (target address in current instruction)        | JMP, and conditional jumps when condition true
| 9 | DMA                                                           |