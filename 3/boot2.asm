mov bx, 0x7c0 ;base segment
mov ds,bx

mov al,[0x0c] ;  0x7c0 * 10 + 0x0c in 16 bit real mode
mov ah,0x0e ; bios teletype
int 0x10  ;bios system call

my_char:
  db 'x'

jmp $  ; endless loop

times 510-($-$$) db 0
dw 0xaa55

