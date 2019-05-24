.model small
.data
array db 56h,12h,09h,35h,03h,27h
count db 06h
str1 db "NMIT"
res db 0

.code
mov ax,@data
mov ds,ax
mov cl,count
dec cl
lea si,array
mov ax,si

loc1: cmp al,[si+1]
        jb loc2
        mov al,[si+1]

loc2: inc si
        dec cl
        jnz loc1
        mov res,al
        mov ah,4ch
        int 21h
        end
