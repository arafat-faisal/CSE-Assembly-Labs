.MODEL SMALL
.STACK 100H
.DATA 
    msg db "Enter Your Name's First Character: ", 0DH, 0AH, '$'
    conv db ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ;print message
    MOV AH, 9
    LEA DX, msg
    INT 21H

    ;input
    MOV AH, 1
    INT 21h
    
    ;move input to base
    MOV BL, AL
    INT 21H

    ;print input
    MOV AH, 2
    MOV DL, BL
    INT 21H

    ;new line
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    ;convert to capital
    MOV AL, BL
    SUB AL, 20H
    MOV conv, AL


    ;print converted
    MOV AH, 2
    MOV DL, conv
    INT 21H
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

