	.file	"test.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"ahahahha, i'm the dirtest dirt"
.LC1:
	.string	"the gunk in the gutter"
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
	movl	$0, %eax
	call	time@PLT
	movl	%eax, %edi
	movl	$0, %eax
	call	srand@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jg	.L2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L2:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
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
