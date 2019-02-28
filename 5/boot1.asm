[org 0x7c00]

;set up stack away from code

mov bp,0x8000
mov sp,bp

mov al,'X'  ; push 'X' to al
call print_ch  ; mov bx,ip && jmp print_ch


mov al,'Y'
call print_ch

jmp $

print_ch:
   mov ah,0x0e
   int 0x10
   ret   ;pop bx && jmp bx

times 510-($-$$) db 0
dw 0xaa55

