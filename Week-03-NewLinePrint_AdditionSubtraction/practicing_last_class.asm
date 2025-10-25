.MODEL SMALL
.STACK 100H
.DATA 
    msg db "Hello World!$"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 2
    MOV DL, "L"
    INT 21H

    MOV AH, 1
    INT 21H

    MOV AH,2
    MOV DL, AL
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

