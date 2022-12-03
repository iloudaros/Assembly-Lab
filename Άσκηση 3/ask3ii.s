.arm
.text
.global main


main:


STMDB R13!, {R0-R12,R14} @Desmevoume katahorites

LDR R1,=Stor @pername tin etiketa Stor

ADD R2,R0,#5
MOV R0, #0x00 @katahoroume ston R0 tin timi 0
STRB R0,[R1] @katahoroume ston R1 ena word apo ton R0

Loop:

ADD R0,R0, #1

STRB R0, [R1,#1]!

CMP R0,R2

BLO Loop

check:

LDMIA R13!, {R0-R12,PC}

.data

Stor:

.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
