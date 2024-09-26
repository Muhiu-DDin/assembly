; . Nested Loops Example (Multiplication Table)
dosseg 
.model small
.stack 100h 
.data 
msg db "Multiplication Table$"

.code 
main proc 
    mov ax, @data 
    mov ds, ax 

    mov dx, offset msg
    mov ah, 09h 
    int 21h 

    mov cx, 10
outer_loop:
    mov bx, 1
inner_loop:
    mov ax, cx
    mul bx
    call print_num
    inc bx
    cmp bx, 11
    jne inner_loop

    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    loop outer_loop

    mov ah, 4Ch 
    int 21h

print_num proc
    add ax, 30h
    mov dl, al
    mov ah, 02h
    int 21h
    ret
print_num endp

main endp 
end main

;  Factorial Procedure Example

dosseg 
.model small
.stack 100h 
.data 
prompt db "Enter a number (0-9): $"
result_msg db "Factorial: $"
number db ?
result db ?

.code 
main proc 
    mov ax, @data 
    mov ds, ax 

    mov dx, offset prompt
    mov ah, 09h 
    int 21h 

    mov ah, 01h 
    int 21h 
    sub al, 30h
    mov number, al

    call factorial 

    mov dx, offset result_msg
    mov ah, 09h 
    int 21h 

    mov al, result
    add al, 30h
    mov dl, al
    mov ah, 02h 
    int 21h 

    mov ah, 4Ch 
    int 21h

factorial proc
    mov al, number
    mov ah, 01h

    cmp al, 0
    je done_factorial

fact_loop:
    mul al
    dec al
    jnz fact_loop

done_factorial:
    mov result, ah
    ret
factorial endp

main endp 
end main
