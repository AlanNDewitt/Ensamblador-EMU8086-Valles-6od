DATA_MOV MACRO
    
    mov ax,data
    mov ds,ax    
    
ENDM
    
.model small
.stack
.data 


    
.code


main:
      
    DATA_MOV
      
    mov AX,32h        ;Carga 2 en ascii en AL
    SUB AL,35h     ;RESTA 5 a 2 en al
    AAS
 

     
      
    mov ah,4ch
    int 21h 
      
end main  