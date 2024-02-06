
.MODEL SMALL

.STACK

.DATA

    nombre1 DB "MARIA",'$' 
  
   ;nombre2 DB "LAURA",'$'
    
    msg DB "sustituir Maria -> Laura ,Direc. indirecto por Registros",13,10,,13,10,'$'
    
.CODE


    Main:
    
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,4
        
        LEA DX,msg
        MOV AH,09
        INT 21H       
        
        MOV BX,OFFSET nombre1  ;OFFSET Asigna la primera ubicacion de memoria de la cadena de numeros
        
        bucle:
            
            CMP CX,4h
            JE  Sustituir_M
            
            CMP CX,2h                      
            JE  Sustituir_R
            
            CMP CX,1h
            JE Sustituir_I                       
            
        Ya_se_sustituyo: 
                                   
            INC BX                  
            
            LOOP bucle 
                           
                                    
            JMP final 
             
             
            Sustituir_M:  
            
                MOV [BX],'L'
                JMP Ya_se_sustituyo
                
            Sustituir_R:
             
                MOV [BX],'U'
                JMP Ya_se_sustituyo
                
            Sustituir_I: 
                
                MOV [BX],'R' 
                JMP Ya_se_sustituyo 
       
                
                
      final: 
      
        LEA DX,nombre1
        MOV AH,09
        INT 21H  
        
             
        MOV AX,4C00H
        INT 21H 
         
        
        
     END Main