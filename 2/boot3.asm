;ax,bx,cx,dx

;mov ax,0x12
;mov bx,ax
;mov cx, 0x1234
;mov dl,0x12
;mov dh,0x34
;xor ax,ax

mov ah,0x0e ; bios scrolling teletype function

mov al, 'H'
int 0x10

mov al, 'i'
int 0x10 ; bios system call

start:
  jmp start ; or jmp $ 

times 510-($-$$) db 0
dw 0xaa55  
