.MODEL SMALL
.STACK 100H
.DATA 
    newline db 0DH, 0AH, '$'
    num1 db 5
    num2 db 3
    num3 db 1
    sum db ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX


    MOV AL, num1
    ADD AL, num2
    ADD AL, num3
    MOV sum, AL

    MOV DL, sum
    ADD DL, 30H
    MOV AH,2
    INT 21H 


    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN