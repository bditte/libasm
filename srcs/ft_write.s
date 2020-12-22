section .text
	global ft_write

ft_write:
	push 	rbp
	mov 	rbp, rsp

	mov 	rax, 1
	syscall
	cmp 	rax, 0
	jl	error
	jmp	return

error:
	mov 	rax, -1

return:
	mov	rsp, rbp
	pop	rbp
	ret 	
