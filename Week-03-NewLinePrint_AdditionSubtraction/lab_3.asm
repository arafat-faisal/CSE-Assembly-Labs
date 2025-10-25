.MODEL SMALL
.STACK 100H
.DATA 
    msg db "Hello World!$"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2
    MOV DL, "A"
    INT 21H
    
    ;new line
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL,0AH
    INT 21H    
    
    MOV AH, 1
    INT 21H    

    MOV BL, AL
    INT 21H



    ;new line
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN