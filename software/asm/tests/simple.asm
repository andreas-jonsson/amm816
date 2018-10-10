;----------------- Code ----------------------

LDI A2 hello_world
LDI A3 hello_world+1

STM A2 temp



STM A0 0xFFFE   ;halt

;----------------- Data ----------------------

hello_world:
- "Hello World!"

temp:
.. 0

one:
. 1