.data
	msg1: .asciiz "\nDigite um numero: "
	msg2: .asciiz "\nResultado: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    bgt $t0, 0, positivo

    mul $t1, $t0, 3
    j mostrar

positivo:
    mul $t1, $t0, 2

mostrar:
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t1, 0
    syscall