;16 Bit Subtraction with Borrow

jmp start

;data

;code
start: nop

; Initialise Carry/Borrow to 0
MVI C, 00H
LHLD 2500H
XCHG
LHLD 2502H

; 2500 -> DE
; 2502 -> HL

MOV A, E
SUB L

; L <- E - L
MOV L, A

MOV A, D
SBB H
; H <- D - H
MOV H, A
JNC DOWN
INR C
DOWN: SHLD 2600H
MOV A, C
STA 2602H

hlt
