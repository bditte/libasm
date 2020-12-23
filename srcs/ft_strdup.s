extern	ft_strlen
extern	malloc

section .data
	message db `oui\n`

section .text
	global ft_strdup

ft_strdup:
	push rbp
	mov rbp, rsp

	call ft_strlen
	mov r8, rax 	; len
	inc rax 	; room for '\0'
	mov r12, rdi 	; save str

	mov rdi, rax 	; malloc parameters
	call malloc 	; return in rax
	mov r9, 0

;copy rsi into rax
loop:
	mov r10b, [r12]
	mov [rax + r9], r10b
	inc r12
	inc r9
	cmp [r12], byte 0
	je put_zero

	cmp r8, r9
	jne loop

put_zero:
	mov [rax + r8], byte 0 ; add '\0'

return:
	mov rsp, rbp
	pop rbp
	ret
