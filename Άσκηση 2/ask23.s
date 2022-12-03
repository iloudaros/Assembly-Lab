
.arm
.text
.global main

main:
STMDB R13!,{R0-R12}

@ ston RO vazoume tin diefthinsi tou Value kai ston R1 to periexomeno ara etsi xrhsimopoiw tin etiketa values  
LDR R0,=Values
LDR R1,[R0,#0]

@ fortonoume tis diefthinseis tou ValuesA ston kataxoriti R2 kai antistoixa ston R3 xrisimopoiw tis etiketes valuesa kai values b 
LDR R2,=ValuesA
LDR R3,=ValuesB
LDR R7,=ResultG

Loop:

@ stous kataxorites R4,R5 fortonoume ta dedomena twn ValuesA,B 
LDR R4,[R2,R1]
LDR R5,[R3,R1]

@ r6 = r5 + r4 
ADD R6,R5,R4


STR R6,[R7,R1]

ADD R1,R1,#0x4

CMP R1,#0x10

@ pigainei sto loop an r1~0xE arnitiko 
BLT Loop
label:



LDMIA R13!,{R0-R12}

MOV PC,R14 

.data

ValuesA:
.word 0x39FE7F20, 0xB306F16, 0x2D722D57, 0xA8861742
ValuesB:
.word 0x59120113, 0x2B89DF70, 0x53436217,0x43C88C92
ResultG:
.word 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000
Values:
.word 0x000
