section .text
	global _ft_strcpy

_ft_strcpy:
	mov		rdx, 0

loop:
	mov		cl, byte[rsi + rdx]
	mov		byte[rdi + rdx], cl
	cmp		cl, 0
	je		done
	inc		rdx
	jmp		loop		

done:
	mov		rdi, rax
	ret