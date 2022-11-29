;Two 8 bit number multiplication
jmp start

start: nop

; Take inputs. Here hardcoded
MVI B, 02H
MVI C, 08H

MVI A, 00H

MULT: ADD B
DCR C
JNZ MULT

STA 2500H

hlt
