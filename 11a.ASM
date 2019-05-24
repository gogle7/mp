data segment
num1 dw 12
num2 dw 18
gcd dw ?
data ends

code segment
assume cs:code, ds:data

start: mov ax,data
        mov ds,ax
        mov dx,0000h
        mov ax,num1
        mov cx,num2
      

loop1: div cx
        cmp dx,00
        je loop2
        mov ax,cx
        mov cx,dx
        mov dx,00
        jmp loop1

loop2: mov gcd,cx
        mov ah,4ch
        int 21h
        code ends
        end start

