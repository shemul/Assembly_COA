.MODEL SMALL

.STACK 100H

.DATA
   MSG1 DB '##########', 0DH , 0AH ,'$'

.CODE

MAIN PROC      
    ;COPIED ALL DATA VAR TO DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT MSG1
    
    LEA DX , MSG1
    MOV AH , 9
    
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H 
    INT 21H
    
    
    
    ;TERMINATE THE PROG
    MOV AH , 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN