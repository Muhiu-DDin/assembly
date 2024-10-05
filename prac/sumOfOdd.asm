dosseg
model small
.stack 100h
.data
.code
main proc 

mov cx , 1
mov ax , 0
l1:
add ax , cx
add cx , 2
cmp cx , 101
jne l1

mov cx , 0
mov dx , 0
mov bx , 10
l2:
div bx
push dx
mov dx ,0
inc cx
cmp ax , 0
jne l2

l3:
pop dx
add dx , 48
mov ah , 2
int 21h
loop l3

mov ah , 4ch
int 21h

main endp
end main