; --- Main Note
; MOV AH, 2 - is used to print character (computer gets instriction that he needs to print character later)
; MOV DL, 'A' - then it is used 2nd commadn for printing (now it gets instruction to print the character)
; INT 21h - this is used to interupts execution and prints the data after this execution is done

; we can also stact one character after another to print string but that is inefficient
; to print any string we have to define that in data section

; MOV AH, 9 - for character
; LEA DX, variable_name - used to print variable_name/load address of message
; INT 21h - interuption

; to get input  from user
; MOV AH, 1 -  to input one character from user (pc gets instruction to ger input) and waits for input from input device. the input is stored in AX 
; INT 21H

; to print input user in terminal
; get input using MOV AH, 1 after inrupting we print using MOV DL, AL


;----- extra note
; what ever we print we take that to data desgistor DX
; method toaught to easily convert binary to hexadecimal
 

.MODEL SMALL
.STACK 100H
.DATA 
     
.CODE

MAIN PROC 



    MOV AH, 4CH ; exit to DOS (Disk operation system)
    INT 21h
MAIN ENDP 
END MAIN 
