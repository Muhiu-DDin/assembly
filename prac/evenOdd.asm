dosseg
.model small
.stack 100h
.data
msg db "enter number$"
msg1 db "the number is even$"
msg2 db "the number is odd$"
.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg
    call print 

    mov ah, 1
    int 21h

    sub al , 48
    mov cl , al

    mov ax, cx
    mov bl, 2 
    div bl

    mov ch, ah
    cmp ch, 0
    je evenNo

    lea dx, msg2
    call print
    jmp endCheck

evenNo:
    lea dx, msg1
    call print

endCheck:
    mov ah, 4ch
    int 21h

main endp

print proc
    mov ah, 9
    int 21h
    ret
print endp

end main
