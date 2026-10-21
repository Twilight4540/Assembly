.data
	msg:    .asciiz "\nDigite um numero (-1 para terminar): "
	msg1:   .asciiz "\n[0-25]: "
	msg2:   .asciiz "\n[26-50]: "
	msg3:   .asciiz "\n[51-75]: "
	msg4:   .asciiz "\n[76-100]: "
.text
main:
    li $t1, 0
    li $t2, 0
    li $t3, 0
    li $t4, 0
ler:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0


    bltz $t0, fim


    bgt $t0, 100, ler


    ble $t0, 25, intervalo1


    ble $t0, 50, intervalo2


    ble $t0, 75, intervalo3


    addi $t4, $t4, 1
    j ler


intervalo1:
    addi $t1, $t1, 1
    j ler


intervalo2:
    addi $t2, $t2, 1
    j ler


intervalo3:
    addi $t3, $t3, 1
    j ler


fim:

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 1
    add $a0, $t1, 0
    syscall


    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall


    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t3, 0
    syscall


    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t4, 0
    syscall