.text
.globl isdigit
.type isdigit, @function
isdigit:
pushq %rbp
movq %rsp, %rbp
subq $192, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L52:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
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
movq -40(%rbp), %r10
movq %r10, %rdi
movq %r10, -40(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -48(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, %rax
movq -56(%rbp), %r10
movq -48(%rbp), %r11
movq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, -48(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -64(%rbp), %r10
leaq L1(%rip), %r10
movq %r10, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
movq %r10, -64(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -72(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -72(%rbp)
movq %r11, %rax
movq -80(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -56(%rbp)
movq -88(%rbp), %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -72(%rbp)
movq -80(%rbp), %r10
movq -88(%rbp), %r11
cmpq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -88(%rbp)
jge L3
L4:
movq -96(%rbp), %r10
movq $0, %r10
movq %r10, -96(%rbp)
movq %rax, %r10
movq -96(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -96(%rbp)
L5:
jmp L51
L3:
movq -104(%rbp), %r10
movq $1, %r10
movq %r10, -104(%rbp)
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -120(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, %rbp
movq -128(%rbp), %r10
movq -120(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, -120(%rbp)
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -136(%rbp), %r10
movq %r10, %rdi
movq %r10, -136(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -144(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, %rax
movq -152(%rbp), %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, -144(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -160(%rbp), %r10
leaq L2(%rip), %r10
movq %r10, -160(%rbp)
movq -160(%rbp), %r10
movq %r10, %rdi
movq %r10, -160(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -168(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, %rax
movq -176(%rbp), %r10
movq -152(%rbp), %r11
movq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -152(%rbp)
movq -184(%rbp), %r10
movq -168(%rbp), %r11
movq %r11, %r10
movq %r10, -184(%rbp)
movq %r11, -168(%rbp)
movq -176(%rbp), %r10
movq -184(%rbp), %r11
cmpq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -184(%rbp)
jle L6
L7:
movq -192(%rbp), %r10
movq $0, %r10
movq %r10, -192(%rbp)
movq -112(%rbp), %r10
movq -192(%rbp), %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, -192(%rbp)
L6:
movq %rax, %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -112(%rbp)
jmp L5
L51:
addq $192, %rsp
popq %rbp
ret


.size isdigit, .-isdigit
.globl skipto
.type skipto, @function
skipto:
pushq %rbp
movq %rsp, %rbp
subq $232, %rsp
movq %rdi, -8(%rbp)
L15:
movq -16(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -16(%rbp)
movq %r11, %rbp
movq -24(%rbp), %r10
movq -16(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -24(%rbp)
movq %r11, -16(%rbp)
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
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
leaq -56(%rbp), %r10
leaq L8(%rip), %r10
movq %r10, -56(%rbp)
movq -64(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -56(%rbp)
movq -48(%rbp), %r10
movq -64(%rbp), %r11
cmpq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -64(%rbp)
je L10
L11:
movq -72(%rbp), %r10
movq $1, %r10
movq %r10, -72(%rbp)
movq -80(%rbp), %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -72(%rbp)
movq -88(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -96(%rbp), %r10
movq -88(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, -88(%rbp)
movq -104(%rbp), %r10
movq -96(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, -96(%rbp)
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
leaq -128(%rbp), %r10
leaq L9(%rip), %r10
movq %r10, -128(%rbp)
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -120(%rbp), %r10
movq -136(%rbp), %r11
cmpq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -136(%rbp)
je L13
L14:
movq -144(%rbp), %r10
movq $0, %r10
movq %r10, -144(%rbp)
movq -80(%rbp), %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -144(%rbp)
L13:
movq %rax, %r10
movq -80(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -80(%rbp)
L12:
movq -152(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, %rax
movq -160(%rbp), %r10
movq $0, %r10
movq %r10, -160(%rbp)
movq -168(%rbp), %r10
movq -160(%rbp), %r11
movq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -160(%rbp)
movq -152(%rbp), %r10
movq -168(%rbp), %r11
cmpq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, -168(%rbp)
jne L16
L17:
jmp L53
L10:
movq -176(%rbp), %r10
movq $1, %r10
movq %r10, -176(%rbp)
movq %rax, %r10
movq -176(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -176(%rbp)
jmp L12
L16:
movq -184(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -184(%rbp)
movq %r11, %rbp
movq -192(%rbp), %r10
movq -184(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -192(%rbp)
movq %r11, -184(%rbp)
movq -200(%rbp), %r10
movq -192(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, -192(%rbp)
movq -208(%rbp), %r10
movq -200(%rbp), %r11
movq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, -200(%rbp)
movq -216(%rbp), %r10
movq $-8, %r10
movq %r10, -216(%rbp)
movq -208(%rbp), %r10
movq -216(%rbp), %r11
addq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, -216(%rbp)
movq -224(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, %r10
movq %r10, -224(%rbp)
movq %r11, -208(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq __wrap_getchar
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -232(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, %rax
movq -224(%rbp), %r10
movq -232(%rbp), %r11
movq %r11, (%r10)
movq %r10, -224(%rbp)
movq %r11, -232(%rbp)
jmp L15
L53:
addq $232, %rsp
popq %rbp
ret


.size skipto, .-skipto
.globl readint
.type readint, @function
readint:
pushq %rbp
movq %rsp, %rbp
subq $288, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L55:
movq -32(%rbp), %r10
movq $0, %r10
movq %r10, -32(%rbp)
movq %rbp, %r10
movq -32(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -32(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq skipto
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -40(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -40(%rbp)
movq %r11, %rbp
movq -48(%rbp), %r10
movq -40(%rbp), %r11
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -56(%rbp), %r10
movq $0, %r10
movq %r10, -56(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r11
addq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -56(%rbp)
movq -64(%rbp), %r10
movq -48(%rbp), %r11
movq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -48(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -72(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -72(%rbp)
movq %r11, %rbp
movq -80(%rbp), %r10
movq -72(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, -72(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
movq %r10, -80(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq isdigit
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -88(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, %rax
movq -64(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, (%r10)
movq %r10, -64(%rbp)
movq %r11, -88(%rbp)
L18:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -96(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, %rbp
movq -104(%rbp), %r10
movq -96(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, -96(%rbp)
movq -104(%rbp), %r10
movq %r10, %rdi
movq %r10, -104(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq isdigit
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -112(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, %rax
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -128(%rbp), %r10
movq $0, %r10
movq %r10, -128(%rbp)
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -120(%rbp), %r10
movq -136(%rbp), %r11
cmpq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -136(%rbp)
jne L19
L20:
movq -144(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -144(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -144(%rbp)
jmp L54
L19:
movq -152(%rbp), %r10
leaq -24(%rbp), %r10
movq %r10, -152(%rbp)
movq -160(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -160(%rbp)
movq %r11, %rbp
movq -168(%rbp), %r10
movq $10, %r10
movq %r10, -168(%rbp)
movq %rax, %r10
movq -160(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -160(%rbp)
movq -168(%rbp), %r10
imulq %r10
movq %r10, -168(%rbp)
movq -176(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, %rax
movq -184(%rbp), %r10
movq -176(%rbp), %r11
movq %r11, %r10
movq %r10, -184(%rbp)
movq %r11, -176(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -192(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -192(%rbp)
movq %r11, %rbp
movq -200(%rbp), %r10
movq -192(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, -192(%rbp)
movq -200(%rbp), %r10
movq %r10, %rdi
movq %r10, -200(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -208(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, %rax
movq -216(%rbp), %r10
movq -184(%rbp), %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -184(%rbp)
movq -216(%rbp), %r10
movq -208(%rbp), %r11
addq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -208(%rbp)
movq -224(%rbp), %r10
movq -216(%rbp), %r11
movq %r11, %r10
movq %r10, -224(%rbp)
movq %r11, -216(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -232(%rbp), %r10
leaq L21(%rip), %r10
movq %r10, -232(%rbp)
movq -232(%rbp), %r10
movq %r10, %rdi
movq %r10, -232(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -240(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -240(%rbp)
movq %r11, %rax
movq -248(%rbp), %r10
movq -224(%rbp), %r11
movq %r11, %r10
movq %r10, -248(%rbp)
movq %r11, -224(%rbp)
movq -248(%rbp), %r10
movq -240(%rbp), %r11
subq %r11, %r10
movq %r10, -248(%rbp)
movq %r11, -240(%rbp)
movq -152(%rbp), %r10
movq -248(%rbp), %r11
movq %r11, (%r10)
movq %r10, -152(%rbp)
movq %r11, -248(%rbp)
movq -256(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -256(%rbp)
movq %r11, %rbp
movq -264(%rbp), %r10
movq -256(%rbp), %r11
movq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, -256(%rbp)
movq -272(%rbp), %r10
movq $-8, %r10
movq %r10, -272(%rbp)
movq -264(%rbp), %r10
movq -272(%rbp), %r11
addq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, -272(%rbp)
movq -280(%rbp), %r10
movq -264(%rbp), %r11
movq %r11, %r10
movq %r10, -280(%rbp)
movq %r11, -264(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq __wrap_getchar
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -288(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -288(%rbp)
movq %r11, %rax
movq -280(%rbp), %r10
movq -288(%rbp), %r11
movq %r11, (%r10)
movq %r10, -280(%rbp)
movq %r11, -288(%rbp)
jmp L18
L54:
addq $288, %rsp
popq %rbp
ret


.size readint, .-readint
.globl readlist
.type readlist, @function
readlist:
pushq %rbp
movq %rsp, %rbp
subq $248, %rsp
movq %rdi, -8(%rbp)
L57:
movq -48(%rbp), %r10
leaq -16(%rbp), %r10
movq %r10, -48(%rbp)
movq -56(%rbp), %r10
leaq -24(%rbp), %r10
movq %r10, -56(%rbp)
movq -64(%rbp), %r10
movq $8, %r10
movq %r10, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
movq %r10, -64(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq allocRecord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -72(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -72(%rbp)
movq %r11, %rax
movq -56(%rbp), %r10
movq -72(%rbp), %r11
movq %r11, (%r10)
movq %r10, -56(%rbp)
movq %r11, -72(%rbp)
movq -80(%rbp), %r10
movq -56(%rbp), %r11
movq (%r11), %r10
movq %r10, -80(%rbp)
movq %r11, -56(%rbp)
movq -88(%rbp), %r10
movq $0, %r10
movq %r10, -88(%rbp)
movq -80(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, 0(%r10)
movq %r10, -80(%rbp)
movq %r11, -88(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r11
movq (%r11), %r13
movq %r13, (%r10)
movq %r10, -48(%rbp)
movq %r11, -56(%rbp)
movq -96(%rbp), %r10
leaq -32(%rbp), %r10
movq %r10, -96(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -104(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, %rbp
movq -104(%rbp), %r10
movq %r10, %rdi
movq %r10, -104(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq readint
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -112(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, %rax
movq -96(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, (%r10)
movq %r10, -96(%rbp)
movq %r11, -112(%rbp)
movq -120(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, %rbp
movq -128(%rbp), %r10
movq -120(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, -120(%rbp)
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -144(%rbp), %r10
movq $0, %r10
movq %r10, -144(%rbp)
movq -152(%rbp), %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, -144(%rbp)
movq -136(%rbp), %r10
movq -152(%rbp), %r11
cmpq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -152(%rbp)
jne L22
L23:
movq -160(%rbp), %r10
movq $0, %r10
movq %r10, -160(%rbp)
movq %rax, %r10
movq -160(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -160(%rbp)
L24:
jmp L56
L22:
movq -168(%rbp), %r10
leaq -40(%rbp), %r10
movq %r10, -168(%rbp)
movq -176(%rbp), %r10
movq $16, %r10
movq %r10, -176(%rbp)
movq -176(%rbp), %r10
movq %r10, %rdi
movq %r10, -176(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq allocRecord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -184(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -184(%rbp)
movq %r11, %rax
movq -168(%rbp), %r10
movq -184(%rbp), %r11
movq %r11, (%r10)
movq %r10, -168(%rbp)
movq %r11, -184(%rbp)
movq -192(%rbp), %r10
movq -168(%rbp), %r11
movq (%r11), %r10
movq %r10, -192(%rbp)
movq %r11, -168(%rbp)
movq -200(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, %rbp
movq -192(%rbp), %r10
movq -200(%rbp), %r11
movq %r11, 0(%r10)
movq %r10, -192(%rbp)
movq %r11, -200(%rbp)
movq -208(%rbp), %r10
movq -168(%rbp), %r11
movq (%r11), %r10
movq %r10, -208(%rbp)
movq %r11, -168(%rbp)
movq -216(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -208(%rbp)
movq -224(%rbp), %r10
movq $8, %r10
movq %r10, -224(%rbp)
movq -216(%rbp), %r10
movq -224(%rbp), %r11
addq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -224(%rbp)
movq -232(%rbp), %r10
movq -216(%rbp), %r11
movq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, -216(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq readlist
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -240(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -240(%rbp)
movq %r11, %rax
movq -232(%rbp), %r10
movq -240(%rbp), %r11
movq %r11, (%r10)
movq %r10, -232(%rbp)
movq %r11, -240(%rbp)
movq -248(%rbp), %r10
movq -168(%rbp), %r11
movq (%r11), %r10
movq %r10, -248(%rbp)
movq %r11, -168(%rbp)
movq %rax, %r10
movq -248(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -248(%rbp)
jmp L24
L56:
addq $248, %rsp
popq %rbp
ret


.size readlist, .-readlist
.globl merge
.type merge, @function
merge:
pushq %rbp
movq %rsp, %rbp
subq $408, %rsp
movq %rdx, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rdi, -24(%rbp)
L59:
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
movq $0, %r10
movq %r10, -64(%rbp)
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
je L31
L32:
movq -80(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq -80(%rbp), %r11
movq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -80(%rbp)
movq -96(%rbp), %r10
movq $0, %r10
movq %r10, -96(%rbp)
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
je L28
L29:
movq -112(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, %rbp
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -128(%rbp), %r10
movq -120(%rbp), %r11
movq %r11, %r10
movq %r10, -128(%rbp)
movq %r11, -120(%rbp)
movq -136(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -136(%rbp)
movq %r11, %rbp
movq -144(%rbp), %r10
movq -136(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -144(%rbp)
movq %r11, -136(%rbp)
movq -152(%rbp), %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, -144(%rbp)
movq -128(%rbp), %r10
movq -152(%rbp), %r11
cmpq %r11, %r10
movq %r10, -128(%rbp)
movq %r11, -152(%rbp)
jl L25
L26:
movq -160(%rbp), %r10
leaq -40(%rbp), %r10
movq %r10, -160(%rbp)
movq -168(%rbp), %r10
movq $16, %r10
movq %r10, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %rdi
movq %r10, -168(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq allocRecord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -176(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, %rax
movq -160(%rbp), %r10
movq -176(%rbp), %r11
movq %r11, (%r10)
movq %r10, -160(%rbp)
movq %r11, -176(%rbp)
movq -184(%rbp), %r10
movq -160(%rbp), %r11
movq (%r11), %r10
movq %r10, -184(%rbp)
movq %r11, -160(%rbp)
movq -192(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -192(%rbp)
movq %r11, %rbp
movq -200(%rbp), %r10
movq -192(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, -192(%rbp)
movq -184(%rbp), %r10
movq -200(%rbp), %r11
movq %r11, 0(%r10)
movq %r10, -184(%rbp)
movq %r11, -200(%rbp)
movq -208(%rbp), %r10
movq -160(%rbp), %r11
movq (%r11), %r10
movq %r10, -208(%rbp)
movq %r11, -160(%rbp)
movq -216(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -208(%rbp)
movq -224(%rbp), %r10
movq $8, %r10
movq %r10, -224(%rbp)
movq -216(%rbp), %r10
movq -224(%rbp), %r11
addq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -224(%rbp)
movq -232(%rbp), %r10
movq -216(%rbp), %r11
movq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, -216(%rbp)
movq %rbp, %r10
movq %r10, %rdx
movq %r10, %rbp
movq -240(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -240(%rbp)
movq %r11, %rbp
movq -248(%rbp), %r10
movq -240(%rbp), %r11
movq 8(%r11), %r10
movq %r10, -248(%rbp)
movq %r11, -240(%rbp)
movq -248(%rbp), %r10
movq %r10, %rsi
movq %r10, -248(%rbp)
movq -256(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -256(%rbp)
movq %r11, %rbp
movq -256(%rbp), %r10
movq %r10, %rdi
movq %r10, -256(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq merge
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -264(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, %rax
movq -232(%rbp), %r10
movq -264(%rbp), %r11
movq %r11, (%r10)
movq %r10, -232(%rbp)
movq %r11, -264(%rbp)
movq -272(%rbp), %r10
movq -160(%rbp), %r11
movq (%r11), %r10
movq %r10, -272(%rbp)
movq %r11, -160(%rbp)
movq %rax, %r10
movq -272(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -272(%rbp)
L27:
L30:
L33:
jmp L58
L31:
movq -280(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -280(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -280(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -280(%rbp)
jmp L33
L28:
movq -288(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -288(%rbp)
movq %r11, %rbp
movq %rax, %r10
movq -288(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -288(%rbp)
jmp L30
L25:
movq -296(%rbp), %r10
leaq -32(%rbp), %r10
movq %r10, -296(%rbp)
movq -304(%rbp), %r10
movq $16, %r10
movq %r10, -304(%rbp)
movq -304(%rbp), %r10
movq %r10, %rdi
movq %r10, -304(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq allocRecord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -312(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -312(%rbp)
movq %r11, %rax
movq -296(%rbp), %r10
movq -312(%rbp), %r11
movq %r11, (%r10)
movq %r10, -296(%rbp)
movq %r11, -312(%rbp)
movq -320(%rbp), %r10
movq -296(%rbp), %r11
movq (%r11), %r10
movq %r10, -320(%rbp)
movq %r11, -296(%rbp)
movq -328(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -328(%rbp)
movq %r11, %rbp
movq -336(%rbp), %r10
movq -328(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -336(%rbp)
movq %r11, -328(%rbp)
movq -320(%rbp), %r10
movq -336(%rbp), %r11
movq %r11, 0(%r10)
movq %r10, -320(%rbp)
movq %r11, -336(%rbp)
movq -344(%rbp), %r10
movq -296(%rbp), %r11
movq (%r11), %r10
movq %r10, -344(%rbp)
movq %r11, -296(%rbp)
movq -352(%rbp), %r10
movq -344(%rbp), %r11
movq %r11, %r10
movq %r10, -352(%rbp)
movq %r11, -344(%rbp)
movq -360(%rbp), %r10
movq $8, %r10
movq %r10, -360(%rbp)
movq -352(%rbp), %r10
movq -360(%rbp), %r11
addq %r11, %r10
movq %r10, -352(%rbp)
movq %r11, -360(%rbp)
movq -368(%rbp), %r10
movq -352(%rbp), %r11
movq %r11, %r10
movq %r10, -368(%rbp)
movq %r11, -352(%rbp)
movq %rbp, %r10
movq %r10, %rdx
movq %r10, %rbp
movq -376(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -376(%rbp)
movq %r11, %rbp
movq -376(%rbp), %r10
movq %r10, %rsi
movq %r10, -376(%rbp)
movq -384(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -384(%rbp)
movq %r11, %rbp
movq -392(%rbp), %r10
movq -384(%rbp), %r11
movq 8(%r11), %r10
movq %r10, -392(%rbp)
movq %r11, -384(%rbp)
movq -392(%rbp), %r10
movq %r10, %rdi
movq %r10, -392(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq merge
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -400(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -400(%rbp)
movq %r11, %rax
movq -368(%rbp), %r10
movq -400(%rbp), %r11
movq %r11, (%r10)
movq %r10, -368(%rbp)
movq %r11, -400(%rbp)
movq -408(%rbp), %r10
movq -296(%rbp), %r11
movq (%r11), %r10
movq %r10, -408(%rbp)
movq %r11, -296(%rbp)
movq %rax, %r10
movq -408(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -408(%rbp)
jmp L27
L58:
addq $408, %rsp
popq %rbp
ret


.size merge, .-merge
.globl f
.type f, @function
f:
pushq %rbp
movq %rsp, %rbp
subq $168, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L61:
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
jg L35
L36:
jmp L60
L35:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -56(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq $10, %r10
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
callq f
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
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
movq $10, %r10
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
movq $10, %r10
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
movq -136(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -88(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -144(%rbp), %r10
leaq L34(%rip), %r10
movq %r10, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, %rdi
movq %r10, -144(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq ord
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -152(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -160(%rbp), %r10
movq -136(%rbp), %r11
movq %r11, %r10
movq %r10, -160(%rbp)
movq %r11, -136(%rbp)
movq -160(%rbp), %r10
movq -152(%rbp), %r11
addq %r11, %r10
movq %r10, -160(%rbp)
movq %r11, -152(%rbp)
movq -160(%rbp), %r10
movq %r10, %rdi
movq %r10, -160(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq chr
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
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L36
L60:
addq $168, %rsp
popq %rbp
ret


.size f, .-f
.globl printint
.type printint, @function
printint:
pushq %rbp
movq %rsp, %rbp
subq $128, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L63:
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
jl L43
L44:
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
movq -72(%rbp), %r10
movq $0, %r10
movq %r10, -72(%rbp)
movq -80(%rbp), %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -72(%rbp)
movq -64(%rbp), %r10
movq -80(%rbp), %r11
cmpq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -80(%rbp)
jg L40
L41:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -88(%rbp), %r10
leaq L39(%rip), %r10
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
L42:
L45:
jmp L62
L43:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -96(%rbp), %r10
leaq L38(%rip), %r10
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
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -104(%rbp), %r10
movq $0, %r10
movq %r10, -104(%rbp)
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq -120(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, %rbp
movq -112(%rbp), %r10
movq -120(%rbp), %r11
subq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, -120(%rbp)
movq -112(%rbp), %r10
movq %r10, %rdi
movq %r10, -112(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq f
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L45
L40:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -128(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
movq -128(%rbp), %r10
movq %r10, %rdi
movq %r10, -128(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq f
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L42
L62:
addq $128, %rsp
popq %rbp
ret


.size printint, .-printint
.globl printlist
.type printlist, @function
printlist:
pushq %rbp
movq %rsp, %rbp
subq $96, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L65:
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
je L48
L49:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -56(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq -56(%rbp), %r11
movq 0(%r11), %r10
movq %r10, -64(%rbp)
movq %r11, -56(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
movq %r10, -64(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printint
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -72(%rbp), %r10
leaq L47(%rip), %r10
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
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq -80(%rbp), %r11
movq 8(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, -80(%rbp)
movq -88(%rbp), %r10
movq %r10, %rdi
movq %r10, -88(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printlist
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
L50:
jmp L64
L48:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -96(%rbp), %r10
leaq L46(%rip), %r10
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
jmp L50
L64:
addq $96, %rsp
popq %rbp
ret


.size printlist, .-printlist
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $104, %rsp
movq %rdi, -8(%rbp)
L67:
movq -32(%rbp), %r10
leaq -8(%rbp), %r10
movq %r10, -32(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq __wrap_getchar
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -40(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -40(%rbp)
movq %r11, %rax
movq -32(%rbp), %r10
movq -40(%rbp), %r11
movq %r11, (%r10)
movq %r10, -32(%rbp)
movq %r11, -40(%rbp)
movq -48(%rbp), %r10
leaq -16(%rbp), %r10
movq %r10, -48(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq readlist
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -56(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -56(%rbp)
movq %r11, %rax
movq -48(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, (%r10)
movq %r10, -48(%rbp)
movq %r11, -56(%rbp)
movq -64(%rbp), %r10
leaq -24(%rbp), %r10
movq %r10, -64(%rbp)
movq -72(%rbp), %r10
leaq -8(%rbp), %r10
movq %r10, -72(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq __wrap_getchar
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -80(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, %rax
movq -72(%rbp), %r10
movq -80(%rbp), %r11
movq %r11, (%r10)
movq %r10, -72(%rbp)
movq %r11, -80(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq readlist
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -64(%rbp), %r10
movq %rax, %r11
movq %r11, (%r10)
movq %r10, -64(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rdx
movq %r10, %rbp
movq -88(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq %r10, %rsi
movq %r10, -88(%rbp)
movq -96(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, %rbp
movq -96(%rbp), %r10
movq %r10, %rdi
movq %r10, -96(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq merge
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -104(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -104(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -104(%rbp), %r10
movq %r10, %rdi
movq %r10, -104(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printlist
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L66
L66:
addq $104, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L1:
.long 1
.string "0"
L2:
.long 1
.string "9"
L8:
.long 1
.string " "
L9:
.long 1
.string "\n"
L21:
.long 1
.string "0"
L34:
.long 1
.string "0"
L38:
.long 1
.string "-"
L39:
.long 1
.string "0"
L46:
.long 1
.string "\n"
L47:
.long 1
.string " "
