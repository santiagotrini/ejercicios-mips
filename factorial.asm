.data
msg: .asciiz "El factorial es: "

.text
.globl main

main:
  li $t1, 1
  li $v0, 5
  syscall
  move $t2, $v0
loop:
  beq $t2, $zero, print
  mul $t1, $t1, $t2
  addi $t2, $t2, -1
  bne $t2, $zero, loop
print:
  li $v0, 4                # syscall print_string code
  la $a0, msg              # pongo en $a0 la direccion de msg
  syscall                  # print_string syscall
  li $v0, 1
  move $a0, $t1
  syscall                  # print result
  j end                    # voy a end
end:
  li $v0, 10               # syscall exit code
  syscall                  # exit program
