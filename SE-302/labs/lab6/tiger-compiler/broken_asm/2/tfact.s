.text
.globl nfactor
.type nfactor, @function

nfactor:
pushq %rbp
movq %rsp, %rbp
subq $112, %rsp
L5:
movq 8(%rbp), %r11
movq %r11, -112(%rbp)
movq -104(%rbp), %r10
movq -112(%rbp), %r13
cmpq %r10, %r13
je L1
L2:
movq -88(%rbp), %r13
movq -96(%rbp), %r10
addq %r13, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r13
movq %r13, %r11
movq %r11, -80(%rbp)
movq 8(%rbp), %r12
movq %r12, -72(%rbp)
movq -72(%rbp), %r10
movq %r10, %r11
movq %r11, -64(%rbp)
movq 8(%rbp), %r12
movq %r12, -56(%rbp)
movq -40(%rbp), %r13
movq -48(%rbp), %r10
subq %r13, %r11
movq %r11, -48(%rbp)
callq nfactor
movq %rax, %r12
movq %r12, -32(%rbp)
movq -64(%rbp), %r13
movq %rax, %r13
movq -32(%rbp), %r10
imulq %r10
movq %r11, %rax
movq %r11, -24(%rbp)
movq -24(%rbp), %r13
movq -80(%rbp), %r13
movq %r13, (%r13)
L3:
jmp L4
L1:
movq -16(%rbp), %r10
movq -80(%rbp), %r10
movq %r10, (%r10)
jmp L3
L4:
addq $112, %rsp
popq %rbp
ret


.size nfactor, .-nfactor
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp
L7:
callq nfactor
movq %rax, %r12
movq %r12, -8(%rbp)
callq printi
jmp L6
L6:
addq $8, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
