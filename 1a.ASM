.model small
.data
array db 90h,21h,08h,43h,02h,0Ah
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
