    global ft_read
    extern __errno_location

ft_read:
    xor     rax, rax ; syscall read
    syscall
    push    rax
    cmp     rsi, 0
    je      iferror
    mov     rax, 72 ; check si le fd est bon, syscall fcntl
    mov     rsi, 1
    syscall
    cmp     rax, 0
    jne     iferror
    pop     rax
    ret

iferror:
    pop     rcx  ; mettre rax dans rcx
    neg     rax
    mov     rcx, rax
    call    __errno_location wrt ..plt
    mov     [rax], rcx
    mov     rax, -1
    ret
