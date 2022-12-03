
.arm 
.text
.global main

main:
STMDB R13!,{R0-R12}

@ tomRO vazoume tin diefthinsi tou Value kai ston R1 to periexomeno 
LDR R0,=Values
LDR R1,[R0,#0]

@ fortonoume tis diefthinseis tou ValuesA ston kataxoriti R2 kai antistoixa ston R3
LDR R2,=ValuesA
LDR R3,=ValuesB
LDR R7,=ResultG

Loop:

@ stous kataxorites/R4,R5 fortonoume ta dedomena twn ValuesA,B  
LDR R4,[R2,R1]
LDR R5,[R3,R1]

@r6 = r5 + r4 
ADC R6,R5,R4


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
.word 0x207FFE39, 0x166F300B, 0x572D722D, 0x421786A8
ValuesB:	
.word 0x13011259, 0x5A705920, 0x17624353, 0x928CC843
ResultG:
.word 0x0000, 0x0000, 0x0000, 0x0000
Values:
.word 0x0000
