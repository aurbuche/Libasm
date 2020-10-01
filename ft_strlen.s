section .text
global _ft_strlen

_ft_strlen:
		mov eax, 0
		jmp inc

inc:
		add rdi, 1

comp:
		cmp byte[rdi + rax], 0
		jne inc

done:
		ret