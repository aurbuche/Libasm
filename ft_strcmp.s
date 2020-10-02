section .text
    global ft_strcmp

ft_strcmp:
	mov		rdx, 0

loop:
	movzx	eax, byte[rdi + rdx]
	movzx	r8d, byte[rsi + rdx]
	sub		eax, r8d
	jnz		done
	cmp		r8d, 0
	je		done
	inc		rdx
	jmp		loop

done:
	ret