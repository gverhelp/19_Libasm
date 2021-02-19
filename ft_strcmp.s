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
    je  compare
    cmp cl, 0
    je  compare
    cmp bl, cl
    jne compare
    jmp loop

compare:
    mov rax, rbx
    sub rax, rcx
    cmp rax, 0
    jg  supp
    jl  inf
    ret

supp:
    mov rax, 1
    ret

inf:
    mov rax, -1
    ret
