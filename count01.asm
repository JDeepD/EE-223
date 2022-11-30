; Count 0s and 1s in 8 bit number
jmp start

start: nop
; count 0s
MVI C, 00H
; count 1s 
MVI D, 00H
LDA 2500H
MVI B, 08H
ROTATE: RLC
		JNC COUNT0
		INR D
		JMP LOOP
		COUNT0:	INR C
		LOOP:	DCR B
			JNZ ROTATE 
MOV A, D
; number of 1s
STA 2510H
MOV A, C
; Number of 0s
STA 2511H

hlt
