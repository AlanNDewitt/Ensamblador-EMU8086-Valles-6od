
.model small

.stack

.data    

.code

    main:
        
        mov ax,@data
        mov ds,ax
        
        
        mov DX,1234h
        mov BX,3099h
        
        mov AL,BL           ;asigna 99 a AL
        sub AL,DL           ;resta 34 a 99
        das                 ;ajusta la resta a BCD, como DAA
        
        mov CL,AL           ;resultado de la resta a CL
        
        mov AL,BH           ;asigna 30 a AL
        sbb AL,DH           ;resta 12 a 30 (resta con prestamo) porque 0 - 2 , necesita prestamo para que sea 10 - 2
        das
        
        mov CH,AL           ;resultado de la resta a CH
        
                            ;el resultado de las 2 restas esta en CX
        
        mov ah,4ch
        int 21h
        
                            
    end main       