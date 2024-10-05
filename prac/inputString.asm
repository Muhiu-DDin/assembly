dosseg 
.model small
.stack 100h 
.data 
msg1 db , "enter your name$"
list1 db , 50 dup ('$')

.code 
main proc

mov ax ,@data 
mov ds , ax 

lea dx , msg1 
mov ah , 9 
int 21h 

mov si , offset list1

loop1:
mov ah , 1 
int 21h 
cmp al , 13
je print
mov [si] , al 
inc si 
jmp loop1


print:
lea dx , list1 
mov ah , 9 
int 21h 

exit:
mov  ah , 4ch 
int 21h

main endp 
end main










































