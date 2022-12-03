.arm
.text
.global main



main:

STMDB R13!, {R0-R12,R14}



LDR R0,=Values
LDR R1,=Const
LDR R2,=Result

MOV R7,#4

BL Loop

end:

LDMIA R13!,{R0-R12,PC}



Loop:

STMDB R13!,{R4-R6}

MOV R6,#6

LDR R3,[R0]

ADD R1,R1,#6


LDRB R4,[R1]

MOV R5,R4




ContLoop:

MUL R5,R3,R5

SUB R1,R1,#1

LDRB R4,[R1]

ADD R5,R5,R4


STR R5,[R2]

ADD R2,R2,#4


SUBS R6,R6,#1

BHI ContLoop



ADD R0,R0,#4

LDR R3,[R0]

SUBS R7,R7,#1

BHI Loop

LDMIA R13!,{R4-R6}

MOV PC, R14

.data

Result:

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

.word 0

Values:

.word 0x10

.word 0x50A

.word 0xCDCA

.word 0x80AB


Const:

.byte 0x04,0x07,0x05

.byte 0x20,0x1A,0x12,0x06
