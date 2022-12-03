
.arm
.text
.global main

main:
STMDB R13!,{R0-R12}
@ ston RO vazoume tin diefthinsi tou Value kai ston R1 to periexomeno 
LDR R0,=Values
LDR R1,[R0,#0]

@ fortonoume tis diefthinseis tou ValuesA ston kataxoriti R2 kai antistoixa ston R3
LDR R2,=ValuesA
LDR R3,=ValuesB
LDR R7,=ResultG

Loop:

@ stous kataxorites R4,R5 fortonoume ta dedomena twn ValuesA,B 
LDRH R4,[R2,R1]
LDRH R5,[R3,R1]

@ r6 = r5 + r4 
ADD R6,R5,R4


STRH R6,[R7,R1]

ADD R1,R1,#0x1

CMP R1,#0x10


@ pigainei sto loop an r1~0xE arnitiko 
BLT Loop
label:


LDMIA R13!,{R0-R12}

MOV PC,R14 

.data

ValuesA:
.hword 0x207F, 0xFE39, 0x166F, 0x300B, 0x572D, 0x722D, 0x4217, 0x86A8
ValuesB:
.hword 0x1301, 0x1259, 0x5A70, 0x5920, 0x1762, 0x4353, 0x928C, 0xC843
ResultG:
.hword 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
Values:
.hword 0x00
