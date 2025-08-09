Data segment
a dw 4030h
b dw 4020h
sum dw ?
Data ends

Code segment
assume CS:Code,DS:Data
Start:

mov dx,Data
mov ds,dx
mov ax,a
mov bx,b
add ax,bx
mov sum,ax
mov ah,4ch
int 21h
Code ends
end Start
