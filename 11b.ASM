.model small
.data
num db 04
str db "NMIT"
res db ?

.code
mov ax,@data
mov ds,ax
mov cl,num
mov al,cl
dec cl

loop1: mul cl
        dec cl
        jnz loop1
        mov res,al
        mov ah,4ch
        int 21h
        end

