section .text
	global _ft_strlen

_ft_strlen:
	mov		rsi, 0

loop:
	mov		cl, byte[rsi + rdi]
	cmp		cl, 0
	je		done
	inc		rsi
	jmp		loop

done:
	mov		rax, rsi
	ret