.model small
.data
str1 db "HELLO$"
str2 db "WORLD$"

.code
mov ax,@data
mov ds,ax
mov es,ax
lea si,str1
lea di,str2
mov al,"$"

loc1: cmp [si],al
       je loc2
       inc si
       jmp loc1

loc2: mov bl,"$"

loc3: mov al,[di]
        cmp al,bl
        je loc4
        mov [si],al
        inc di
        inc si
        jmp loc3

loc4: mov [si],bl
        lea dx,str1
        mov ah,09h
        int 21h
        mov ah,4ch
        int 21h
        end
