.global _start
.global exit
.section .note.GNU-stack
.section .text
.type   _start,@function

_start:
	popq	%rdi
	movq	%rsp, %rsi
	movq	8(%rsp, %rdi, 8), %rdx
	call	__libc_start_main
