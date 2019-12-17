.text
.globl check
.type check, @function
check:
pushq %rbp
movq %rsp, %rbp
subq $248, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L19:
movq -48(%rbp), %r10
movq $1, %r10
movq %r10, -48(%rbp)
movq %rbp, %r10
movq -48(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -48(%rbp)
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
movq %rbp, %r10
movq -72(%rbp), %r11
movq %r11, -40(%r10)
movq %r10, %rbp
movq %r11, -72(%rbp)
movq -80(%rbp), %r10
movq $2, %r10
movq %r10, -80(%rbp)
movq %rbp, %r10
movq -80(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -80(%rbp)
movq -88(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -96(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, -88(%rbp)
movq -104(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, %rbp
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq -96(%rbp), %r10
movq -112(%rbp), %r11
cmpq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, -112(%rbp)
jle L2
L1:
movq -120(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -120(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -120(%rbp)
jmp L18
L2:
movq -128(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
movq -136(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -136(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -128(%rbp)
movq -136(%rbp), %r10
xorq %rdx, %rdx
idivq %r10
movq %r10, -136(%rbp)
movq -144(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, %rax
movq -152(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -152(%rbp)
movq %r11, %rbp
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
movq -168(%rbp), %r10
movq -160(%rbp), %r11
movq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -160(%rbp)
movq -176(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -176(%rbp)
movq %r11, %rbp
movq -184(%rbp), %r10
movq -176(%rbp), %r11
movq %r11, %r10
movq %r10, -184(%rbp)
movq %r11, -176(%rbp)
movq -168(%rbp), %r10
movq -184(%rbp), %r11
cmpq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -184(%rbp)
je L4
L5:
movq -192(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -192(%rbp)
movq %r11, %rbp
movq -200(%rbp), %r10
movq -192(%rbp), %r11
movq %r11, %r10
movq %r10, -200(%rbp)
movq %r11, -192(%rbp)
movq -208(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -208(%rbp)
movq %r11, %rbp
movq -216(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -208(%rbp)
movq -200(%rbp), %r10
movq -216(%rbp), %r11
cmpq %r11, %r10
movq %r10, -200(%rbp)
movq %r11, -216(%rbp)
jge L1
L3:
movq -224(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -224(%rbp)
movq %r11, %rbp
movq -232(%rbp), %r10
movq -224(%rbp), %r11
movq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, -224(%rbp)
movq -240(%rbp), %r10
movq $1, %r10
movq %r10, -240(%rbp)
movq -232(%rbp), %r10
movq -240(%rbp), %r11
addq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, -240(%rbp)
movq %rbp, %r10
movq -232(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -232(%rbp)
jmp L2
L4:
movq -248(%rbp), %r10
movq $0, %r10
movq %r10, -248(%rbp)
movq %rbp, %r10
movq -248(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -248(%rbp)
jmp L1
L18:
addq $248, %rsp
popq %rbp
ret


.size check, .-check
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $272, %rsp
movq %rdi, -8(%rbp)
L21:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -16(%rbp), %r10
movq $56, %r10
movq %r10, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %rdi
movq %r10, -16(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
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
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -32(%rbp), %r10
leaq L7(%rip), %r10
movq %r10, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, %rdi
movq %r10, -32(%rbp)
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
movq -40(%rbp), %r10
movq $23, %r10
movq %r10, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rdi
movq %r10, -40(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -48(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
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
leaq L8(%rip), %r10
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
movq $71, %r10
movq %r10, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
movq %r10, -64(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -72(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -72(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -72(%rbp), %r10
movq %r10, %rdi
movq %r10, -72(%rbp)
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
leaq -80(%rbp), %r10
leaq L9(%rip), %r10
movq %r10, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
movq %r10, -80(%rbp)
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
movq -88(%rbp), %r10
movq $72, %r10
movq %r10, -88(%rbp)
movq -88(%rbp), %r10
movq %r10, %rdi
movq %r10, -88(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -96(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
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
leaq -104(%rbp), %r10
leaq L10(%rip), %r10
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
movq $173, %r10
movq %r10, -112(%rbp)
movq -112(%rbp), %r10
movq %r10, %rdi
movq %r10, -112(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -120(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -120(%rbp), %r10
movq %r10, %rdi
movq %r10, -120(%rbp)
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
leaq -128(%rbp), %r10
leaq L11(%rip), %r10
movq %r10, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %rdi
movq %r10, -128(%rbp)
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
movq -136(%rbp), %r10
movq $181, %r10
movq %r10, -136(%rbp)
movq -136(%rbp), %r10
movq %r10, %rdi
movq %r10, -136(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -144(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -144(%rbp), %r10
movq %r10, %rdi
movq %r10, -144(%rbp)
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
leaq -152(%rbp), %r10
leaq L12(%rip), %r10
movq %r10, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %rdi
movq %r10, -152(%rbp)
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
movq -160(%rbp), %r10
movq $281, %r10
movq %r10, -160(%rbp)
movq -160(%rbp), %r10
movq %r10, %rdi
movq %r10, -160(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -168(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -168(%rbp), %r10
movq %r10, %rdi
movq %r10, -168(%rbp)
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
leaq -176(%rbp), %r10
leaq L13(%rip), %r10
movq %r10, -176(%rbp)
movq -176(%rbp), %r10
movq %r10, %rdi
movq %r10, -176(%rbp)
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
movq -184(%rbp), %r10
movq $659, %r10
movq %r10, -184(%rbp)
movq -184(%rbp), %r10
movq %r10, %rdi
movq %r10, -184(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -192(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -192(%rbp), %r10
movq %r10, %rdi
movq %r10, -192(%rbp)
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
leaq -200(%rbp), %r10
leaq L14(%rip), %r10
movq %r10, -200(%rbp)
movq -200(%rbp), %r10
movq %r10, %rdi
movq %r10, -200(%rbp)
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
movq -208(%rbp), %r10
movq $729, %r10
movq %r10, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, %rdi
movq %r10, -208(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -216(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -216(%rbp), %r10
movq %r10, %rdi
movq %r10, -216(%rbp)
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
leaq -224(%rbp), %r10
leaq L15(%rip), %r10
movq %r10, -224(%rbp)
movq -224(%rbp), %r10
movq %r10, %rdi
movq %r10, -224(%rbp)
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
movq -232(%rbp), %r10
movq $947, %r10
movq %r10, -232(%rbp)
movq -232(%rbp), %r10
movq %r10, %rdi
movq %r10, -232(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -240(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -240(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -240(%rbp), %r10
movq %r10, %rdi
movq %r10, -240(%rbp)
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
leaq -248(%rbp), %r10
leaq L16(%rip), %r10
movq %r10, -248(%rbp)
movq -248(%rbp), %r10
movq %r10, %rdi
movq %r10, -248(%rbp)
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
movq -256(%rbp), %r10
movq $945, %r10
movq %r10, -256(%rbp)
movq -256(%rbp), %r10
movq %r10, %rdi
movq %r10, -256(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -264(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -264(%rbp), %r10
movq %r10, %rdi
movq %r10, -264(%rbp)
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
leaq -272(%rbp), %r10
leaq L17(%rip), %r10
movq %r10, -272(%rbp)
movq -272(%rbp), %r10
movq %r10, %rdi
movq %r10, -272(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L20
L20:
addq $272, %rsp
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
L23:
movq %rbp, %rdi
pushq %r10
pushq %r11
callq try
popq %r11
popq %r10
jmp L22
L22:
addq $0, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L7:
.long 1
.string "\n"
L8:
.long 1
.string "\n"
L9:
.long 1
.string "\n"
L10:
.long 1
.string "\n"
L11:
.long 1
.string "\n"
L12:
.long 1
.string "\n"
L13:
.long 1
.string "\n"
L14:
.long 1
.string "\n"
L15:
.long 1
.string "\n"
L16:
.long 1
.string "\n"
L17:
.long 1
.string "\n"
