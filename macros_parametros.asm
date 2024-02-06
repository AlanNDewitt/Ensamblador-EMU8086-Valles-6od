Limpiar_Pantalla MACRO 
    
    MOV AH,0FH
    INT 10H
    MOV AH,0H
    INT 10H
    
ENDM


DATA_DS MACRO
    
    MOV AX,DATA
    MOV DS,AX
    
ENDM


MUESTRA_MENSAJE MACRO MENSAJE
    
    LEA DX,MENSAJE
    MOV AH,09
    INT 21H
    
ENDM


        .MODEL SMALL
        .STACK
        
        .DATA
    
    MENSAJE1 DB "EDGAR",'$'  
    MENSAJE2 DB " ALAN",'$'
    MENSAJE3 DB "ADIOS",'$'  
    
    
        .CODE
        
    EJECUTION:
    
           
        DATA_DS
        
        MUESTRA_MENSAJE MENSAJE1 
        MUESTRA_MENSAJE MENSAJE2
        Limpiar_Pantalla
        MUESTRA_MENSAJE MENSAJE3
        
        MOV AX,4C00H
        INT 21H
        
    END EJECUTION
        