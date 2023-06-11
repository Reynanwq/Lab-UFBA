section .text
  global main

extern converte_celsius
extern exit

  movss xmm0, dword [rsp+128]
  call converte_celsius

  mov eax, 0
  call exit