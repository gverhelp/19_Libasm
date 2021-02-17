    global ft_strdup
    extern malloc
    extern ft_strlen
    extern ft_strcpy

ft_strdup:
    xor rax, rax
    mov rbx, rdi
    cmp rdi, 0
    je  return

dup:
    call ft_strlen
    inc  rax
    mov  rdi, rax
    call malloc wrt ..plt
    cmp  rax, 0
    je   return
    mov  rdi, rax
    mov  rsi, rbx
    call ft_strcpy
    ret

return:
    mov rax, -1
    ret
