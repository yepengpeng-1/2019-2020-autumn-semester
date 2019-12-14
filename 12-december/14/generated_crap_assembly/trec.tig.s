.text
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $128, %rsp
L2:
movq -120(%rbp), %r10
movq -128(%rbp), %r10
addq %r10, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %r11
movq %r11, -112(%rbp)
movq -96(%rbp), %r10
movq -104(%rbp), %r10
addq %r10, %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r10
movq %r10, %r12
movq %r12, -88(%rbp)
callq allocRecord
movq %rax, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r13
movq %r13, (%r13)
movq -88(%rbp), %r13
movq (%r13), %r12
movq %r12, -72(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r10
movq %r10, 8(%r10)
movq -88(%rbp), %r10
movq -112(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
movq -8(%rbp), %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r13
movq 0(%r13), %r11
movq %r11, -48(%rbp)
callq printi
movq -8(%rbp), %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -32(%rbp)
callq printi
jmp L1
L1:
addq $128, %rsp
ret


.size tigermain, .-tigermain
.section .rodata
