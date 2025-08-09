Data segment
a db 40h
b db 40h
sub1 db 00h
Data ends

Code segment
assume CS:Code,DS:Data
Start:

mov dx,Data
mov ds,dx
mov al,a
mov bl,b
sub al,bl
mov sub1,al
mov ah,4ch
int 21h
Code ends
end Start
