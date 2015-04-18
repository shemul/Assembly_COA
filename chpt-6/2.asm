; Chapter 6 , Ex: 9 from Book   
;                  


.MODEL SMALL
.STACK 100H

.DATA

.CODE
    MAIN PROC
      
      MOV BH , 0 
      MOV AH , 2
      
      
      MOV CX , 7FH
      MOV DL , 80H 
      MOV BL , 80H
    
   CONTINUE: 
   
    MOV DL,BL
    INT 21H
    DEC CX
    INC DL  
     
    MOV BL,DL
    MOV DL,20H ;blank space
    INT 21H
    INC BH
    CMP BH , 10
    JE COUNT 
    ; JE COUNT
    CMP CX,0
    JNE CONTINUE ;is letter finished?
    JMP exit  
      
    COUNT : 
        MOV BH , 0 
        
        ;MOV AH , 2 
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        JMP CONTINUE
            
    EXIT:
        MOV AH , 4CH
        INT 21H
        
    MAIN ENDP
    
END MAIN