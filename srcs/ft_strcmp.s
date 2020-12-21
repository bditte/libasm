section .text
	global ft_strcmp

ft_strcmp:
	push rbp
	mov rbp, rsp
	
	mov rcx, -1

loop:
	inc rcx
	mov dh, [rdi + rcx]
	mov r8b, [rsi + rcx]
	cmp dh, 0
	je str1_zero
	cmp r8b, 0
	je str1_greater	
	jmp loop

str1_zero:
	cmp r8b, 0
	je equals
	mov rax, -1

	mov rsp, rbp
	pop rbp
	ret
equals:
	mov rsp, rbp
	pop rbp

	mov rax, 0
	ret

str1_greater:
	mov rsp, rbp
	pop rbp

	mov rax, 1
	ret

