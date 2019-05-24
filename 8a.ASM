.model small
.data
str db "NMIT"
res db ?
count db 10

.code
mov ax,@data
mov ds,ax
lea si,res
mov al,00
mov bl,01
mov cl,count
mov [si],al
mov [si+1],bl

loop1: add al,bl
        mov [si+2],al
        mov al,bl
        mov bl,[si+2]
        inc si
        dec cl
        jnz loop1
        mov ah,4ch
        int 21h
        end
