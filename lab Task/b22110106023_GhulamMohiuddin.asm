dosseg
model small
.stack 100h
.data
list db , 5 dup("$")
.code
main proc
mov ax , @data
mov ds , ax

lea si , list

l1:
mov ah , 1
int 21h
cmp al , 13
je print
mov [si] , al
inc si
jmp l1

print:
lea dx , list
mov ah , 9 
int 21h 

exit:
mov  ah , 4ch 
int 21h

main endp
end main