
; Read a byte from stdin and write it to stdout
LDM A0 0xFFFF
ADD A0 A0 one
STM A0 0xFFFF



; Memory dump and shutdown

;LDI A0 0
;LDI A1 1 ; Dump one page of memory
;STM A0 0xFFFB   ;dump
STM A0 0xFFFA   ;reg
STM A0 0xFFFC   ;halt

;------------------------------ Data --------------------------------

one:
. 1
