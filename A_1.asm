.MODEL SMALL

.STACK 100H

.DATA
   MSG1 DB 'The sum is : $'
.CODE

MAIN PROC      
    ;COPIED ALL DATA VAR TO DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT '?'
    
    MOV AH,2
    MOV DL,'?'
    INT 21H

    ;INPUT_1
    
    MOV AH,1
    INT 21H 
    MOV BL , AL
    
    ;INPUT_2
    MOV AH ,1 
    INT 21H
    MOV CL , AL 
    
    ;TO GET THE REAL NUMBER , SUB FROM ASCII VAL
    SUB BL , 48
    SUB CL , 48 
    
    ;ADD TWO VALUES 
    ADD BL , CL   
    ADD BL , 48
    
    ;MOVE TO NEW LINE
    MOV AH ,2 
    MOV DL , 0DH
    INT 21H     
    MOV DL , 0AH
    INT 21H
    
    ;PRINT SUM
    LEA DX , MSG1
    MOV AH , 9
    INT 21H 
    
    MOV AH , 2
    MOV DL , BL 
    INT 21H
    
    ;TERMINATE THE PROG
    MOV AH , 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN