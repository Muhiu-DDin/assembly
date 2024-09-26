dosseg 
.model small 
.data 
msg1 db , "enter age$"
list1 db , 50 dup(0)

.code 
main proc 
mov ax , @data 
mov ds , ax 

lea dx , msg1 
mov ah , 9
int 21h

lea si ,  list1

loop1:
mov ah , 1 
int 21h 
cmp al , 13 
je doneAge 
mov [si] , al
inc si 
jmp loop1

doneAge:
lea si , list1

printLoop:
mov dx , [si]
cmp dx , 0
je exit
inc si
mov ah , 2 
int 21h 
jmp printLoop


exit:
mov ah , 4ch 
int 21h

main endp 
end main
