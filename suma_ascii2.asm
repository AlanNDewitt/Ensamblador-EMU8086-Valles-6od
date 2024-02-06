.model small
.stack
.data
.code

main:
      
    mov ax,@data
    mov ds,ax
      
    mov ax,0205h ; Se ocupan los 2 bytes porque los numeros no son del 0-9 30-39 
    add ax,0407h ;
    aaa
      
    add ax,3030h
  
    
    MOV DX,AX
    MOV AH,02h
    int 21h
    
    
      
    mov ah,4ch
    int 21h
    
      
end main  