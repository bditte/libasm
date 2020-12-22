section .text
	global ft_strcmp

ft_strcmp:
	push rbp
	mov rbp, rsp
	
	mov rcx, -1

;ft_strcmp(char *str1, char *str2)
;ft_strcmp(rdi, rsi)

loop:
	inc rcx
	mov dl, [rdi + rcx]
	mov bl, [rsi + rcx]
	cmp dl, 0
	je str1_zero
	cmp bl, 0
	je str1_greater
	cmp byte dl, byte bl
	jb str1_zero
	ja str1_greater
	jmp loop

str1_zero:
	cmp bl, 0
	je equals
	mov rax, -1

	jmp return
equals:
	mov rax, 0
	
	jmp return

str1_greater:
	mov rax, 1

	jmp return
return:
	mov rsp, rbp
	pop rbp
	ret
