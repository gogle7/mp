.model small
.data
        pal db 'MADAM'
        rvpal db 0005 dup(?)
        msg1 db "it is palindrome$"
        msg2 db "it is not palindrome$"
        count dw 0005
.code
        mov ax,@data
        mov ds,ax
        mov es,ax
        mov cx,count
        lea si,pal
        lea di,rvpal
        add si,count
        dec si

loc1:   mov al,[si]
        mov [di],al
        inc di
        dec si
        dec cx
        jnz loc1
        mov cx,count
        lea si,pal
        lea di,rvpal
        cld
        rep cmpsb
        je loc2
        lea dx,msg2
        mov ah,09h
        int 21h
        jmp loc3

loc2:   lea dx,msg1
        mov ah,09h
        int 21h

loc3:   mov ah,04ch
        int 21h
        end
       
