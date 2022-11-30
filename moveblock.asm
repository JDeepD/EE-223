;Move blocks of data
jmp start

start: nop

MVI D, 06H
LXI H, 2500H
LXI B, 2510H
LOOP: MOV A, M
	STAX B
	INX H
	INX B
	DCR D
	JNZ LOOP

hlt
