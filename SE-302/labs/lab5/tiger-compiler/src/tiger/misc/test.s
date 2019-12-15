	.file	"test.c"
	.text
	.globl	s
	.section	.rodata
	.type	s, @object
	.size	s, 7
s:
	.string	"abcdef"
	.globl	t
	.align 32
	.type	t, @object
	.size	t, 35
t:
	.string	"dbhsakjlfhbnl;ojiohubkjnlmjhuibjkn"
.LC0:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$62, %rax
	addq	%rax, %rdx
	andl	$3, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jg	.L2
	leaq	s(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L2:
	leaq	t(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
