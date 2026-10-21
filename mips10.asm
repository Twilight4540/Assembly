.data
	msg1: .asciiz "\nDigite o primeiro numero: "
	msg2: .asciiz "\nDigite o segundo numero: "
	msg3: .asciiz "\nResto da divisao: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    bgt $t0, $t1, A_maior

    add $t2, $t1, 0
    add $t3, $t0, 0
    j calcular

A_maior:
    add $t2, $t0, 0
    add $t3, $t1, 0

calcular:
    div $t2, $t3

    mflo $t4 

    mul $t5, $t3, $t4

    sub $t6, $t2, $t5

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t6
    syscall