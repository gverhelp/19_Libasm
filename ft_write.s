    global ft_write
    extern __errno_location

ft_write:
    mov     rax, 1   ; syscall write
    syscall
    push    rax      ; save rax
    cmp     rsi, 0
    je      iferror
    mov     rax, 72  ; check si le fd est bon, syscall fcntl
    mov     rsi, 1
    syscall
    cmp     rax, 0
    jne     iferror
    pop     rax
    ret

iferror:
    pop     rcx      ; mettre rax dans rcx
    neg     rax
    mov     rdx, rax
    call    __errno_location wrt ..plt
    mov     [rax], rdx
    mov     rax, -1
    ret
