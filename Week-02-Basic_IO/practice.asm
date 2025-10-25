.MODEL SMALL
.STACK 100H
.DATA
    msg db 'Enter a character: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX 
    
    MOV AH, 9
    LEA DX, msg
    INT 21H

    MOV AH, 1
    INT 21H

    MOV AH, 2
    MOV DH, AL
    INT 21H

    MOV AH, 4CH ; exit to DOS (Disk operation system)
    INT 21h
MAIN ENDP 
END MAIN 