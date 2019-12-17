.text
.globl nfactor
.type nfactor, @function
nfactor:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $352, %rsp
L5:
movq $8, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq -24(%rbp), %r13
addq %r10, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r10
movq (%r10), %r11
movq %r11, -48(%rbp)
movq $0, %r12
movq %r12, -64(%rbp)
movq -48(%rbp), %r13
movq -64(%rbp), %r10
cmpq %r10, %r13
je L1
L2:
movq $-8, %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r13
movq -96(%rbp), %r10
addq %r13, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r13
movq %r13, %r11
movq %r11, -120(%rbp)
movq $8, %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r10
movq -144(%rbp), %r13
addq %r10, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r10
movq (%r10), %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r13
movq %r13, %r11
movq %r11, -184(%rbp)
movq $8, %r12
movq %r12, -200(%rbp)
movq -200(%rbp), %r13
movq -208(%rbp), %r10
addq %r13, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq (%r13), %r12
movq %r12, -232(%rbp)
movq $1, %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r13
subq %r10, %r12
movq %r12, -256(%rbp)
movq -256(%rbp), %r10
movq %r10, %rdi
callq nfactor
movq %rax, %r11
movq %r11, -288(%rbp)
movq -184(%rbp), %r10
movq %r10, %rax
movq -288(%rbp), %r13
imulq %r13
movq %rax, %r12
movq %r12, -312(%rbp)
movq -120(%rbp), %r10
movq -312(%rbp), %r10
movq (%r10), %r10
L3:
jmp L4
L1:
movq $1, %r11
movq %r11, -336(%rbp)
movq -120(%rbp), %r13
movq -336(%rbp), %r13
movq (%r13), %r13
jmp L3
L4:
addq $352, %rsp
popq %rbp
ret


.size nfactor, .-nfactor
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp
L7:
movq $10, %r12
movq %r12, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rdi
callq nfactor
movq %rax, %r11
movq %r11, -24(%rbp)
movq -24(%rbp), %r13
movq %r13, %rdi
callq printi
jmp L6
L6:
addq $32, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
