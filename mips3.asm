.data

	msg1: .asciiz "\nDigite as horas trabalhadas: "
	msg2: .asciiz "\nDigite as horas extras: "
	msg3: .asciiz "\nDigite o desconto: "
	msg4: .asciiz "\nSalario bruto: "
	msg5: .asciiz "\nSalario liquido: "

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

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    add $t2, $v0, 0

    mul $t3, $t0, 10

    mul $t4, $t1, 15

    add $t5, $t3, $t4

    sub $t6, $t5, $t2

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t5, 0
    syscall

    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    add $a0, $t6, 0
    syscall