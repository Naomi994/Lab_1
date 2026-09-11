.section .bss
.global ram 
.lcomm ram, 256    # Reserve 236 butes of RAM (uninitialized memory)

.section .text 
.global fill_ram  # Make function visible to C program 

fill_ram: 
  xorb %al, %al 
  movb $1, %bl

loop_label: 
  addb %bl, %al 
  incb %bl 
  cmpb $ 11, %bl 
  jne loop_label

  movb %al, ram+0x50 

ret         # Return control back to C program 
.section .note.GNU-stack,"",@progbits
