Data Segment
Dividend dd 4200 3080h
Divisor dw 0050h
Quotient dw 0000h
Remainder dw 0000h
Data ends
Code Segment
assume CS:Code,DS:Data
Start:
mov dx,data
mov ds,dx
mov ax,word ptr[Dividend]
mov dx,word ptr[Dividend+2]
mov bx,Divisor
div bx
mov Quotient,ax
mov Remainder,dx
mov ah,4ch
int 21h
Code ends
end Start
