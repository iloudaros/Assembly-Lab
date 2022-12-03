.arm
.text
.global main

main:

STMDB R13!, {R0-R12,R14}

LDR R0,=Stor

MOV R1, #1
MOV R2, #2
STR R1,[R0]
ADD R0, R0, #4
STR R2,[R0]
ADD R0,R0, #4
ADD R7, R0, #16
 
Loop:

ADD R3,R1,R2

STR R3,[R0],#4

MOV R1,R2

MOV R2,R3

CMP R0,R7

BCC Loop

check:

LDMIA R13!,{R0-R12,PC}


.data

Stor:

.word 0,0,0,0,0,0
