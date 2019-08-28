.data
msg: .asciiz "Es bisiesto\n"

.text
.globl main

main:
  li $v0, 5
  syscall
  move $t1, $v0
  rem $t2, $t1, 4          # tiene que ser divisible por 4
  bne $t2, $zero, end      # sino vas a end
  rem $t3, $t1, 100        # no tiene que ser divisible por 100
  rem $t4, $t1, 400        # salvo que sea divisible por 400
  beq $t4, $zero, print
  beq $t3, $zero, end
print:
  li $v0, 4                # syscall print_string code
  la $a0, msg              # pongo en $a0 la direccion de msg
  syscall                  # print_string syscall
  j end                    # voy a end
end:
  li $v0, 10               # syscall exit code
  syscall                  # exit program
