Data segment
a dw 4030h
b dw 4020h
sub1 dw ?
Data ends

Code segment
assume CS:Code,DS:Data
Start:

mov dx,Data
mov ds,dx
mov ax,a
mov bx,b
sub ax,bx
mov sub1,ax
mov ah,4ch
int 21h
Code ends
end Start
