section .text
	global ft_strlen

ft_strlen:
	push rbp
	mov rbp, rsp
	
	cmp rdi, 0
	mov rax, 0
	je return
	mov rax, -1

loop:
	inc rax
	cmp BYTE [rdi + rax], 0
	jne loop

return:
	mov rsp, rbp
	pop rbp
	ret	
