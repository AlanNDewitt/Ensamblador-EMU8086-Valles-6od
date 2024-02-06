;Suponga que DX Y BX contienen cada uno, numeros de 4 digitos
;en forma BCD empacados, DX contiene 1234 y BX 3099
;Sumar los numeros de DX Y BX y alamacenar resul en CX



.model small

.stack

.data

    num1 equ 1234h
    num2 equ 3099h
    
    
.code

    main:
    
            mov ax,@data
            mov ds, ax
            
            
            mov dx,num1
            mov bx,num2
            
            
            mov al,bl
            add al,dl
            DAA
            
            
            mov cl,al
            
            
            mov al,bh
            ADC al,dh
            DAA
            
            mov ch,al
            
            
            
     
            
            
           
            mov ah,4ch
            int 21h
            
            
    end main