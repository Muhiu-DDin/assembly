dosseg
model small
.stack 100h
.data
l1 db 2,9,5,6,0
.code

main proc 
mov ax , @data
mov ds , ax

lea si , l1
mov bl , [si]
inc si

greater:
cmp [si] , 0
je print

cmp [si] , bl
jg move

inc si
jmp greater

move:
mov bl , [si]
inc si
jmp greater

print:
add bl , 48
mov dl , bl
mov ah , 2
int 21h

mov  ah , 4ch 
int 21h

main endp 
end main