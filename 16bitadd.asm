;16 Bit Addition with carry

jmp start

start: nop

; Get 2 bit nos from 2500 and 2502. Store in HL and DE pair
LHLD 2500H
XCHG
LHLD 2502H
; Initialise C: carry
MVI C, 00H

; HL <- HL + DE
DAD D
JNC down
; Increment C: carry if there is carry
INR C
MOV A, C
down: SHLD 2600H
STA 2602H

hlt
