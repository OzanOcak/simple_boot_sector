[org 0x7c00]

mov ah,0x0e ;bios sys call for teletype

mov [0x9000], byte 'A'
mov al,[0x9000]
int 0x10    ;print al

jmp $

times 510-($-$$) db 0
dw 0xaa55
