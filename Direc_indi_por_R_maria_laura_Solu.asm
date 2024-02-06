.MODEL SMALL

.STACK

.DATA
  
    NOM1 DB "maria"  
    
    NOM2 DB "laura",10,13," se cambia por $"
.CODE


    Main:
    
    
        MOV AX,@DATA
        MOV DS,AX
        
        LEA SI,NOM1
        LEA DI,NOM2
        
        
        
        LEA DX,NOM2
        MOV AH,9
        INT 21H
        
        MOV CX,5
        
        
        REPITE:
            
            MOV AL,[SI]      ;Moviendo contenidos de [direccion] 
            MOV [DI],AL      ;a otra [direccion]  1 a 1 , caracter por caracter
                       
                       
                       
            MOV DL,[DI]        ;imprimir en pantalla caracter que esta en [direccion]
            MOV AH,2
            INT 21H
                         
                         
                         
                         
            INC SI
            INC DI
            
            
            DEC CX
            
        JNZ REPITE
        
  
        
    END Main
     
     
     
     
     
******************************************************
       ;para imprimir la cdena completa
            
            ;MOV DX,DI
            ;MOV AH,9
            ;INT 21H


**************************************************