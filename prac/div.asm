; ax / bl = al (quotient) ah (remainder)
; dx : ax / bx = ax (qoutient) dx (remainder) 

; for 8 bits of divisor

dosseg
model small
.stack 100h
.data

.code
main proc

mov ax , 26
mov bl , 5 

div bl 

mov cl , al
mov ch , ah 

mov dl , cl
add dl , 48
mov ah , 2
int 21h

mov dl , ch
add dl , 48
mov ah , 2
int 21h


mov ah , 4ch 
int 21h

main endp
end main




; for 16 bits of divisor
dosseg 
model small 
.stack 100h
.data

qout db ?  ; 8 bits
rem db ?   ; 8 bits

; dl and al is also of 8 bits

.code
mov ax , @data
mov ds , ax
main proc

mov ax , 21
mov dx , 0 

mov bx , 5

div bx 

mov qout , al
mov rem , dl


mov dl , qout
add dl , 48
mov ah , 2
int 21h

mov dl , rem 
add dl , 48
mov ah , 2
int 21h


mov ah , 4ch
int 21h

main endp
end main