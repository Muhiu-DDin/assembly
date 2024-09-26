dosseg
.model small
.stack 100h
.data
str db  "muhiu"
.code 

main proc 

mov ax , @data 
mov ds , ax 

mov si , offset str 

mov cx  , 5

loop1:
push [si]
inc si 
loop loop1

mov cx , 5

loop2:
pop dx
mov ah , 2 
int 21h
loop loop2

mov ah , 4ch 
int 21h

main endp 
end main

