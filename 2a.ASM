.model small
.data
str1 db "NMIT"
array db 28h,50h,03h,08h,00h,11h


.code
mov ax,@data
mov ds,ax
mov bx,offset array
mov cx,06
dec cx

loop1: mov bx,cx
        mov si,0

next1: mov al,array[si]
        mov dl,array[si+1]
        cmp al,dl
        jc next2
        mov array[si+1],al
        mov array[si],dl

next2: inc si
        dec bx
        jnz next1
        loop loop1
        mov ah,4ch
        int 21h
        end
