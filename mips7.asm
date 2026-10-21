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

    li $t1, 2
    div $t0, $t1

    mfhi $t2

    beq $t2, 0, par

    addi $t0, $t0, 8
    j mostrar

par:
    addi $t0, $t0, 5

mostrar:
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall