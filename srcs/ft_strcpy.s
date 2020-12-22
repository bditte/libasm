section .text
	global ft_strcpy

ft_strcpy:
	push rbp
	mov rbp, rsp

	mov rcx, -1
loop:
	inc rcx
	mov rax, [rsi + rcx]
	mov [rdi + rcx], rax
	cmp [rsi + rcx], BYTE 0
	jne loop

return:
	mov rsp, rbp
	pop rbp

	mov rax, rdi
	ret

