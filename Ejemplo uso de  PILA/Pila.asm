
COMMENT * Hacer un programa para almacenar los valores de ax(1000h),bx(2000h),
y cx(3000h) en la pila. Con el primer POP recuperar el valor original
de cx almaenado en la pila y colocarlo en ax. Con el segundo POP
recuperar el valor original de bx y colocarlo en cx. Con el ultimo 
POP recuperar el valor original de ax y colocarlo en bx. *

                        ;DIRECTIVAS SIMPLIFICADAS
        
    
        .MODEL SMALL                   ;define modelo de memoria
    
        
        .STACK                         ;define area de Pila
    
    
        .DATA                          ;Define el are de datos


    
    A   equ 1000h                      ;A es igual a 1000h
    
    B   equ 2000h                      ;B es igual a 2000h
    
    C   equ 3000h                      ;C es igual a 3000h
    
    
    
         .CODE
         
         
begin:


        MOV AX,@DATA                   ;asigna la direccion de datos a AX
        MOV DS,AX                      ;asigna la direccion AX a DS
        
        
        MOV AX,A                       ;asigna el contenido de A a AX 
        MOV BX,B                       ;asigna el contenido de B a BX
        MOV CX,C                       ;asigna el contenido de C a CX
        
        
        PUSH AX                        ;guarda el contenido de AX a la Pila
        PUSH BX                        ;guarda el contenido de BX a la Pila
        PUSH CX                        ;guarda el contenido de CX a la Pila
        
        POP AX                         ;Asigna el ultimo contenido de la pila, a AX
        POP CX                         ;Asigna el ultimo contenido de la pila, a CX
        POP BX                         ;Asigna el ultimo contenido de la pila, a BX
        
        
        MOV AH,4ch                     ;asigna la funcion 4c de la
        int 21h                        ;int 21 a ah (se devuelve el control a DOS)
        
        end begin                      ;Fin del programa
        
        
    
    
    
    
    
    
        