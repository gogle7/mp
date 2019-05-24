Display macro message
lea dx,message
mov ah,09h
int 21h
endm
.model small
.data
msg1 db "  *  $"
msg2 db 10,13," * * $"
msg3 db 10,13,"* * *$"

.code
mov ax,@data
mov ds,ax
Display msg1
Display msg2
Display msg3
mov ah,4ch
int 21h
end

