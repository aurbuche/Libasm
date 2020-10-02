section .text
	global	ft_strdup
	extern	ft_strlen
	extern	ft_strcpy
	extern	malloc

ft_strdup:
	push	rdi
	call	ft_strlen
	mov		rdi, rax
	inc		rdi
	call	malloc
	pop		rdi
	cmp		rax, 0
	je		done
	mov		rsi, rdi
	mov		rdi, rax
	jmp		ft_strcpy

done:
	ret