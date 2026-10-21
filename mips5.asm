.data
	msg1: .asciiz "\nDigite o primeiro cateto: "
	msg2: .asciiz "\nDigite o segundo cateto: "
	msg3: .asciiz "\nHipotenusa: "
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

    mtc1 $t0, $f0
    cvt.s.w $f0, $f0

    mtc1 $t1, $f2
    cvt.s.w $f2, $f2

    mul.s $f4, $f0, $f0

    mul.s $f6, $f2, $f2

    add.s $f8, $f4, $f6

    sqrt.s $f10, $f8

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 2
    mov.s $f12, $f10
    syscall