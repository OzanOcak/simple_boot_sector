[org 0x7c00]
;set up stack away from code

mov bp,0x8000
mov sp,bp

mov si,HELLO_MSG ; address of hello
call print_str

jmp $

%include "my_func.asm"

HELLO_MSG:
  db 'Hello',0 ; if there is no 0 will read bye
BYE_MSG:
  db 'Bye',0



times 510-($-$$) db 0
dw 0xaa55
