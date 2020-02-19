Title sum_3hex_16bit
.model small
.stack 100h
.data
.code
main proc
        mov al, 0
        mov si, bx
        add si, cx
        adc al, 0
        add si, dx
        adc al, 0
        mov ah, 4ch
        int 21h
main endp
end main