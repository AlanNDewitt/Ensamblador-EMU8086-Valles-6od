.stack
.data
.code


main:
      
    mov ax,@data
    mov ds,ax
      
    mov BX,9h        ;Carga Bl con el divisor
    mov AX,0702h     ;Carga AX con dividendo
    AAD              ;ajusta AX a 48h 
      
    DIV BL           ;Divide AX/BL 
                     ;Resultado se guarda en AX
    
      
    mov ah,4ch
    int 21h 
    
      
end main   