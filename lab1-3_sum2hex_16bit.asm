Title sum_2hex_16bit
.model small
.stack 100h
.data
.code
main proc
        mov al, 0
        mov dx, bx
        add dx, cx
        adc al, 0
        mov ah, 4ch
        int 21h
main endp
end main