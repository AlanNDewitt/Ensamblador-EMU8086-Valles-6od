
COMMENT* Escribir un Programa que saque en pantalla con el formato
'Hola'
'como estan'
con directivas simplificadas.*



                                    
.MODEL SMALL                        ;Modelo de Memoria

.STACK                               ;Area de Pila

.DATA                               ;Area de Datos


Mensaje db 10,13,'Hola',10,13,'como estan$'  ;Se define variable Mensaje y la funcion 10 es para salto de linea y 13 regreso de carro

.CODE                                       ;Area de codigo

begin:                                      ;Unicia Ejecucion

mov ax,@data                        ;Asigna direccion inicial de Mensaje a DX, no su contenido
mov ds,ax                           ;A traves de AX se asgina la direccion de datos DS

mov dx,offset mensaje               ;Asigna la direccion inicial de mensaje a DX, no contenido
mov ah,9                             ;Asigna la funcion 9
int 21h                             ;de la 21H (Para aparecer mensaje en pantallla)

mov ah,4ch                           ;Asigna la funcion 4ch de la INT 21H A AH y
int 21h

mov ah,4ch                           ;y con la 21H se devielve control a DOS
int 21h

end begin                           ;fin del programa


