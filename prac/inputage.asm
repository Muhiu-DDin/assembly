dosseg
model small
.stack 100h
.data
l1 db , 50 dup(0)
.code

main proc 
mov ax , @data
mov ds , ax

lea si , l1
loop1:
call input 
cmp al , 13 
je done
mov [si] , al 
inc si
jmp loop1

done:
lea si , l1 

move:
cmp [si] , 0 
je exit
mov dx , [si]
mov ah , 2
int 21h
inc si
jmp move


exit:
mov  ah , 4ch 
int 21h

main endp 

input proc
mov ah , 1
int 21h
ret
input endp

end main

; ----------------------
; in the form of string

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