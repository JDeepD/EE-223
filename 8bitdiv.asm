;division of 2 8 bit nos using repeated sub
jmp start

start: nop

; Divisor
LDA 2500H
MOV B, A
; Divident
LDA 2501H
MVI C, 00H
CMP B
JC CARRY
REPEAT: SUB B
	INR C
	CMP B
	JNC REPEAT
    ; Remainder
CARRY: STA 2510H
	MOV A, C
    ; Quotient
	STA 2511H

hlt
