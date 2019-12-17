.text
.globl g
.type g, @function
g:
movq %rdi, 16(%rbp)
movq %rsi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $280, %rsp
L5:
movq $16, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq -24(%rbp), %r13
addq %r10, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r10
movq (%r10), %r11
movq %r11, -48(%rbp)
movq $8, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r13
addq %r10, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq (%r10), %r12
movq %r12, -96(%rbp)
movq -48(%rbp), %r13
movq -96(%rbp), %r13
cmpq %r13, %r13
jg L1
L2:
movq $-8, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq -136(%rbp), %r13
addq %r10, %r12
movq %r12, -136(%rbp)
movq $8, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq -168(%rbp), %r10
addq %r13, %r12
movq %r12, -168(%rbp)
movq -136(%rbp), %r10
movq -168(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
L3:
jmp L4
L1:
movq $-8, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r10
movq -216(%rbp), %r13
addq %r10, %r12
movq %r12, -216(%rbp)
movq $16, %r11
movq %r11, -240(%rbp)
movq -240(%rbp), %r13
movq -248(%rbp), %r10
addq %r13, %r12
movq %r12, -248(%rbp)
movq -216(%rbp), %r10
movq -248(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
jmp L3
L4:
addq $280, %rsp
popq %rbp
ret


.size g, .-g
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp
L7:
movq $9, %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rsi
movq $4, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq %r13, %rdi
callq g
movq %rax, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rdi
callq printi
jmp L6
L6:
addq $48, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
