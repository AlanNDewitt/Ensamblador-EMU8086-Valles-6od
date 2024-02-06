                                                               
COMMENT* Escribir un programa que saque en pantalla
        'Hola como estan'
        con directivas no simplificadas.* 
        
        
PILA    SEGMENT PARA STACK 'STACK'                  ;Inicia segmento de pila
                     
        DB 32 DUP (0)                                ;reserva 32 bytes todos inicializados en 0
                                                           
PILA    ENDS                                        ;fin de segmento pila   



DATOS   SEGMENT PARA 'DATA'                          ;Inicia Segmento de Datos
    
Mensaje DB "Hola mundo$"                            ;defina la variable mensaje  
                                                    
DATOS   ENDS                                        ;Termina Segmento de Datos                          





CODIGO  SEGMENT PARA 'CODE'
       ASSUME CS:CODIGO,DS:DATOS,SS:PILA           ;indica al ensamb. como direccionar la info.

BEGIN:                                              ;inicia la ejecucion del programa 

    
        MOV AX,DATOS                                ;Asigna la direccion de Datos a AX
        MOV DS,AX                                    ;Y atraves de AX Asigna la direccion de Datos a DS
        
        MOV DX,OFFSET Mensaje                        ;Asigna el OFFSET Mensaje a DX (DS:DX)
        MOV AH,09                                     ;Funcion 09 (mensaje en pantalla) de la INT 21h a AH 
        INT 21h                                       ;Aparece mensaje en pantalla
        
        MOV AH,4ch                                    ;asigna la funcion 4c (acabar programa)
        INT 21h                                       ;de la 21h a AH , se develve control DOS
        
CODIGO  ENDS                                           ;Fin Segmento de Codigo

        END BEGIN                                       ;Fin del programa