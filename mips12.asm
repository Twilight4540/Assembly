.data
	msg:        .asciiz "\nDigite a altura em cm: "
	msgMenor:   .asciiz "\nMenor altura: "
	msgMaior:   .asciiz "\nMaior altura: "
.text
main:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    add $t1, $t0, 0
    add $t2, $t0, 0

    li $t3, 1


loop:
    beq $t3, 15, fim

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0



    blt $t0, $t1, menor


continuar:


    bgt $t0, $t2, maior


continuar2:

    addi $t3, $t3, 1
    j loop


menor:
    add $t1, $t0, 0
    j continuar


maior:
    add $t2, $t0, 0
    j continuar2


fim:
    li $v0, 4
    la $a0, msgMenor
    syscall

    li $v0, 1
    add $a0, $t1, 0
    syscall

    li $v0, 4
    la $a0, msgMaior
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall