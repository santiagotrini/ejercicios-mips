.data
msg: .asciiz "Es par \n"

.text
.globl main

main:
  li $v0, 5
  syscall
  move $t1, $v0
  li $t2, 2
  rem $t1, $t1, $t2        # resto de n / 2
  beq $t1, $zero, print
  j end
print:
  li $v0, 4                # syscall print_string code
  la $a0, msg              # pongo en $a0 la direccion de msg
  syscall                  # print_string syscall
  j end                    # voy a end
end:
  li $v0, 10               # syscall exit code
  syscall                  # exit program
