.model small
.data
array db 02h,03h,04h,05h,06h,07h
count db 06h
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


