Data Segment
a db -30h
b db 10h
res dw 0000h
Data ends

Code Segment
assume CS:Code,DS:Data
Start:
mov dx,data
mov ds,dx
mov al,a
mov bl,b
imul bl
mov res,ax
mov ah,4ch
int 21h
Code ends
end Start
