[org 0x7c00]
;set up stack away from code

mov bp,0x8000
mov sp,bp

mov si,HELLO_MSG ; address of hello
call print_str

jmp $

print_str:
 _loop:
   mov al,[si] ; data in the addr
   cmp al,0
   je _end
   mov ah,0x0e
   int 0x10
   add si,1
   jmp  _loop
 _end:
  ret



HELLO_MSG:
  db 'Hello',0 ; if there is no 0 will read bye
BYE_MSG:
  db 'Bye',0



times 510-($-$$) db 0
dw 0xaa55
