jmp $; endless loopi
db 2 ; offset from starting point (first byte is 0 )


times 510-($-$$) db 0
dw 0xaa55 
