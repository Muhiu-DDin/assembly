dosseg
model small
.stack 100h
.data
str db "ENVELOPE$"
.code

main proc 
mov ax , @data
mov ds , ax

lea si , str
mov bl , 0 

loop1:
cmp [si] , '$'
je print

cmp [si] , 69
je next
inc si
jmp loop1

next:
inc bl 
inc si
jmp loop1

print:
add bl , 48
mov dl , bl
mov ah , 2
int 21h

mov  ah , 4ch 
int 21h

main endp 
end main