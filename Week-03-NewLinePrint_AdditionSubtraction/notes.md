# Today's Topics
* Printing New Line
* Adding Number (sum from 0-9)

# Printing New Line
>   
```
MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL,0AH
INT 21H
```

# Adding Numbers
>   
```
MOV AL, num1
ADD AL, num2
ADD AL, num3
MOV sum, AL

MOV DL, sum
ADD DL, 30H
MOV AH,2
INT 21H 
```