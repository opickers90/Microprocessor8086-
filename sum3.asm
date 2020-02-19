Title
.model small
.stack 100h
.data
var db 7ch, 0f2h
sum db 4 dup(0)
.code
main proc
        mov ax, @data
        mov ds, ax
        mov cx, 0
        mov dx, 0
        mov si, 0
        mov di, 0
        mov ah, 3
  loop1:
        add cl, (var + si)
        inc si
        adc ch, (var + si)
        inc si
        adc dl, (var + si)
        adc dh, 0
        inc si
        dec ah
        jnz loop1
        
        mov (sum + 0), cl
        mov (sum + 0), ch
        mov (sum + 0), dl
        mov (sum + 0), dh
         
  