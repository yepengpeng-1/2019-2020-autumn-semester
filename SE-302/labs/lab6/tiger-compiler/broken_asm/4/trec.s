.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $456, %rsp
L2:
movq $-24, %r11
movq %r11, -32(%rbp)
movq -32(%rbp), %r10
movq -40(%rbp), %r13
addq %r10, %r12
movq %r12, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %r11
movq %r11, -64(%rbp)
movq $-16, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq -88(%rbp), %r13
addq %r10, %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r10
movq %r10, %r12
movq %r12, -112(%rbp)
movq $16, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %rdi
callq allocRecord
movq %rax, %r12
movq %r12, -144(%rbp)
movq -112(%rbp), %r13
movq -144(%rbp), %r13
movq (%r13), %r13
movq -112(%rbp), %r10
movq (%r10), %r11
movq %r11, -168(%rbp)
movq $8, %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r10
movq -192(%rbp), %r13
addq %r10, %r11
movq %r11, -192(%rbp)
movq $3, %r12
movq %r12, -216(%rbp)
movq -192(%rbp), %r10
movq -216(%rbp), %r13
movq (%r10), %r13
movq -64(%rbp), %r13
movq -112(%rbp), %r13
movq $-8, %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r10
movq -264(%rbp), %r13
addq %r10, %r12
movq %r12, -264(%rbp)
movq -264(%rbp), %r10
movq (%r10), %r11
movq %r11, -288(%rbp)
movq $0, %r12
movq %r12, -304(%rbp)
movq -304(%rbp), %r13
movq -312(%rbp), %r10
addq %r13, %r11
movq %r11, -312(%rbp)
movq -312(%rbp), %r13
movq (%r13), %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r10
movq %r10, %rdi
callq printi
movq $-8, %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r13
movq -368(%rbp), %r10
addq %r13, %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r13
movq (%r13), %r11
movq %r11, -392(%rbp)
movq $8, %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r10
movq -416(%rbp), %r13
addq %r10, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r10
movq (%r10), %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r13
movq %r13, %rdi
callq printi
jmp L1
L1:
addq $456, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
