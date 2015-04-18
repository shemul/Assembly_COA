; Chapter 6 , Ex: 8 from Book   
; READ TWO CAPTITAL CHAR AND NEXT LINE DISPLAY ALPHABETICAL ORDER

.MODEL SMALL

.STACK 100H

.DATA 

.CODE
    MAIN PROC 
      
      MOV AH , 2
      MOV DL , '?'
      INT 21H  
        
      ;INPUT
      MOV AH , 1 
      INT 21H
      MOV BL , AL 
      
      INT 21H  
      MOV CL , AL
      
      
      ;COMPARE
      CMP BL , CL 
      JG SWITCH
      JMP DISPLAY 
    
 SWITCH: XCHG BL , CL   
         
 
 DISPLAY: 
      MOV AH , 2  
      
      MOV DL , 0AH
      INT 21H     
      
      MOV DL , BL 
      INT 21H
      
      MOV DL , CL
      INT 21H 
           
             
      ;TERMINATION            
      MOV AH , 4CH   
      INT 21H
      
        
    MAIN ENDP
END MAIN
    