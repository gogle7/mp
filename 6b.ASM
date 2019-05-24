.model small
.data
str db "NMIT"
num db 43h

.code
mov ax,@data
mov ds,ax
lea si,num
mov al,[si]
mov bx,0ffffh

loc1:   inc bl
        sub al,64h
        jnc loc1
        add al,64h

loc2:   inc bh
        sub al,0ah
        jnc loc2
        add AL,0ah
        mov cl,04
        ror bh,cl
        add al,bh
        mov [si+1],bl
        mov [si+2],al
        mov ah,4ch
        int 21h
        end
