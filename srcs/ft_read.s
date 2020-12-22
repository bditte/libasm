section .text
	global ft_read

ft_read:
	push rbp
	mov rbp, rsp

	mov rax, 0
	syscall
	cmp rax, 0
	jl error
	jmp return

error:
	mov rax, -1
return:
	mov rsp, rbp
	pop rbp
	ret	
