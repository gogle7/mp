Display macro message
lea dx,message
mov ah,09h
int 21h
endm
.model small
.data
msg1 db " NMIT POSTAL CODE: $"
msg2 db 10,13," 560064 $"


.code
mov ax,@data
mov ds,ax
Display msg1
Display msg2
mov ah,4ch
int 21h
end

