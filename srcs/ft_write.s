extern __errno_location

section .text
	global ft_write

ft_write:
	push 	rbp
	mov 	rbp, rsp

	mov 	rax, 1
	syscall
	cmp	rax, 0
	jle	error
	jmp	return

error:
	mov	r15, -1
	imul	r15
	mov 	r15, rax
	call	__errno_location
	mov	[rax], r15
	mov	rax, -1
	jmp	return	

return:
	mov	rsp, rbp
	pop	rbp
	ret 	
