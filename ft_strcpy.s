    global ft_strcpy

ft_strcpy:
	xor		rax, rax
	xor		rbx, rbx
	cmp		rdi, 0         ; dest
	je		return
	cmp		rsi, 0         ; src
	je		return

loop:
	mov		bl, byte [rsi + rax]
	mov		byte [rdi + rax], bl
	cmp		bl, 0
	je		return
	inc		rax
	jmp		loop

return:
	mov		rax, rdi
	ret