.data
	msg1: .asciiz "\nDigite a quatidade de camisas pequenas: "
	msg2: .asciiz "\nDigite a quatidade de camisas medias: "
	msg3: .asciiz "\nDigite a quatidade de camisas grandes: "
	msg4: .asciiz "\nValor arrecadado: "
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
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	mul $t4, $t1, 10
	
	mul $t5, $t2, 12
	
	mul $t6, $t3, 15
	
	add $t7, $t4, $t5
	add $s1, $t7, $t6
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $s1, 0
	syscall