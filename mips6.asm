.data
	msg1: .asciiz "\nDigite A: "
	msg2: .asciiz "\nDigite B: "
	msg3: .asciiz "\nResultado C: "
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

    beq $t0, $t1, iguais

    mul $t2, $t0, $t1
    j mostrar

iguais:
    add $t2, $t0, $t1

mostrar:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall