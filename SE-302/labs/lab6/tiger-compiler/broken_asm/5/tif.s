.text
.globl g
.type g, @function
g:
pushq %rbp
movq %rsp, %rbp
subq $72, %rsp
movq %rdx, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rdi, -24(%rbp)
L5:
movq -32(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -32(%rbp)
movq %r11, %rbp
movq -40(%rbp), %r10
movq -32(%rbp), %r11
movq %r11, %r10
movq %r10, -40(%rbp)
movq %r11, -32(%rbp)
movq -48(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, %rbp
movq -56(%rbp), %r10
movq -48(%rbp), %r11
movq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, -48(%rbp)
movq -40(%rbp), %r10
movq -56(%rbp), %r11
cmpq %r11, %r10
movq %r10, -40(%rbp)
movq %r11, -56(%rbp)
jg L1
L2:
movq -64(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -64(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -64(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -64(%rbp)
L3:
jmp L4
L1:
movq -72(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -72(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -72(%rbp)
jmp L3
L4:
addq $72, %rsp
popq %rbp
ret


.size g, .-g
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $24, %rsp
movq %rdi, -8(%rbp)
L7:
movq %rbp, %r10
movq %r10, %rdx
movq %r10, %rbp
movq -8(%rbp), %r10
movq $4, %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rsi
movq %r10, -8(%rbp)
movq -16(%rbp), %r10
movq $9, %r10
movq %r10, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %rdi
movq %r10, -16(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq g
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -24(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -24(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -24(%rbp), %r10
movq %r10, %rdi
movq %r10, -24(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L6
L6:
addq $24, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
