[org 0x7c00]   ; it starts from here $$
;mov al,'H'
;mov ah,0x0e     ;bios scrolling teletype function
;int 0x10

;print a charecter on screen
;mov al,0x06   ; the  address
;mov al,[0x7c07e  ; 6th offset from 7c00 where bios loaded

mov al,[my_char]
mov ah,0x0e
int 0x10


my_char:
    db 'X'

jmp $           ;endless jump -  $ means offset from starting point which is $$ 

times 510-($-$$) db 0
dw 0xaa55
