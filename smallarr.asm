Data Segment
array1 db 10h,20h,30h,40h,50h
smallest db ?
Data ends

Code Segment
assume CS:Code,DS:Data
Start:
	mov dx,data
	mov ds,dx
	mov cx,04h
	LEA si,array1
	mov al,[si]
	up:inc si
	cmp al,[si]
	jb next
	mov al,[si]
	next:dec cx
	jnz up
	mov smallest,al
	mov ah,4ch 
	int 21h
code ends 
end start
