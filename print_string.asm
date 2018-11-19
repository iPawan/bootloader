print_string:
   pusha
   mov ah, 0x0e
begin:
  mov al, [bx]
  cmp al, 0
  je return
  int 0x10 
  add bx, 0x0001
  jmp begin
return:
   popa
   ret
