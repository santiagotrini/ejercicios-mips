.data
msg: .asciiz "La suma de los primeros 100 numeros es: "

.text
.globl main

main:
  li $t1, 1                # el contador
  li $t2, 0                # la suma
  li $t3, 101
loop:
  add $t2, $t2, $t1        # suma += contador
  addi $t1, $t1, 1         # contador++
  bne $t1, $t3, loop
print:
  li $v0, 4                # syscall print_string code
  la $a0, msg              # pongo en $a0 la direccion de msg
  syscall                  # print_string syscall
  li $v0, 1
  move $a0, $t2
  syscall
  j end                    # voy a end
end:
  li $v0, 10               # syscall exit code
  syscall                  # exit program
