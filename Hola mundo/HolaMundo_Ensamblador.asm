COMMENT* Escribir un programa que saque en pantalla
        'Hola como estan'
        con directivas no simplificadas.*
        
PILA    SEGMENT PARA STACK 'STACK'                 ;Inicia segmento de pila
                DB 32 DUP (0)                       ;reserva 32 bytes todos inicializados en 0
                                                    ;fin de segmento pila
PILA    ENDS

DATOS   SEGMENT PARA 'DATA'
Mensaje DB "Hola mundo$"                            ;defina la variable mensaje
DATOS   ENDS

CODIGO  SEGMENT PARA 'CODE'
        ASSUME CS:CODIGO,DS:DATOS,SS:PILA           ;indica al ensamb. como direccionar la info.
BEGIN:                                              ;inicia la ejecucion del programa
    
        MOV AX,DATOS
        MOV DS,AX
        
        MOV DX,OFFSET Mensaje   
        MOV AH,09
        INT 21h
        
        MOV AH,4ch
        INT 21h
CODIGO  ENDS

        END BEGIN