; Bubble Sort
jmp start

start: nop

LDA 2500H
DCR A
MOV C, A
OUTER: MOV B, C
	LXI H, 2501H
	INNER: MOV A, M
		INX H
		CMP M
		JC NOS 
		MOV D, M
		MOV M, A
		DCX H
		MOV M, D
		INX H
		NOS: DCR B
	JNZ INNER
		DCR C
JNZ OUTER

hlt
