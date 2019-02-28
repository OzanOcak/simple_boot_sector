print_str:
 _loop:
   ;mov al,[si] ; data in the addr
   lodsb 
   cmp al,0
   je _end
   mov ah,0x0e
   int 0x10
   ;inc si
   jmp  _loop
 _end:
  ret
