; model small 
; .stack 100h 
; .data 
;     string1 db 'ARHAM$' 
;     string2 db 'MOIN$' 
;     string3 db 'SHAHEER$' 
; .code 
; Main proc 
;     mov ax,@data 
;     mov ds,ax 
;     mov dx,offset string1 
;     mov ah,9 
;     int 21h 
;     call nextlinekey 
;     mov dx,offset string2 
;     mov ah,9 

;    int 21h 
;     call nextlinekey 
;     mov dx,offset string3 
;     mov ah,9 
;     int 21h 
;     mov ah,4ch 
;     int 21h 
; Main endp 
; nextlinekey  proc 
;     mov dx,10 
;     mov ah,2 
;     int 21h 
;     mov dx,13 
;     mov ah,2 
;     int 21h 
;     ret 
; nextlinekey endp     
; End Main 

; -----------------------------

; print MACRO var1 
;     mov dx,offset var1 
;     mov ah,9 
;     int 21h 
; ENDM 
; .model small 
; .stack 100h 
; .data 
;     string1 db 'muhammad$' 
;     string2 db 'arham$' 
; .code 
; Main proc 
;     mov ax,@data 
;     mov ds,ax 
;     print string1 
;     print string2 
;     mov ah,4ch 
;     int 21h 
; Main endp 
; End Main 

; ------------------

; .model small 
; .stack 100h 
; .data 
;     friend1 db 'arham$' 
;     friend2 db 'anas$' 
;     friend3 db 'momo$' 
; .code 
; Main proc 
;     mov ax, @data 
;     mov ds, ax 
;     mov dx, offset friend1 
;     mov ah, 9 
;     int 21h 
;     call nextlinekey 
;     mov dx, offset friend2 
;     mov ah, 9 
;     int 21h 
;     call nextlinekey 
;     mov dx, offset friend3 
;     mov ah, 9 
;     int 21h 
;     mov ah, 4ch 
;     int 21h 
; Main endp 
; nextlinekey proc 
;     mov dx, 10           
;     mov ah, 2 
;     int 21h 
;     mov dx, 13           
;     mov ah, 2 
;     int 21h 
;     ret 
; nextlinekey endp     
; End Main 