; dosseg
; .model small
; .stack 100h
; .data

; .code
; swap proc

; mov ax , '3'
; mov bx , '4'

; push ax

; mov ax , bx

; pop bx

; mov dx , ax
; mov ah , 2
; int 21h

; mov dx , bx
; mov ah , 2
; int 21h



; mov ah , 4ch
; int 21h


; swap endp
; end swap

; ----------------------------------

dosseg
.model small
.stack 100h
.data 

var1 db , '3'
var2 db ,  '4'

.code
swap proc

mov al , var1
mov bl , var2 

mov var1 , bl 
mov var2 , al 

mov dl , var1
mov ah , 2
int 21h 

mov dl , var2 
mov ah , 2 
int 21h

mov ah , 4ch 
int 21h 

swap endp 
end swap 



