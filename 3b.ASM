.model small
.stack 100h
.data
	PA EQU 0D0A1H
	PB EQU 0D0A2H
	PC EQU 0D0A3H
	CR EQU 0D0A0H
	
.code
	mov ax,@data
	mov ds,ax

again:	mov ah,01h
		int 16h
		jz loop1
		mov ah,04ch
		int 21h
		
loop1:	mov dx,CR
		mov al,80h
		out dx,al
		mov al,11h
		call out_A
		call delay
		mov al,22h
		call out_A
		call delay
		mov al,44h
		call out_A
		call delay
		mov al,88h
		call out_A
		call delay
		jmp again
		
out_A:	mov dx,PA
		out dx,al
		RET
		
delay:	mov cx,1FFFh
d2:		mov bx,01FFh
d1:		dec bx
		jnz d1
		dec cx
		jnz d2
		RET
end
		