Data segment
a db 40h
b db 40h
sum db 00h
Data ends

Code segment
assume CS:Code,DS:Data
Start:

mov dx,Data
mov ds,dx
mov al,a
mov bl,b
add al,bl
mov sum,al
mov ah,4ch
int 21h
Code ends
end Start
