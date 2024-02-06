

Limpia_Pantalla MACRO
    
    MOV AH,0Fh
    INT 10H
    MOV AH,0H
    INT 10H
   
ENDM 

DATOS_A_DS MACRO
    
    MOV AX,DATA
    MOV DS,AX
    
ENDM 


.MODEL SMALL

.STACK

.DATA

Mensaje1 db "Limpiar Mensaje",'$'
Mensaje2 db "La pantalla se Limpio",'$'

.CODE


CODIGOS:

    
    DATOS_A_DS
    
    LEA DX,Mensaje1
    MOV AH,09
    INT 21H
    
    
    Limpia_Pantalla
    
    LEA DX,Mensaje2
    MOV AH,09
    INT 21H
    
    
    MOV AH,4ch
    INT 21H
    
    
END CODIGOS
        