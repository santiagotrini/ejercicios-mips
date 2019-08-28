.data
msg: .asciiz " "
.text
.globl main

main:
  li $t1, 1                # power = 1
  li $t2, 0                # i = 0
  li $v0, 5                # read n
  syscall
  move $t3, $v0            # n en $t3
loop:
  li $v0, 1
  move $a0, $t1
  syscall                  # print power
  li $v0, 4                # syscall print_string code
  la $a0, msg              # pongo en $a0 la direccion de msg
  syscall                  # print_string syscall
  mul $t1, $t1, 2          # power = power * 2
  addi $t2, $t2, 1         # i++
  bne $t2, $t3, loop       # while i <= n
  j end
end:
  li $v0, 10               # syscall exit code
  syscall                  # exit program
