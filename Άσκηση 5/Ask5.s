.arm 
.text
.global main

main:

STMDB R13!,{R0-R12,PC}

MOV R1,#0
LDR R6,=Tab
BL Subrtn_1

end:

LDMIA R13!,{R0-R12,PC}


Subrtn_1:

STMDB R13!,{R0-R6}


ADD R3,R1,#1
LDRB R0,[R6,R1]

MOV R2,R1

Subrtn_2:

LDRB R4,[R6,R3]

CMP R0,R4

BLS Subrtn_3

MOV R2,R3

MOV R0,R4

Subrtn_3:

ADD R3,R3,#1
CMP R3,#20
BLO Subrtn_2

LDRB R5,[R6,R1]
STRB R0,[R6,R1]
STRB R5,[R6,R2]
ADD R1,R1,#1

CMP R1,#19

BLO Subrtn_1

 BHS end


LDMIA R13!,{R0-R6}

MOV PC,LR


.data 

Tab:

.byte 0x14
.byte 0x19
.byte 0x42
.byte 0xDA
.byte 0x10
.byte 0x82
.byte 0xBB
.byte 0x62
.byte 0x97
.byte 0x3E
.byte 0x6F
.byte 0x01
.byte 0xC3
.byte 0x0A
.byte 0x7F
.byte 0x27
.byte 0x89
.byte 0x49
.byte 0x77
.byte 0x46 