.data
msg: .asciiz "Hola mundo!\n"      # reservo dos words y le doy valores

.text
.globl main

main:
  li $v0, 4                # syscall print_string code
  la $a0, msg              # pongo en $a0 la direccion de msg
  syscall                  # print_string syscall
  j end                    # voy a end
end:
  li $v0, 10               # syscall exit code
  syscall                  # exit program
