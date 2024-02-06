  
mi_macro  MACRO
    
    MOV AX,data
    MOV DS,AX
    MOV ES,AX
    
    
ENDM


.MODEL SMALL

.STACK 64

.DATA

  Mensaje DB "Probando una Macro",13,10,'$'
                             
.CODE

Inicio:

        mi_macro
        
        lea DX,Mensaje
        MOV AH,9
        INT 21h
        
        MOV AX,4000H
        INT 21H
        
 END Inicio