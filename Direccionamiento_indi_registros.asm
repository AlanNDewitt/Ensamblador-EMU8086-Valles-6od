
.MODEL SMALL

.STACK

.DATA

    numeros DB 20,28,15,26,19,27,16,29
    
.CODE


    Main:
    
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,8
        
        MOV BX,OFFSET numeros  ;OFFSET Asigna la primera ubicacion de memoria de la cadena de numeros
        
        ETA:
        
            MOV AL,[BX]         ;MOVER el contenido dado por la [Direccion] a AL
            ADD AL,15           ; ADDITION +15, SUMAR 15 A AL
            
            DAA                 ;EFECTUAR BIEN LA SUMA
            INC BX              ;INCREMENTAR BX EN 1 O +1
            
            LOOP ETA            ; REGRESAR A LA ETIQUETA SI CX NO ES CERO Y CADA QUE SE USA LOOP DECREMETNA CX
            
        
        MOV AX,4C00H
        INT 21H 
         
        
        
        
     END Main
            
        
         