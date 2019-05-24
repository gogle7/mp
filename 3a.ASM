.model small
.data
str1 db "NMIT"
str2 db 4 dup(0)
count db 04h

.code
mov ax,@data
mov ds,ax
mov es,ax
mov cl,count
lea si,str1
lea di,str2
add si,cx
dec si

loop1: mov al,[si]
        mov [di],al
        inc di
        dec si
        dec cl
        jnz loop1
        mov ah,4ch
        int 21h
        end

   
