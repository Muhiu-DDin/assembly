print macro m1
lea dx , m1
mov ah , 9
int 21h
endm

dosseg
model small
.data
var1 db , "hey$"
var2 db , "MuhiuDDin$"
var3 db , "janam$"
.code

main proc 
mov ax , @data
mov ds , ax

print var1
call enter
print var2
call enter
print var3


mov ah , 4ch
int 21h
main endp



enter proc
mov dx , 10
mov ah , 2
int 21h

mov dx , 13
mov ah , 2
int 21h
ret
enter endp



end main