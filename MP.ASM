; Define the data segment
Data Segment
    a db 08h         ; Input variable a
    b db 04h         ; Input variable b
    res_add db 00h   ; Result of addition
    res_sub db 00h   ; Result of subtraction
    res_mul dw ?     ; Result of multiplication
    res_quo db 00h   ; Result of division (quotient)
    res_rem db 00h   ; Result of division (remainder)
    res_sqr dw ?     ; Result of squaring a
    res_cube dw ?    ; Result of cubing b
    res_fact dw ?    ; Result of factorial b
;End of Data Segment
Data ends

; Define the code segment
Code Segment
    Assume CS:Code, DS:Data

Start:
    ; Data Segment Initialization
    mov dx,Data
    mov ds,dx

    ; Perform addition of a and b
    call add1
    ; Perform subtraction of b from a
    call sub1
    ; Perform multiplication of a and b
    call mul1
    ; Perform division of a by b
    call div1
    ; Perform squaring of a
    call sqr
    ; Perform cubing of b
    call cube1
    ; Perform factorial of b
    call FACTORIAL

    ; Exit the program
    mov ah,4ch
    int 21h

    ; Procedure to add a and b
    add1 PROC NEAR
		mov al,a	; Move the value of a to the AL register
		mov bl,b	; Move the value of b to the BL register
		; Add the values in AL and BL and store the result in AL
		add al,bl
		; Move the result of the addition to the res_add variable
		mov res_add,al
		; Return from the procedure
		RET
    endp
	
    ; Procedure to subtract b from a
	sub1 PROC NEAR	
		mov al,a	; Move the value of a to the AL register
		mov bl,b	; Move the value of b to the BL register
		; Subtract the value of BL from AL and store the result in AL
		sub al,bl
		; Move the result of the subtraction to the res_sub variable
		mov res_sub,al
		; Return from the procedure
		RET
	endp
	
	; Procedure to multiply a and b
	mul1 PROC NEAR
		mov al,a	; Move the value of a to the AL register
		mov bl,b	; Move the value of b to the BL register
		; Multiply the values in AL and BL and store the result in AX
		mul bl
		;Move the result of the multiplication to the res_mul variable
		mov res_mul,ax
		; Return from the procedure
		RET
	endp
	
	; Procedure to divide a by b
	div1 PROC NEAR
		mov al,a	; Move the value of a to the AL register
		mov bl,b	; Move the value of b to the BL register
		; Divide the value of AL by BL and store the quotient in AL and remainder in AH
		div bl
		; Move the quotient to the res_quo variable
		mov res_quo,al
		; Move the remainder to the res_rem variable
		mov res_rem,ah
		; Return from the procedure
		RET
	endp

    ; Procedure to find	square a
	sqr PROC NEAR
		mov al,a        ; Move the value of a to AL
		mov bl,a        ; Move the value of a to BL
		mul bl          ; Multiply the values of AL and BL
		mov res_sqr,ax  ; Move the result to the variable res_sqr
		RET             ; Return from the procedure
	endp

    ; Procedure to find cube b
    cube1 PROC NEAR
        mov al,b	; Move the value of b to AL
        mov bl,b	; Move the value of b to BL
        mul bl		; Multiply the values of AL and BL
        mul bl		; Multiply the values of AL and BL
        mov res_cube,ax	; Move the result to the variable res_cube
        RET			; Return from the procedure
    endp

    ; Procedure to calculate the factorial of a number
    FACTORIAL PROC NEAR
        mov al, 1           ; Initialize result to 1
        mov bl, b           ; Start with input value
        FACT_LOOP:          ; Loop to perform multiplication
            imul bl         ; Multiply by current value of b
            dec bl          ; Decrement b
            jnz FACT_LOOP   ; Continue until b reaches 0
        mov res_fact, ax    ; Store result in res_fact
        RET
    ENDP

; End of code segment
Code ends
end Start
