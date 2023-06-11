;ALUNO: REYNAN DA SILVA DIAS PAIVA
;N° MATRICULA: 221115751

section .text
  global main

extern verifica
extern exit


  movss xmm0, dword [rsp+16]
  movss xmm1, dword [rsp+32]
  movss xmm2, dword [rsp+64]
  call verifica

  mov eax, 0
  call exit



