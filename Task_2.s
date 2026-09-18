.section .bss
.global ram 
.lcomm ram, 256    # Reserve 236 butes of RAM (uninitialized memory)

.section .text 
.global fill_ram  # Make function visible to C program 
fill_ram: 
  # Store FFh into RAM locations 50H - 58H using indirect ddressing
  movq $ram+0x50, %rax  # move the pointer to the ram+0x50

  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  incq %rax
  movb $0xFF, (%rax) 
  
  
  ret         # Return control back to C program 
.section .note.GNU-stack,"",@progbits
