[org 0x7c00]

  mov bx, HELLO_MSG
  call print_string

  mov bx, GOOD_BYE_MSG
  call print_string

jmp $

%include "print_string.asm"

HELLO_MSG:
  db 'Hello, World!', 0

GOOD_BYE_MSG:
  db 'Good Bye Man!', 0

;; Magic Numbers
times 510-($-$$) db 0
dw 0xAA55
