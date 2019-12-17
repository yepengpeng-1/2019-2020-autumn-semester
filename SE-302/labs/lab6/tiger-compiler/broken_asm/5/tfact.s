.text
.globl nfactor
.type nfactor, @function
nfactor:
pushq %rbp
movq %rsp, %rbp
subq $112, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L5:
movq -24(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -24(%rbp)
movq %r11, %rbp
movq -32(%rbp), %r10
movq -24(%rbp), %r11
movq %r11, %r10
movq %r10, -32(%rbp)
movq %r11, -24(%rbp)
movq -40(%rbp), %r10
movq $0, %r10
movq %r10, -40(%rbp)
movq -48(%rbp), %r10
movq -40(%rbp), %r11
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -32(%rbp), %r10
movq -48(%rbp), %r11
cmpq %r11, %r10
movq %r10, -32(%rbp)
movq %r11, -48(%rbp)
je L1
L2:
movq -56(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -56(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -72(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -72(%rbp)
movq %r11, %rbp
movq -80(%rbp), %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -72(%rbp)
movq -88(%rbp), %r10
movq $1, %r10
movq %r10, -88(%rbp)
movq -80(%rbp), %r10
movq -88(%rbp), %r11
subq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -88(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
movq %r10, -80(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq nfactor
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -96(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, %rax
movq %rax, %r10
movq -64(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -64(%rbp)
movq -96(%rbp), %r10
imulq %r10
movq %r10, -96(%rbp)
movq -104(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -104(%rbp)
movq %r11, %rax
movq %rax, %r10
movq -104(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -104(%rbp)
L3:
jmp L4
L1:
movq -112(%rbp), %r10
movq $1, %r10
movq %r10, -112(%rbp)
movq %rax, %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -112(%rbp)
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
subq $16, %rsp
movq %rdi, -8(%rbp)
L7:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -8(%rbp), %r10
movq $10, %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rdi
movq %r10, -8(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq nfactor
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -16(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -16(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -16(%rbp), %r10
movq %r10, %rdi
movq %r10, -16(%rbp)
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
addq $16, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
