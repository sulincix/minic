.global __libc_exit
.section .note.GNU-stack
.section .text

__libc_exit:
    push   %rbp
    mov    %rsp,%rbp
    mov    %edi,-0x4(%rbp)
    mov    -0x4(%rbp),%edi
    mov    $0x3c,%rax
    syscall
