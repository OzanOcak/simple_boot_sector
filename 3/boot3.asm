[org 0x7c00]

;mov [0x10], word 0x0    ;  wanna corrupt 0x10 add sys call

mov al,[my_char]
mov ah,0x0e ; bios scrolling teletype function
int 0x10


my_char:
  db 'X'

jmp $   ; endless loop

times 510-($-$$) db 0
dw 0xaa55
