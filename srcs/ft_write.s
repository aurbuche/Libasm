section .text
	global _ft_write
	extern __errno_location

_ft_write:
	mov		rax, 1
	syscall
	test	rax, rax
	jnl		done
	push	r10
	neg		rax
	mov		r10, rax
	call	__errno_location
	mov		dword [rax], r10d
	mov		rax, -1
	pop		r10

done:
	ret