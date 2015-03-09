.MODEL SMALL

.STACK 100H

.DATA
   MSG1 DB 'Enter Three Initials : $'
.CODE

MAIN PROC      
    ;COPIED ALL DATA VAR TO DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT MSG1
    
    LEA DX , MSG1
    MOV AH , 9
    INT 21H
    
    ;INPUT_1
    MOV AH , 1
    INT 21H
    MOV BL , AL 
    
    ;INPUT_2
    MOV AH , 1
    INT 21H
    MOV CL , AL 
    
    ;INPUT_3
    MOV AH , 1
    INT 21H
    MOV CH , AL 
    
    ;MOVE TO NEW LINE
    MOV AH , 2
    MOV DL , 0DH
    INT 21H
    MOV DL , 0AH
    INT 21H
    
    ;PRINT 1ST INTITALS
    MOV AH , 2
    MOV DL , BL 
    INT 21H   
    
    
    ;MOVE TO NEW LINE
    MOV AH , 2
    MOV DL , 0DH
    INT 21H
    MOV DL , 0AH
    INT 21H
    
    ;PRINT 2ND INTITALS
    MOV AH , 2
    MOV DL , CL 
    INT 21H
    
     ;MOVE TO NEW LINE
    MOV AH , 2
    MOV DL , 0DH
    INT 21H
    MOV DL , 0AH
    INT 21H
    
    ;PRINT 3RD INTITALS
    MOV AH , 2
    MOV DL , CH 
    INT 21H
    
    
    
    ;TERMINATE THE PROG
    MOV AH , 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN