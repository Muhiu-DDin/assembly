dosseg
model small
.data
var1 db , "hellow$"
var2 db , "MuhiuDDin$"
var3 db , "janam$"
.code
main proc 
mov ax , @data
mov ds , ax

lea dx , var1
mov ah , 9
int 21h

call enterkey

lea dx , var2
mov ah , 9
int 21h

call enterkey

lea dx , var3
mov ah , 9
int 21h

mov ah , 4ch
int 21h

main endp

enterkey proc

mov dx , 10
mov ah , 2
int 21h

mov dx , 13
mov ah , 2
int 21h

ret
enterkey endp

end main