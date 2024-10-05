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
; ---------------------------


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
je stackk
mov dx , [si]
mov ah , 2
int 21h
inc si
jmp move


stackk:
lea si , l1

mov cx , 5
loop2:

; mov bx , 0
; mov bl , [si]
push [si]
inc si
loop loop2

mov cx , 5
loop3:
pop dx
mov ah , 2
int 21h
loop loop3

mov  ah , 4ch 
int 21h

main endp 

input proc
mov ah , 1
int 21h
ret
input endp

end main
