.text
.globl dec2bin
.type dec2bin, @function
dec2bin:
pushq %rbp
movq %rsp, %rbp
subq $128, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L13:
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
jg L1
L2:
jmp L12
L1:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -56(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq $2, %r10
movq %r10, -64(%rbp)
movq %rax, %r10
movq -56(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -56(%rbp)
movq -64(%rbp), %r10
xorq %rdx, %rdx
idivq %r10
movq %r10, -64(%rbp)
movq -72(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -72(%rbp)
movq %r11, %rax
movq -72(%rbp), %r10
movq %r10, %rdi
movq %r10, -72(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq dec2bin
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -80(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq -80(%rbp), %r11
movq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -80(%rbp)
movq -96(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, %rbp
movq -104(%rbp), %r10
movq $2, %r10
movq %r10, -104(%rbp)
movq %rax, %r10
movq -96(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -96(%rbp)
movq -104(%rbp), %r10
xorq %rdx, %rdx
idivq %r10
movq %r10, -104(%rbp)
movq -112(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, %rax
movq -120(%rbp), %r10
movq $2, %r10
movq %r10, -120(%rbp)
movq %rax, %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -112(%rbp)
movq -120(%rbp), %r10
imulq %r10
movq %r10, -120(%rbp)
movq -128(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -128(%rbp)
movq %r11, %rax
movq -88(%rbp), %r10
movq -128(%rbp), %r11
subq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -128(%rbp)
movq -88(%rbp), %r10
movq %r10, %rdi
movq %r10, -88(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L2
L12:
addq $128, %rsp
popq %rbp
ret


.size dec2bin, .-dec2bin
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $136, %rsp
movq %rdi, -8(%rbp)
L15:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -16(%rbp), %r10
movq $100, %r10
movq %r10, -16(%rbp)
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
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -24(%rbp), %r10
leaq L4(%rip), %r10
movq %r10, -24(%rbp)
movq -24(%rbp), %r10
movq %r10, %rdi
movq %r10, -24(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -32(%rbp), %r10
movq $100, %r10
movq %r10, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, %rdi
movq %r10, -32(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq dec2bin
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -40(%rbp), %r10
leaq L5(%rip), %r10
movq %r10, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rdi
movq %r10, -40(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -48(%rbp), %r10
movq $200, %r10
movq %r10, -48(%rbp)
movq -48(%rbp), %r10
movq %r10, %rdi
movq %r10, -48(%rbp)
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
leaq -56(%rbp), %r10
leaq L6(%rip), %r10
movq %r10, -56(%rbp)
movq -56(%rbp), %r10
movq %r10, %rdi
movq %r10, -56(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -64(%rbp), %r10
movq $200, %r10
movq %r10, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
movq %r10, -64(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq dec2bin
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -72(%rbp), %r10
leaq L7(%rip), %r10
movq %r10, -72(%rbp)
movq -72(%rbp), %r10
movq %r10, %rdi
movq %r10, -72(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -80(%rbp), %r10
movq $789, %r10
movq %r10, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
movq %r10, -80(%rbp)
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
leaq -88(%rbp), %r10
leaq L8(%rip), %r10
movq %r10, -88(%rbp)
movq -88(%rbp), %r10
movq %r10, %rdi
movq %r10, -88(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -96(%rbp), %r10
movq $789, %r10
movq %r10, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %rdi
movq %r10, -96(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq dec2bin
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -104(%rbp), %r10
leaq L9(%rip), %r10
movq %r10, -104(%rbp)
movq -104(%rbp), %r10
movq %r10, %rdi
movq %r10, -104(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -112(%rbp), %r10
movq $567, %r10
movq %r10, -112(%rbp)
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
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -120(%rbp), %r10
leaq L10(%rip), %r10
movq %r10, -120(%rbp)
movq -120(%rbp), %r10
movq %r10, %rdi
movq %r10, -120(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -128(%rbp), %r10
movq $567, %r10
movq %r10, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %rdi
movq %r10, -128(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq dec2bin
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -136(%rbp), %r10
leaq L11(%rip), %r10
movq %r10, -136(%rbp)
movq -136(%rbp), %r10
movq %r10, %rdi
movq %r10, -136(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L14
L14:
addq $136, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $0, %rsp
movq %rdi, -8(%rbp)
L17:
movq %rbp, %rdi
pushq %r10
pushq %r11
callq try
popq %r11
popq %r10
jmp L16
L16:
addq $0, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L4:
.long 4
.string "\t->\t"
L5:
.long 1
.string "\n"
L6:
.long 4
.string "\t->\t"
L7:
.long 1
.string "\n"
L8:
.long 4
.string "\t->\t"
L9:
.long 1
.string "\n"
L10:
.long 4
.string "\t->\t"
L11:
.long 1
.string "\n"
