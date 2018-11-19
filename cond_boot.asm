mov bx, 30

cmp bx, 4
jle A_char
cmp bx, 40
jl  B_char
mov al, 'C'
jmp end
A_char:
    mov al, 'A'
    jmp end
B_char:
    mov al, 'B'

end:
   mov ah, 0x0e
   int 0x10

jmp $

the_secret:
           db "X"
jmp $
;; Magic Numbers
times 510-($-$$) db 0
dw 0xAA55
