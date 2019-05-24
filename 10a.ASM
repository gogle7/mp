.model small
.data
array db 12h,13h,14h,15h,16h,17h,18h
count db 07h
str db "NMIT"
result db ?

.code
mov ax,@data
mov ds,ax
lea si,array
mov cl,count
mov bl,00h
clc

loc1: mov al,[si]
        ror al,1
        jc loc2
        mov al,[si]
        add bl,al

loc2: inc si
        dec cl
        jnz loc1
        mov result,bl
        mov ah,4ch
        int 21h
        end


