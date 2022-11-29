;8 Bit Subtraction

jmp start

;data

;code
start: nop

LXI H, 2500H
MOV A, M
INX H
SUB M
INX H
MOV M, A

hlt
