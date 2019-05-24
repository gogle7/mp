.model small
.data
num1 db 2h
num2 db 3h
str1 db "NMIT"
res db ?
result db ?

.code
mov ax,@data
mov ds,ax
call addition
call multiplication
mov ah,4ch
int 21h
addition proc near
mov al,num1
add al,num2
mov res,al
ret
addition endp

multiplication proc near
mov al,num1
mul num2
mov result,al
ret
multiplication endp
end
