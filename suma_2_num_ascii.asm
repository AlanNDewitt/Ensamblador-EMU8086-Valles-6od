.stack
.data
.code

main:
      
    mov ax,@data
    mov ds,ax
      
    mov ax,38h
    add ax,34h
    aaa
      
    add ax,3030h
    int 20h
      
    mov ah,4ch
    int 21h
    
      
end main   