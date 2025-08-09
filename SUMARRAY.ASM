Data Segment
array1 db 10h,20h,30h,40h,50h
sum dw ?
Data ends
Code Segment
assume CS:Code,DS:Data
Start:
mov dx,Data
mov ds,dx
mov cx,04h
LEA si,array1
mov ah,0000h
mov al,[si]
up: INC si
add al,[si]
jnc next
INC ah
next:DEC cx
jnz up
mov sum,ax
mov ah,4ch
int 21h
code ends
end Start
