DATA_MOV MACRO
    
    mov ax,data
    mov ds,ax    
    
ENDM
    

.stack
.data
.code


main:
      
    DATA_MOV
      
    mov AL,15        ;Carga 07 en AL
    mov CL,05     ;Carga 05 en CL
    mul CL
    AAM              ;ajusta despues de mult 
    
   ; ADD AX,3030h 
   ; DAA
    ;MOV DX,AX
    ;MOV AH,02h
    ;int 21h
      
    mov ah,4ch
    int 21h 
      
end main   