.section .bss
.global ram 
.lcomm ram, 256    # Reserve 236 butes of RAM (uninitialized memory)

.section .text 
.global fill_ram  # Make function visible to C program 
fill_ram: 
  # Store FFh into RAM locations 50H - 58H using indirect ddressing

  # This helps with indirect addressing
  #  
  movb $0xFF, (%eax) 
  movb $0xFF, (%eax)
  movb $0xFF, (%eax)
  movb $0xFF, (%eax)
  movb $0xFF, (%eax)
  movb $0xFF, (%eax)
  movb $0xFF, (%eax)
  movb $0xFF, (%eax)
  movb $0xFF, (%eax) 

ret         # Return control back to C program 
.section .note.GNU-stack,"",@progbits
