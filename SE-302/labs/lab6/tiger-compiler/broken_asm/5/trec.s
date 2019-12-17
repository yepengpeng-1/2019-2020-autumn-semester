.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $112, %rsp
movq %rdi, -8(%rbp)
L2:
movq -24(%rbp), %r10
leaq -8(%rbp), %r10
movq %r10, -24(%rbp)
movq -32(%rbp), %r10
leaq -16(%rbp), %r10
movq %r10, -32(%rbp)
movq -40(%rbp), %r10
movq $16, %r10
movq %r10, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rdi
movq %r10, -40(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq allocRecord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -48(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, %rax
movq -32(%rbp), %r10
movq -48(%rbp), %r11
movq %r11, (%r10)
movq %r10, -32(%rbp)
movq %r11, -48(%rbp)
movq -56(%rbp), %r10
movq -32(%rbp), %r11
movq (%r11), %r10
movq %r10, -56(%rbp)
movq %r11, -32(%rbp)
movq -64(%rbp), %r10
movq $3, %r10
movq %r10, -64(%rbp)
movq -56(%rbp), %r10
movq -64(%rbp), %r11
movq %r11, 0(%r10)
movq %r10, -56(%rbp)
movq %r11, -64(%rbp)
movq -72(%rbp), %r10
movq -32(%rbp), %r11
movq (%r11), %r10
movq %r10, -72(%rbp)
movq %r11, -32(%rbp)
movq -80(%rbp), %r10
movq $4, %r10
movq %r10, -80(%rbp)
movq -72(%rbp), %r10
movq -80(%rbp), %r11
movq %r11, 8(%r10)
movq %r10, -72(%rbp)
movq %r11, -80(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r11
movq (%r11), %r13
movq %r13, (%r10)
movq %r10, -24(%rbp)
movq %r11, -32(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -88(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -96(%rbp), %r10
movq -88(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, -88(%rbp)
movq -96(%rbp), %r10
movq %r10, %rdi
movq %r10, -96(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -104(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, %rbp
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq 8(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq -112(%rbp), %r10
movq %r10, %rdi
movq %r10, -112(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L1
L1:
addq $112, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
