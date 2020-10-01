section .text
	global ft_strlen

ft_strlen:
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