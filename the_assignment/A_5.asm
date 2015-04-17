.MODEL SMALL

.STACK 100H

.DATA
   MSG1 DB 'Enter Three Initials : $'
   MSG2 DB '#######',0DH , 0AH , '$S'
   MSG3 DB '##$'
   
.CODE

MAIN PROC      
    ;COPIED ALL DATA VAR TO DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT MSG1
    
    LEA DX , MSG1
    MOV AH , 9
    INT 21H
    
    ;INPUT 
    MOV AH , 1 
    INT 21H
    MOV BL , AL
    ;INPUT 
    MOV AH , 1 
    INT 21H
    MOV CL , AL
    ;INPUT 
    MOV AH , 1 
    INT 21H
    MOV CH , AL
    
    ;GO TO NEW LINE
    MOV AH , 2 
    MOV DL , 0DH
    INT 21H
    MOV DL , 0AH
    INT 21H
     
    
    ;PRINT FIRST 3 HASES
    LEA DX , MSG2
    MOV AH , 9
    INT 21H
    INT 21H
    INT 21H
    
    ;PRINT MID HASHES
    LEA DX , MSG3
    MOV AH , 9
    INT 21H
    
    ;PRINT 3 INITIALS
    MOV AH , 2 
    MOV DL , BL
    INT 21H
    MOV AH , 2
    MOV DL , CL 
    INT 21H
    MOV AH , 2 
    MOV DL , CH
    INT 21H 
    
    ;PRINT MID PARTIAL HASHES
    LEA DX , MSG3
    MOV AH , 9
    INT 21H 
    
    
    
    ;MOVE TO NEW LINE
    
    MOV AH , 2 
    MOV DL , 0DH
    INT 21H
    MOV DL , 0AH
    INT 21H
    
        
                     
    
    ;PRINT LAST 2 HASHES ROW
    ;PRINT FIRST 3 HASES
    LEA DX , MSG2
    MOV AH , 9
    INT 21H
    INT 21H
    INT 21H
    
    
    
    ;TERMINATE THE PROG
    MOV AH , 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN