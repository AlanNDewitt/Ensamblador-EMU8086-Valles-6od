                   
COMMENT* Escribir un programa que saque en pantalla
        'Un mensaje dependiendo de que se ingrese por teclado'
        con directivas no simplificadas.* 
        
        
PILA    SEGMENT PARA STACK 'STACK'                  ;Inicia segmento de pila
                     
        DB 64 DUP (0)                                ;reserva 32 bytes todos inicializados en 0
                                                           
PILA    ENDS                                        ;fin de segmento pila   



DATOS   SEGMENT PARA 'DATA'                          ;Inicia Segmento de Datos
    
    Mensaje DB "¿Despues de las 12 pm?        SI = 1/ NO = 0",07,13,10,'$';defina la variable mensaje 07 sonido 13 salto de liena 10 retorno de posicion
    
    Tardes DB "Buenas tardes",07,13,10,'$' 
    Dias   DB "Buenos dias  ",07,13,10,'$'
    
                                                   
DATOS   ENDS                                        ;Termina Segmento de Datos                          





CODIGO  SEGMENT PARA 'CODE'
       ASSUME CS:CODIGO,DS:DATOS,SS:PILA            ;indica al ensamb. como direccionar la info.

INICIO:                                             ;inicia la ejecucion del programa 

    
        MOV AX,DATOS                                 ;Asigna la direccion de Datos a AX
        MOV DS,AX                                    ;Y atraves de AX Asigna la direccion de Datos a DS
        
        ;MOV CL,1                                     ;Asigna 3 al registro Contador 
        
        
        MOV DX,OFFSET Mensaje                        ;Asigna el OFFSET Mensaje a DX (DS:DX)
        MOV AH,09
        INT 21h                                      ;Funcion 09 (mensaje en pantalla) de la INT 21h a AH 
            
            
            
        Mov AH,1h                                    ;Movemos 1 a AH y llamamos la interrupcion 21 con el valor 1
        INT 21h                                      ;Significa que leera un caracter del teclado y se guardara en AL
        
            
        CMP AL,'1'                                   ;Comparamos el valor de AL y 1   AL - 1  = ?
         
        JZ SII                                       ;Salta si LA Comparacion da cero, es Decir la bandera Zero esta Prendida "JUMP ZERO"
       ;JE SII                                       ;Salta si son iguales  "JUMP EQUALS"
        
       
       
                    ;Si lo anterior no se cumplio  volvemos a comparar
                                                     
                                                     
        CMP AL,'1'                                   ;Comparamos el valor de AL y 1   AL - 1  = ?
        
        JNZ NOO                                      ;Salta si es diferente de Cero, es decir la bandera Zero esta apagada "JUMP NOT ZERO"
       ;JNE NOO                                      ;Salta si no son iguales, "JUMP NOT EQUALS" es decir si La bandera Equals esta apagada
 
        
 
 SII: 
            MOV DX,OFFSET Tardes
            MOV AH,09
            INT 21h
            
            JMP FINAL  
 
 NOO:
          
            MOV DX,OFFSET Dias
            MOV AH,09
            INT 21h
            
            JMP FINAL        
 
      
            
    
 FINAL: 
 
        MOV AH,4ch                                   ;asigna la funcion 4c (acabar programa)
        INT 21h                                      ;de la 21h a AH , se develve control DOS
        

           

CODIGO ENDS                                         ;Fin Segmento de Codigo

        END INICIO            
        
        
        
        
    