    global  ft_strcmp

ft_strcmp:
    mov rax, -1
    xor rbx, rbx
    xor rcx, rcx

loop:
    inc rax
    mov bl, byte [rdi + rax]
    mov cl, byte [rsi + rax]
    cmp bl, 0
    je  return
    cmp cl, 0
    je  return
    cmp bl, cl
    jne return
    jmp loop

return:
    mov rax, rbx
    sub rax, rcx
    ret
