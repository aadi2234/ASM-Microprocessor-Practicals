Data segment
a db 20h
b db 20h
res dw 0000h
Data ends

Code segment
assume CS:Code,DS:Data
Start:
mov dx,data
mov ds,dx
mov al,a
mov bl,b
mul bl
mov res,ax
mov ah,4ch
int 21h
Code ends
end Start
