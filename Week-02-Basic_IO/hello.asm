.MODEL SMALL ; how long will be the program, we can also use LAGRE, MEDIUM, TINY instead of SMALL. it defines the size of program. there is an exact size of memory.
.STACK 100H ; defines the memory from the stack segment of memory. the one after another byte location is occupied
.DATA 
    msg db "Hello World$" ; msg is variable db is define byte abd in qutation
    ; we declare and define variables/ all data in this section. 
.CODE

; notes
; we use ; to make comments in this language

MAIN PROC 
    ; all kind of codes here this is the main function it is called procedure

    ;-- this section is used to use the data segment in Main funtion
    MOV AX, @DATA
    MOV DS, AX ; ds is tada segnebt
    ; --

    ;Display messgae

    MOV AH, 4CH ; this is used to exit prgoram
    INT 21H
MAIN ENDP 
END MAIN 
