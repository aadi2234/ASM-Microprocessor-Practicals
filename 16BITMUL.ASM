Data segment
a dw 2030h
b dw 2050h
prod dd 0000 0000h
Data ends
Code Segment
assume CS:Code,DS:Data
Start:
mov dx,data
mov ds,dx
mov ax,a
mov bx,b
mul bx
mov WORD PTR[PROD],ax
mov WORD PTR[PROD+2],dx
mov ah,4ch
int 21h
code ends
end Start
