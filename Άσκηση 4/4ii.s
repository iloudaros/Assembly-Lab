.arm
.text
.global main


main:

STMDB R13!, {R0-R12,R14}


MOV R5,#5
MOV R6,#0
MOV R7,#0
MOV R8,#4
MOV R9,#0

BL Loop

end:

LDMIA R13!,{R0-R12,R14}
MOV PC,R14

Loop:

STMDB R13!, {R2-R4}

LDR R1,=Const
LDR R0,=Values

ADD R0,R0,R6

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

MOV RO,R2,LSR #6



CMP R0,R9

MOVGT R9,R0
MOVGT R10,R7



ADD R6,R6,#3

ADD R7,R7,#1

CMP R7,R8

BMI Loop

STRB R9,[R1,#3]
STRB R10,[R1,#4]

END:

LDMIA R13!,{R2-R4}

MOV PC,R14



.data


Values:

.byte 0x02, 0x03, 0x04
.byte 0x10, 0x05, 0x06
.byte 0x0B, 0x02, 0x0D
.byte 0x01, 0x0C, 0x08

Const:

.byte 0x04, 0x07, 0x05
