.MODEL SMALL

.STACK 100H

.DATA
   MSG1 DB 'Enter a HEX digit : $'
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
    
    
    
    
    
    ;MOVE TO NEW LINE
    MOV AH , 2
    MOV DL , 0DH
    INT 21H
    MOV DL , 0AH
    INT 21H
    
    ;CONV
    
    MOV AH,2  
    ;DISPLAY THE 1ST DIGIT BECAUSE IT MUST BE 1
    
    MOV DL,31H
    INT 21H
               
    ; FOR 2ND DIGIT  SUB FROM 11H OR 17 TO GET THE DECIMAL 
    
    SUB BL,11H 
    
    MOV DL,BL
    INT 21H
    
    
    ;TERMINATE THE PROG
    MOV AH , 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN