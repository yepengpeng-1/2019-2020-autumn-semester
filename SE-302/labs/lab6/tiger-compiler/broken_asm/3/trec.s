.text
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $136, %rsp
L2:
movq -128(%rbp), %r13
movq -136(%rbp), %r10
addq %r13, %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r13
movq %r13, %r11
movq %r11, -120(%rbp)
movq -104(%rbp), %r13
movq -112(%rbp), %r10
addq %r13, %r12
movq %r12, -112(%rbp)
movq -112(%rbp), %r13
movq %r13, %r11
movq %r11, -96(%rbp)
movq -88(%rbp), %r13
movq %r13, %rdi
callq allocRecord
movq %rax, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq -96(%rbp), %r10
movq %r10, (%r10)
movq -96(%rbp), %r13
movq (%r13), %r11
movq %r11, -72(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r13
movq %r10, 8(%r13)
movq -96(%rbp), %r10
movq -120(%rbp), %r10
movq -8(%rbp), %r12
movq %r12, -56(%rbp)
movq -56(%rbp), %r13
movq 0(%r13), %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r10
movq %r10, %rdi
callq printi
movq -8(%rbp), %r12
movq %r12, -40(%rbp)
movq -40(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, %rdi
callq printi
jmp L1
L1:
addq $136, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
