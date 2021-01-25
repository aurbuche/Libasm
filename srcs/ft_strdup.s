section .text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_strcpy
	extern	_malloc

_ft_strdup:
	push	rdi
	call	_ft_strlen
	mov		rdi, rax
	inc		rdi
	call	_malloc
	pop		rdi
	cmp		rax, 0
	je		done
	mov		rsi, rdi
	mov		rdi, rax
	jmp		_ft_strcpy

done:
	ret