.section .bss
.global ram 
.lcomm ram, 256    # Reserve 236 butes of RAM (uninitialized memory)

.section .text 
.global fill_ram  # Make function visible to C program 

fill_ram: 
  # Store FFh into RAM locations 50H - 58H using direct addressing
  xorb %al, % al # clear al to 0 
  move $1, % bl  # move 1 into bl 

  cmp $11, % bl  # looking at whether or not you have passed 10 
  jne sum_loop 



ret         # Return control back to C program 
.section .note.GNU-stack,"",@progbits
