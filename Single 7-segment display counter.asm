ORG 0000H
MAIN:SETB P3.7; CONFIGURE P3.7 AS SWITCH(INPUT)
MOV P0,#0XC0; DISPLAY "0" IN 7-SEG
MOV R7,#0X09; COUNT
MOV DPTR,#0X0100
LOOP:JB P3.7,$
JNB P3.7,SW_CLOSED
SW_CLOSED:CLR A
MOVC A,@A+DPTR
MOV P0,A
INC DPTR
DJNZ R7,LOOP
ajmp MAIN
ORG 0100H
DB 0XCF,0XA4,0XB0,0X99,0X92,0X82,0XF8,0X80,0X90
END
