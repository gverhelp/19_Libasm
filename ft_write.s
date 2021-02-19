    global ft_write
    extern __errno_location

ft_write:
    mov     rax, 1   ; syscall write
    syscall
;    mov r9, rax
    push    rax
    cmp     rsi, 0
    je      iferror
    mov     rax, 72 ; check si le fd est bon, syscall fcntl
    mov     rsi, 1
    syscall
    cmp     rax, 0
    jne     iferror
    pop     rax
;    mov rax, r9
    ret

iferror:
    pop     rbx     ; met rax dans rcx
;    mov rbx, r9
    neg     rax
    mov     rbx, rax
    call    __errno_location wrt ..plt
    mov     [rax], rbx
    mov     rax, -1
    ret
