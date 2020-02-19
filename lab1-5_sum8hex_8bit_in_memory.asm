Title sum_8hex_8bit_in_data
.model small
.stack 100h
.data
dat db 7ch, 0ffh, 5dh, 9ah, 88h, 2fh, 0c5h, 9
.code
main proc
        mov ax, @data
        mov ds, ax
        mov si, 0
loop1:  add dl, (dat + si)      
        adc dh, 0
        inc si
        cmp si, 8
        jnz loop1
        mov ah, 4ch
        int 21h
main endp
end main