Title Sum_3hex_8bit
.model small
.stack 100h
.data
.code
main proc
        mov dh, 0
        mov dl, bl
        add dl, bh
        adc dh, 0
        add dl, cl
        adc dh, 0
        mov ah, 4ch
        int 21h
main endp
end main