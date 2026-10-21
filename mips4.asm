.data
	msg1: .asciiz "\nDigite a base maior: "
	msg2: .asciiz "\nDigite a base menor: "
	msg3: .asciiz "\nDigite a altura: "
	msg4: .asciiz "\nArea do trapezio: "
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

    add $t3, $t0, $t1

    mul $t4, $t3, $t2

    li $t5, 2
    div $t4, $t5
    mflo $t6

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t6, 0
    syscall