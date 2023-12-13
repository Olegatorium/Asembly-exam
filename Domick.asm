section .data
   row1 db '    _ ',10
   row2 db '   / \ ',10
   row3 db '  /___\ ',10
   row4 db ' | 0_0 |',10
   row5 db ' | | | |',  10
   
  section .text
    global _start
    
  _start:
  
  mov rax,1
  mov rdi,1
  mov rsi, row1
  mov rdx, 7
  syscall
  
  mov rax,1
  mov rdi,1
  mov rsi, row2
  mov rdx, 8
  syscall
  
  mov rax,1
  mov rdi,1
  mov rsi, row3
  mov rdx, 9
  syscall
  
  mov rax,1
  mov rdi,1
  mov rsi, row4
  mov rdx, 9
  syscall
  
  mov rax,1
  mov rdi,1
  mov rsi, row5
  mov rdx, 9
  syscall
  
    mov rax, 60
    xor rdi, rdi
    syscall
