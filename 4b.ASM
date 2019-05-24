.model small
.data
num db 43h
str db "nmit"
res db ?

.code
mov ax,@data
mov ds,ax
lea si,num
mov bl,00
mov cl,04
mov al,[si]
and al,0f0h
ror al,cl
cmp al,00
jz loc2

loc1: add bl,0Ah
        dec al
        jnz loc1

loc2: mov al,[si]
        and al,0fh
        add al,bl
       mov res,al
       mov ah,4ch
       int 21h
       end
