.arm
.text
.global main



main:

STMDB R13!, {R0-R12,R14}

MOV R0, #94
MOV R1,R0,LSR #1

ADDS R2,R0,R0 @note_1

ADDS R2,R1,R1 @note_2

ADDS R2,R0,R1 @note_3



MOV R0,#0X80000000
ADD R1,R0,#0X8
MOV R2, #1

SUBS R3,R0,R2 @note_4

SUBS R3,R0,R1 @note_5

RSBS R3,R0,R1 @note_6


LDMIA R13!, {R0-R12,PC}
