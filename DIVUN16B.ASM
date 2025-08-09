Data Segment
dividend dw 2030h
divisor db 05h
quotient db 00h
remainder db 00h
Data ends

Code Segment
assume CS:Code,DS:Data
Start:
mov dx,Data
mov ds,dx
mov ax,dividend
mov bl,divisor
div bl
mov quotient,al
mov remainder,ah
mov ah,4ch
int 21h
code ends
end Start
