.model small
.data

pa equ 0d800h
pb equ 0d801h
pc equ 0d802h
cr equ 0d803h

.stack
.code
mov ax,@data
mov ds,ax
mov al,82h
mov dx,cr
out dx,al

loc1: mov dx,pb
        in al,dx
        not al
        mov dx,pa
	out dx,al
	mov ah,01h
        int 16h
        jz loc1
        mov ah,4ch
        int 21h
        end
