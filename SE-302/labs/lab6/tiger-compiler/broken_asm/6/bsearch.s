.text
.globl nop
.type nop, @function
nop:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %rdi, -8(%rbp)
L13:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -16(%rbp), %r10
leaq L1(%rip), %r10
movq %r10, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %rdi
movq %r10, -16(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L12
L12:
addq $16, %rsp
popq %rbp
ret


.size nop, .-nop
.globl init
.type init, @function
init:
pushq %rbp
movq %rsp, %rbp
subq $256, %rsp
movq %rdi, -8(%rbp)
L15:
movq -32(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -32(%rbp)
movq %r11, %rbp
movq -40(%rbp), %r10
movq -32(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -40(%rbp)
movq %r11, -32(%rbp)
movq -48(%rbp), %r10
movq -40(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -56(%rbp), %r10
movq -48(%rbp), %r11
movq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, -48(%rbp)
movq -64(%rbp), %r10
movq $1, %r10
movq %r10, -64(%rbp)
movq -56(%rbp), %r10
movq -64(%rbp), %r11
subq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, -64(%rbp)
movq %rbp, %r10
movq -56(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -56(%rbp)
movq -72(%rbp), %r10
movq $0, %r10
movq %r10, -72(%rbp)
movq %rbp, %r10
movq -72(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -72(%rbp)
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
movq -24(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, %rbp
movq -104(%rbp), %r10
movq -96(%rbp), %r11
movq %r11, %r10
movq %r10, -104(%rbp)
movq %r11, -96(%rbp)
movq -88(%rbp), %r10
movq -104(%rbp), %r11
cmpq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -104(%rbp)
jle L3
L2:
jmp L14
L3:
movq -112(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, %rbp
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -128(%rbp), %r10
movq -120(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, -120(%rbp)
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -144(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -144(%rbp)
movq %r11, %rbp
movq -152(%rbp), %r10
movq $8, %r10
movq %r10, -152(%rbp)
movq %rax, %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -144(%rbp)
movq -152(%rbp), %r10
imulq %r10
movq %r10, -152(%rbp)
movq -160(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -160(%rbp)
movq %r11, %rax
movq -136(%rbp), %r10
movq -160(%rbp), %r11
addq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -160(%rbp)
movq -168(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -168(%rbp)
movq %r11, %rbp
movq -176(%rbp), %r10
movq $2, %r10
movq %r10, -176(%rbp)
movq %rax, %r10
movq -168(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -168(%rbp)
movq -176(%rbp), %r10
imulq %r10
movq %r10, -176(%rbp)
movq -184(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -184(%rbp)
movq %r11, %rax
movq -192(%rbp), %r10
movq -184(%rbp), %r11
movq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, -184(%rbp)
movq -200(%rbp), %r10
movq $1, %r10
movq %r10, -200(%rbp)
movq -192(%rbp), %r10
movq -200(%rbp), %r11
addq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, -200(%rbp)
movq -136(%rbp), %r10
movq -192(%rbp), %r11
movq %r11, (%r10)
movq %r10, -136(%rbp)
movq %r11, -192(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq nop
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -208(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -208(%rbp)
movq %r11, %rbp
movq -216(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -208(%rbp)
movq -224(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -224(%rbp)
movq %r11, %rbp
movq -232(%rbp), %r10
movq -224(%rbp), %r11
movq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, -224(%rbp)
movq -216(%rbp), %r10
movq -232(%rbp), %r11
cmpq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -232(%rbp)
jge L2
L4:
movq -240(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -240(%rbp)
movq %r11, %rbp
movq -248(%rbp), %r10
movq -240(%rbp), %r11
movq %r11, %r10
movq %r10, -248(%rbp)
movq %r11, -240(%rbp)
movq -256(%rbp), %r10
movq $1, %r10
movq %r10, -256(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r11
addq %r11, %r10
movq %r10, -248(%rbp)
movq %r11, -256(%rbp)
movq %rbp, %r10
movq -248(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -248(%rbp)
jmp L3
L14:
addq $256, %rsp
popq %rbp
ret


.size init, .-init
.globl bsearch
.type bsearch, @function
bsearch:
pushq %rbp
movq %rsp, %rbp
subq $264, %rsp
movq %rcx, -8(%rbp)
movq %rdx, -16(%rbp)
movq %rsi, -24(%rbp)
movq %rdi, -32(%rbp)
L17:
movq -48(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, %rbp
movq -56(%rbp), %r10
movq -48(%rbp), %r11
movq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, -48(%rbp)
movq -64(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -64(%rbp)
movq %r11, %rbp
movq -72(%rbp), %r10
movq -64(%rbp), %r11
movq %r11, %r10
movq %r10, -72(%rbp)
movq %r11, -64(%rbp)
movq -56(%rbp), %r10
movq -72(%rbp), %r11
cmpq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, -72(%rbp)
je L8
L9:
movq -80(%rbp), %r10
movq -16(%rbp), %r10
movq %r10, -80(%rbp)
movq -80(%rbp), %r10
movq %rbp, %r11
addq -24(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq $2, %r10
movq %r10, -88(%rbp)
movq %rax, %r10
movq -80(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -80(%rbp)
movq -88(%rbp), %r10
xorq %rdx, %rdx
idivq %r10
movq %r10, -88(%rbp)
movq -96(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq -96(%rbp), %r11
movq %r11, -40(%r10)
movq %r10, %rbp
movq %r11, -96(%rbp)
movq -104(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, %rbp
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -128(%rbp), %r10
movq -120(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, -120(%rbp)
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -144(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -144(%rbp)
movq %r11, %rbp
movq -152(%rbp), %r10
movq $8, %r10
movq %r10, -152(%rbp)
movq %rax, %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -144(%rbp)
movq -152(%rbp), %r10
imulq %r10
movq %r10, -152(%rbp)
movq -160(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -160(%rbp)
movq %r11, %rax
movq -136(%rbp), %r10
movq -160(%rbp), %r11
addq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -160(%rbp)
movq -168(%rbp), %r10
movq -136(%rbp), %r11
movq (%r11), %r10
movq %r10, -168(%rbp)
movq %r11, -136(%rbp)
movq -176(%rbp), %r10
movq -168(%rbp), %r11
movq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -168(%rbp)
movq -184(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -184(%rbp)
movq %r11, %rbp
movq -192(%rbp), %r10
movq -184(%rbp), %r11
movq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, -184(%rbp)
movq -176(%rbp), %r10
movq -192(%rbp), %r11
cmpq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -192(%rbp)
jl L5
L6:
movq %rbp, %r10
movq %r10, %rcx
movq %r10, %rbp
movq -200(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, %rbp
movq -200(%rbp), %r10
movq %r10, %rdx
movq %r10, -200(%rbp)
movq -208(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -208(%rbp)
movq %r11, %rbp
movq -208(%rbp), %r10
movq %r10, %rsi
movq %r10, -208(%rbp)
movq -216(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -216(%rbp)
movq %r11, %rbp
movq -216(%rbp), %r10
movq %r10, %rdi
movq %r10, -216(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq bsearch
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
L7:
L10:
jmp L16
L8:
movq -224(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -224(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -224(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -224(%rbp)
jmp L10
L5:
movq %rbp, %r10
movq %r10, %rcx
movq %r10, %rbp
movq -232(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -232(%rbp)
movq %r11, %rbp
movq -232(%rbp), %r10
movq %r10, %rdx
movq %r10, -232(%rbp)
movq -240(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -240(%rbp)
movq %r11, %rbp
movq -240(%rbp), %r10
movq %r10, %rsi
movq %r10, -240(%rbp)
movq -248(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -248(%rbp)
movq %r11, %rbp
movq -256(%rbp), %r10
movq -248(%rbp), %r11
movq %r11, %r10
movq %r10, -256(%rbp)
movq %r11, -248(%rbp)
movq -264(%rbp), %r10
movq $1, %r10
movq %r10, -264(%rbp)
movq -256(%rbp), %r10
movq -264(%rbp), %r11
addq %r11, %r10
movq %r10, -256(%rbp)
movq %r11, -264(%rbp)
movq -256(%rbp), %r10
movq %r10, %rdi
movq %r10, -256(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq bsearch
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L7
L16:
addq $264, %rsp
popq %rbp
ret


.size bsearch, .-bsearch
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $96, %rsp
movq %rdi, -8(%rbp)
L19:
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq init
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rcx
movq %r10, %rbp
movq -16(%rbp), %r10
movq $7, %r10
movq %r10, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %rdx
movq %r10, -16(%rbp)
movq -24(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -24(%rbp)
movq %r11, %rbp
movq -32(%rbp), %r10
movq -24(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -32(%rbp)
movq %r11, -24(%rbp)
movq -40(%rbp), %r10
movq -32(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -40(%rbp)
movq %r11, -32(%rbp)
movq -48(%rbp), %r10
movq -40(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -56(%rbp), %r10
movq -48(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, -48(%rbp)
movq -64(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -56(%rbp)
movq -72(%rbp), %r10
movq $1, %r10
movq %r10, -72(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r11
subq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -72(%rbp)
movq -64(%rbp), %r10
movq %r10, %rsi
movq %r10, -64(%rbp)
movq -80(%rbp), %r10
movq $0, %r10
movq %r10, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
movq %r10, -80(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq bsearch
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -88(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
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
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -96(%rbp), %r10
leaq L11(%rip), %r10
movq %r10, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %rdi
movq %r10, -96(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L18
L18:
addq $96, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $56, %rsp
movq %rdi, -8(%rbp)
L21:
movq -24(%rbp), %r10
movq $16, %r10
movq %r10, -24(%rbp)
movq %rbp, %r10
movq -24(%rbp), %r11
movq %r11, -8(%r10)
movq %r10, %rbp
movq %r11, -24(%rbp)
movq -32(%rbp), %r10
leaq -16(%rbp), %r10
movq %r10, -32(%rbp)
movq -40(%rbp), %r10
movq $0, %r10
movq %r10, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rsi
movq %r10, -40(%rbp)
movq -48(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, %rbp
movq -48(%rbp), %r10
movq %r10, %rdi
movq %r10, -48(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq initArray
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -56(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, %rax
movq -32(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, (%r10)
movq %r10, -32(%rbp)
movq %r11, -56(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq try
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L20
L20:
addq $56, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L1:
.long 0
.string ""
L11:
.long 1
.string "\n"
