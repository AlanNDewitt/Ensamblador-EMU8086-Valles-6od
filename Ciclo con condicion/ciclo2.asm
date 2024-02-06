                     
COMMENT* Escribir un programa que saque en pantalla
        'Hola como estan 3 veces'
        con directivas no simplificadas.* 
        
        
PILA    SEGMENT PARA STACK 'STACK'                  ;Inicia segmento de pila
                     
        DB 64 DUP (0)                                ;reserva 32 bytes todos inicializados en 0
                                                           
PILA    ENDS                                        ;fin de segmento pila   



DATOS   SEGMENT PARA 'DATA'                          ;Inicia Segmento de Datos
    
    Mensaje DB "Hola mundo",07,13,10,'$'             ;defina la variable mensaje  07 sonido 13 salto de liena 10 retorno de posicion
                                                    
DATOS   ENDS                                        ;Termina Segmento de Datos                          





CODIGO  SEGMENT PARA 'CODE'
       ASSUME CS:CODIGO,DS:DATOS,SS:PILA            ;indica al ensamb. como direccionar la info.

INICIO:                                             ;inicia la ejecucion del programa 

    
        MOV AX,DATOS                                 ;Asigna la direccion de Datos a AX
        MOV DS,AX                                    ;Y atraves de AX Asigna la direccion de Datos a DS
        
        MOV CX,3                                     ;Asigna 3 al registro Contador
        
        MOV DX,OFFSET Mensaje                        ;Asigna el OFFSET Mensaje a DX (DS:DX)
        MOV AH,09                                    ;Funcion 09 (mensaje en pantalla) de la INT 21h a AH 
        


Etiqueta_ciclo: 
        
        INT 21h                                      ;Aparece mensaje en pantalla
        
        DEC  CX                                      ;Decrementamos el contador en 1
        JCXZ Etiqueta_Fin_Ciclo                      ;Salta a esa etiqueta si CX es cero "Z"
        JMP  Etiqueta_ciclo                          ;si no se cumplio la anterior entonces ejecuta esta
        


Etiqueta_Fin_Ciclo: 

        MOV AH,4ch                                   ;asigna la funcion 4c (acabar programa)
        INT 21h                                      ;de la 21h a AH , se develve control DOS
        

           
           
           
           

CODIGO ENDS                                         ;Fin Segmento de Codigo

        END INICIO 
 