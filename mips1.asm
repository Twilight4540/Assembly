.data
	msg1: .asciiz "\nDigite o valor da comprimento do retangulo: "
	msg2: .asciiz "\nDigite o valor da largura da área do retangulo: "
	msg3: .asciiz "\nA area do retangulo é : "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	mul $t3, $t1 $t2
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	