.section .bss
.global ram 
.lcomm ram, 256    # Reserve 236 butes of RAM (uninitialized memory)

.section .text 
.global fill_ram  # Make function visible to C program 

fill_ram: 
  movb $1, %eax
  movb $0, %ebx 
loop_label:
  cmpb $11, %ebx
  incb %ebx 
  jnpe loop_label 
  
  moveb %bl, ram+0x50

ret         # Return control back to C program 
.section .note.GNU-stack,"",@progbits
