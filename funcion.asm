# funcion.asm

.data
msg: .asciiz "Ingrese un numero\n"

.text
.globl main

main:
  li $v0, 4
  la $a0, msg
  syscall  # print msg

  li $v0, 5
  syscall  # read n

  move $a0, $v0
  jal duplicar

  move $a0, $v1
  li $v0, 1
  syscall  # print n * 2

  li $v0, 10
  syscall   # exit

# funcion duplicar
duplicar:
  add $v1, $a0, $a0
  jr $ra
