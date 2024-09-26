; al x bl = ax (result)
; ax x bx = dx ax (result)

dosseg
model small
.stack 100h
.data
.code
main proc

mov al , 2
mov bl , 2

mul bl

mov cx , ax
add cx , 48

mov dx , cx
mov ah , 2
int 21h

mov ah , 4ch
int 21h


main endp
end main

; ..............

dosseg
model small
.stack 100h
.data
.code
main proc

mov al , 5
mov bl , 2

mul bl
AAM

mov ch , ah
add ch , 48

mov cl , al
add cl , 48

mov dl , ch
mov ah , 2
int 21h

mov dl , cl
mov ah , 2
int 21h

mov ah , 4ch
int 21h


main endp
end main
