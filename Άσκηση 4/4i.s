.arm
.text
.global main



main:

STMDB R13!, {R0-R12,R14}


MOV R5,#5

LDR R6,=Result
MOV R7, #4
MOV R8, #0
LDR R1,=Const
LDR R0,=Values

BL Loop

LDMIA R13!, {R0-R12,R14}

MOV PC, R14

Loop:

STMDB R13!, {R2-R4}

ADD R0,R0,R8

LDRB R2,[R0]
LDRB R4,[R1]
MUL R2,R4,R2

LDRB R3,[R0,#1]
LDRB R4,[R1,#1]
MUL R3,R4,R3

ADD R2,R2,R3

LDRB R3,[R0,#2]
LDRB R4,[R1,#2]
MUL R3,R4,R3

SUB R2,R2,R3

MUL R2,R5,R2

MOV R0,R2,LSR #6



STR R0,[R6]




ADD R8,R8,#3

ADD R6,R6,#4

SUBS R7,R7,#1

CMP R7,#0

BHI Loop


LDMIA R13!, {R2-R4}

MOV PC,LR

.data

Values:
.byte 0x02, 0x03, 0x04
.byte 0x10, 0x05, 0x06
.byte 0x0B, 0x02, 0x0D
.byte 0x01, 0x0C, 0x08

Const:
.byte 0x04, 0x07, 0x05

Result:
.word 0x00, 0x00, 0x00, 0x00
