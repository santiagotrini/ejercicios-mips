.data
r: .word 1, 2, 3, 4, 0, 0 # r es una dir de memoria como 0x10001033

.text

main:
  la $t0, r
  lw $t1, 0($t0)    # cargo en $t1 lo que esta en $t0 + 0   = 1
  lw $t2, 4($t0)    # cargo en $t1 lo que esta en $t0 + 4   = 2
  lw $t3, 8($t0)    # cargo en $t1 lo que esta en $t0 + 8   = 3
  lw $t4, 12($t0)   # cargo en $t1 lo que esta en $t0 + 12  = 4
  add $t5, $t1, $t2
  # sw $t5, 16($t0)
  move $a0, $t5
  li $v0, 1
  syscall   # imprime 3



li $t1, 1

li $v0, 4
