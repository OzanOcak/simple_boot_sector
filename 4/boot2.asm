[org 0x7c00]

mov ah,0x0e ; bios sys call teletype func

mov bp,0x8000
mov sp,bp

push 'A'
push 'B'
push 'C'

mov al,[0x7ffc]
int 0x10 ; print al 

pop bx
mov al,bl
int 0x10   ;print al

pop bx
mov al,bl
int 0x10   ;print al

pop bx
mov al,bl
int 0x10   ;print al

jmp $

times 510-($-$$) db 0
dw 0xaa55

