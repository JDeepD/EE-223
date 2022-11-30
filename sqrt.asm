;division of 2 8 bit nos using repeated sub
jmp start

start: nop

MVI C, 01H
MVI B, 01H

LDA 2500H
SUBTRACT: SUB B
	JZ EXIT
	INR C
	INR B
	INR B
	JMP SUBTRACT
EXIT: MOV A, C
	STA 2510H
	hlt
