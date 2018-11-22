.data
	prompt: .asciiz  "Enter the integer (between -128 to 127): "
	error: .asciiz  "\nNumber should be within the range!"
	
.text
	#prompting user to enter the integer
	li $v0, 4
	la $a0,	prompt
	syscall
	
	
	#Get the user input
	li $v0, 5
	syscall
	
	
	#store the result in $t0
	move $t0, $v0
	
	#prompt the error message if the number is not within range
	bge $t0, 127, err
	ble $t0, -128, err
	
	#loop starts if the number in range
	add $t0, $zero, $t0
	srl $t1, $t0, 7
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 6
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 5
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 4
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall

	li $a0, 32
	li $v0, 11 
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 3
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 2
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 1
	add $t2, $zero, 1
	and $t3, $t1, $t2
	
	add $a0, $zero, $t3
	li $v0, 1
	syscall

	add $t0, $zero, $t0
	srl $t1, $t0, 0
	add $t2, $zero, 1
	and $t3, $t1, $t2

	add $a0, $zero, $t3
	li $v0, 1
	syscall
	
	
	
	#ending the program
	li $v0, 10
	syscall
	
	

	
	
	
	#prompt the error message
err:
	li $v0, 4
	la $a0,	error
	syscall
	
	
	



	
	
	
	
	
	
	