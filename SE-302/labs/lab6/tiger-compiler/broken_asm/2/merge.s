.text
.globl isdigit
.type isdigit, @function

isdigit:
pushq %rbp
movq %rsp, %rbp
subq $208, %rsp
L68:
movq 16(%rbp), %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r10
movq 16(%r10), %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r13
movq %r13, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r13
movq %r13, %r11
movq %r11, -184(%rbp)
movq -192(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -176(%rbp)
callq ord
movq %rax, %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %r12
movq %r12, -160(%rbp)
movq L2(%rip), %r11
movq %r11, -152(%rbp)
callq ord
movq %rax, %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r10
movq -160(%rbp), %r13
cmpq %r10, %r13
jge L5
L6:
movq -128(%rbp), %r13
movq -136(%rbp), %r10
movq %r13, (%r10)
L7:
jmp L67
L5:
movq -112(%rbp), %r10
movq -120(%rbp), %r13
addq %r10, %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r10
movq %r10, %r11
movq %r11, -136(%rbp)
movq -96(%rbp), %r10
movq %r10, %r12
movq %r12, -104(%rbp)
movq 16(%rbp), %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r13
movq 16(%r13), %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq %r10, %r12
movq %r12, -64(%rbp)
movq -72(%rbp), %r13
movq -8(%r13), %r11
movq %r11, -56(%rbp)
callq ord
movq %rax, %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r13
movq %r13, %r11
movq %r11, -40(%rbp)
movq L4(%rip), %r12
movq %r12, -32(%rbp)
callq ord
movq %rax, %r11
movq %r11, -24(%rbp)
movq -24(%rbp), %r13
movq -40(%rbp), %r10
cmpq %r13, %r10
jle L8
L9:
movq -16(%rbp), %r10
movq %r10, %r11
movq %r11, -104(%rbp)
L8:
movq -104(%rbp), %r13
movq -136(%rbp), %r13
movq %r13, (%r13)
jmp L7
L67:
addq $208, %rsp
popq %rbp
ret


.size isdigit, .-isdigit
.globl skipto
.type skipto, @function

skipto:
pushq %rbp
movq %rsp, %rbp
subq $264, %rsp
L17:
movq 8(%rbp), %r11
movq %r11, -264(%rbp)
movq -264(%rbp), %r13
movq 16(%r13), %r12
movq %r12, -256(%rbp)
movq -256(%rbp), %r10
movq 16(%r10), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r13
movq %r13, %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r13
movq %r13, %r11
movq %r11, -232(%rbp)
movq -240(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -224(%rbp)
movq L10(%rip), %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r13
movq -224(%rbp), %r10
cmpq %r13, %r10
je L12
L13:
movq -200(%rbp), %r10
movq -208(%rbp), %r13
addq %r10, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, %r11
movq %r11, -192(%rbp)
movq -176(%rbp), %r13
movq %r13, %r11
movq %r11, -184(%rbp)
movq 8(%rbp), %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r10
movq 16(%r10), %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq 16(%r13), %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, %r12
movq %r12, -136(%rbp)
movq -144(%rbp), %r13
movq -8(%r13), %r11
movq %r11, -128(%rbp)
movq L11(%rip), %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r10
movq -128(%rbp), %r13
cmpq %r10, %r13
je L15
L16:
movq -112(%rbp), %r13
movq %r13, %r12
movq %r12, -184(%rbp)
L15:
movq -184(%rbp), %r10
movq -192(%rbp), %r13
movq %r10, (%r13)
L14:
movq -192(%rbp), %r10
movq (%r10), %r11
movq %r11, -104(%rbp)
movq -96(%rbp), %r13
movq -104(%rbp), %r10
cmpq %r13, %r10
jne L18
L19:
jmp L69
L12:
movq -88(%rbp), %r10
movq -192(%rbp), %r13
movq %r10, (%r13)
jmp L14
L18:
movq 8(%rbp), %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq 16(%r13), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq 16(%r10), %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r13
movq %r13, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq %r10, %r12
movq %r12, -48(%rbp)
movq -32(%rbp), %r13
movq -40(%rbp), %r10
addq %r13, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r13
movq %r13, %r12
movq %r12, -24(%rbp)
callq getchar
movq %rax, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r13
movq -24(%rbp), %r10
movq %r13, (%r10)
jmp L17
L69:
addq $264, %rsp
popq %rbp
ret


.size skipto, .-skipto
.globl readint
.type readint, @function

readint:
pushq %rbp
movq %rsp, %rbp
subq $336, %rsp
L71:
movq -336(%rbp), %r10
movq %r10, -16(%rbp)
callq skipto
callq skipto
movq 8(%rbp), %r11
movq %r11, -328(%rbp)
movq -312(%rbp), %r13
movq -320(%rbp), %r10
addq %r13, %r12
movq %r12, -320(%rbp)
movq -320(%rbp), %r13
movq %r13, %r11
movq %r11, -304(%rbp)
movq 16(%rbp), %r12
movq %r12, -296(%rbp)
movq -296(%rbp), %r13
movq %r13, %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r13
movq %r13, %r12
movq %r12, -280(%rbp)
movq -288(%rbp), %r10
movq -8(%r10), %r11
movq %r11, -272(%rbp)
callq isdigit
movq %rax, %r12
movq %r12, -264(%rbp)
movq -264(%rbp), %r10
movq -304(%rbp), %r10
movq %r10, (%r10)
L20:
movq 16(%rbp), %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r13
movq %r13, %r12
movq %r12, -248(%rbp)
movq -248(%rbp), %r13
movq %r13, %r11
movq %r11, -240(%rbp)
movq -248(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -232(%rbp)
callq isdigit
movq %rax, %r11
movq %r11, -224(%rbp)
movq -216(%rbp), %r13
movq -224(%rbp), %r10
cmpq %r13, %r10
jne L21
L22:
jmp L70
L21:
movq -200(%rbp), %r10
movq -208(%rbp), %r13
addq %r10, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, %r11
movq %r11, -192(%rbp)
movq -8(%rbp), %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r10
movq %rax, %r10
movq -176(%rbp), %r13
imulq %r13
movq %r11, %rax
movq %r11, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %r12
movq %r12, -160(%rbp)
movq 16(%rbp), %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r13
movq %r13, %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r13
movq %r13, %r11
movq %r11, -136(%rbp)
movq -144(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -128(%rbp)
callq ord
movq %rax, %r11
movq %r11, -120(%rbp)
movq -112(%rbp), %r10
movq -120(%rbp), %r10
addq %r10, %r12
movq %r12, -112(%rbp)
movq -112(%rbp), %r13
movq %r13, %r11
movq %r11, -104(%rbp)
movq L24(%rip), %r12
movq %r12, -96(%rbp)
callq ord
movq %rax, %r11
movq %r11, -88(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r13
subq %r13, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq -192(%rbp), %r13
movq %r10, (%r13)
movq 16(%rbp), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq %r10, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r13
movq %r13, %r11
movq %r11, -56(%rbp)
movq -40(%rbp), %r10
movq -48(%rbp), %r13
addq %r10, %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r10
movq %r10, %r11
movq %r11, -32(%rbp)
callq getchar
movq %rax, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r13
movq %r10, (%r13)
jmp L20
L70:
addq $336, %rsp
popq %rbp
ret


.size readint, .-readint
.globl readlist
.type readlist, @function

readlist:
pushq %rbp
movq %rsp, %rbp
subq $272, %rsp
L73:
movq -264(%rbp), %r10
movq -272(%rbp), %r13
addq %r10, %r12
movq %r12, -272(%rbp)
movq -272(%rbp), %r10
movq %r10, %r11
movq %r11, -256(%rbp)
movq -240(%rbp), %r10
movq -248(%rbp), %r13
addq %r10, %r12
movq %r12, -248(%rbp)
movq -248(%rbp), %r10
movq %r10, %r11
movq %r11, -232(%rbp)
callq allocRecord
movq %rax, %r12
movq %r12, -224(%rbp)
movq -224(%rbp), %r10
movq -232(%rbp), %r13
movq %r10, (%r13)
movq -232(%rbp), %r10
movq (%r10), %r11
movq %r11, -216(%rbp)
movq -208(%rbp), %r10
movq -216(%rbp), %r13
movq %r10, 0(%r13)
movq -232(%rbp), %r13
movq -256(%rbp), %r13
movq -192(%rbp), %r13
movq -200(%rbp), %r10
addq %r13, %r12
movq %r12, -200(%rbp)
movq -200(%rbp), %r13
movq %r13, %r11
movq %r11, -184(%rbp)
movq -8(%rbp), %r12
movq %r12, -176(%rbp)
callq readint
movq %rax, %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r13
movq -184(%rbp), %r10
movq %r13, (%r10)
movq -8(%rbp), %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r10
movq 0(%r10), %r11
movq %r11, -152(%rbp)
movq -144(%rbp), %r10
movq -152(%rbp), %r13
cmpq %r10, %r13
jne L27
L28:
movq -128(%rbp), %r13
movq -136(%rbp), %r10
movq %r13, (%r10)
L29:
jmp L72
L27:
movq -112(%rbp), %r10
movq -120(%rbp), %r13
addq %r10, %r11
movq %r11, -120(%rbp)
movq -120(%rbp), %r10
movq %r10, %r12
movq %r12, -136(%rbp)
movq -96(%rbp), %r13
movq -104(%rbp), %r10
addq %r13, %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r13
movq %r13, %r11
movq %r11, -88(%rbp)
callq allocRecord
movq %rax, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
movq %r13, (%r10)
movq -88(%rbp), %r13
movq (%r13), %r11
movq %r11, -72(%rbp)
movq -32(%rbp), %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r13
movq -72(%rbp), %r10
movq %r13, 8(%r10)
movq -88(%rbp), %r10
movq -136(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
jmp L29
L72:
addq $272, %rsp
popq %rbp
ret


.size readlist, .-readlist
.globl merge
.type merge, @function

merge:
pushq %rbp
movq %rsp, %rbp
subq $328, %rsp
L75:
movq 16(%rbp), %r11
movq %r11, -328(%rbp)
movq -320(%rbp), %r13
movq -328(%rbp), %r10
cmpq %r13, %r10
je L36
L37:
movq -304(%rbp), %r10
movq -312(%rbp), %r13
addq %r10, %r12
movq %r12, -312(%rbp)
movq -312(%rbp), %r10
movq %r10, %r11
movq %r11, -296(%rbp)
movq 8(%rbp), %r12
movq %r12, -288(%rbp)
movq -280(%rbp), %r10
movq -288(%rbp), %r13
cmpq %r10, %r13
je L33
L34:
movq -264(%rbp), %r13
movq -272(%rbp), %r10
addq %r13, %r11
movq %r11, -272(%rbp)
movq -272(%rbp), %r13
movq %r13, %r12
movq %r12, -256(%rbp)
movq 16(%rbp), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r13
movq 0(%r13), %r12
movq %r12, -240(%rbp)
movq 8(%rbp), %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r13
movq 0(%r13), %r12
movq %r12, -224(%rbp)
movq -224(%rbp), %r10
movq -240(%rbp), %r10
cmpq %r10, %r10
jl L30
L31:
movq -208(%rbp), %r13
movq -216(%rbp), %r10
addq %r13, %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r13
movq %r13, %r12
movq %r12, -200(%rbp)
movq -184(%rbp), %r13
movq -192(%rbp), %r10
addq %r13, %r11
movq %r11, -192(%rbp)
movq -192(%rbp), %r13
movq %r13, %r12
movq %r12, -176(%rbp)
callq allocRecord
movq %rax, %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r13
movq -176(%rbp), %r10
movq %r13, (%r10)
movq -176(%rbp), %r13
movq (%r13), %r12
movq %r12, -160(%rbp)
movq 8(%rbp), %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r13
movq 0(%r13), %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r10
movq -160(%rbp), %r10
movq %r10, 8(%r10)
movq -136(%rbp), %r13
movq -176(%rbp), %r10
movq (%r10), %r14
movq %r14, (%r13)
L32:
movq -136(%rbp), %r10
movq -256(%rbp), %r10
L35:
movq -256(%rbp), %r13
movq -296(%rbp), %r10
movq (%r13), %r14
movq %r14, (%r10)
L38:
jmp L74
L36:
movq -120(%rbp), %r10
movq -128(%rbp), %r13
addq %r10, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r10
movq -296(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
jmp L38
L33:
movq -104(%rbp), %r13
movq -112(%rbp), %r10
addq %r13, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq -256(%rbp), %r10
movq (%r13), %r14
movq %r14, (%r10)
jmp L35
L30:
movq -200(%rbp), %r10
movq %r10, %r11
movq %r11, -136(%rbp)
movq -88(%rbp), %r10
movq -96(%rbp), %r13
addq %r10, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %r11
movq %r11, -80(%rbp)
callq allocRecord
movq %rax, %r12
movq %r12, -72(%rbp)
movq -72(%rbp), %r10
movq -80(%rbp), %r13
movq %r10, (%r13)
movq -80(%rbp), %r10
movq (%r10), %r11
movq %r11, -64(%rbp)
movq 16(%rbp), %r12
movq %r12, -56(%rbp)
movq -56(%rbp), %r10
movq 0(%r10), %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r13
movq -64(%rbp), %r13
movq %r13, 8(%r13)
movq -80(%rbp), %r13
movq -136(%rbp), %r13
jmp L32
L74:
addq $328, %rsp
popq %rbp
ret


.size merge, .-merge
.globl f
.type f, @function

f:
pushq %rbp
movq %rsp, %rbp
subq $136, %rsp
L77:
movq 8(%rbp), %r12
movq %r12, -136(%rbp)
movq -128(%rbp), %r10
movq -136(%rbp), %r13
cmpq %r10, %r13
jg L47
L48:
jmp L76
L47:
movq 8(%rbp), %r11
movq %r11, -120(%rbp)
movq -120(%rbp), %r13
movq %rax, %r13
movq -112(%rbp), %r10
idivq %r10
movq %r12, %rax
movq %r12, -104(%rbp)
callq f
movq 8(%rbp), %r11
movq %r11, -96(%rbp)
movq 8(%rbp), %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r13
movq %rax, %r13
movq -80(%rbp), %r10
idivq %r10
movq %r11, %rax
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq %rax, %r13
movq -64(%rbp), %r10
imulq %r10
movq %r12, %rax
movq %r12, -56(%rbp)
movq -48(%rbp), %r13
movq -56(%rbp), %r13
subq %r13, %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r10
movq %r10, %r12
movq %r12, -40(%rbp)
movq L46(%rip), %r11
movq %r11, -32(%rbp)
callq ord
movq %rax, %r12
movq %r12, -24(%rbp)
movq -16(%rbp), %r13
movq -24(%rbp), %r10
addq %r10, %r11
movq %r11, -16(%rbp)
callq chr
movq %rax, %r12
movq %r12, -8(%rbp)
callq print
jmp L48
L76:
addq $136, %rsp
popq %rbp
ret


.size f, .-f
.globl printint
.type printint, @function

printint:
pushq %rbp
movq %rsp, %rbp
subq $168, %rsp
L79:
movq 8(%rbp), %r11
movq %r11, -168(%rbp)
movq -160(%rbp), %r13
movq -168(%rbp), %r10
cmpq %r13, %r10
jl L57
L58:
movq -144(%rbp), %r10
movq -152(%rbp), %r13
addq %r10, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %r11
movq %r11, -136(%rbp)
movq 8(%rbp), %r12
movq %r12, -128(%rbp)
movq -120(%rbp), %r13
movq -128(%rbp), %r10
cmpq %r13, %r10
jg L54
L55:
movq -104(%rbp), %r10
movq -112(%rbp), %r13
addq %r10, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r10
movq %r10, %r12
movq %r12, -96(%rbp)
movq L53(%rip), %r11
movq %r11, -88(%rbp)
callq print
movq %rax, %r12
movq %r12, -80(%rbp)
movq -72(%rbp), %r13
movq -80(%rbp), %r10
movq %r10, (%r13)
L56:
movq -64(%rbp), %r13
movq -72(%rbp), %r10
movq (%r10), %r14
movq %r14, (%r13)
L59:
jmp L78
L57:
movq -136(%rbp), %r13
movq %r13, %r12
movq %r12, -64(%rbp)
movq L51(%rip), %r11
movq %r11, -56(%rbp)
callq print
movq 8(%rbp), %r12
movq %r12, -48(%rbp)
movq -40(%rbp), %r13
movq -48(%rbp), %r10
subq %r10, %r11
movq %r11, -40(%rbp)
callq f
movq -64(%rbp), %r10
movq %rax, (%r10)
jmp L59
L54:
movq -96(%rbp), %r13
movq %r13, %r11
movq %r11, -72(%rbp)
movq 8(%rbp), %r12
movq %r12, -32(%rbp)
callq f
movq %rax, %r11
movq %r11, -24(%rbp)
movq -24(%rbp), %r10
movq -72(%rbp), %r13
movq %r10, (%r13)
jmp L56
L78:
addq $168, %rsp
popq %rbp
ret


.size printint, .-printint
.globl printlist
.type printlist, @function

printlist:
pushq %rbp
movq %rsp, %rbp
subq $128, %rsp
L81:
movq 8(%rbp), %r12
movq %r12, -128(%rbp)
movq -120(%rbp), %r13
movq -128(%rbp), %r10
cmpq %r13, %r10
je L64
L65:
movq -104(%rbp), %r10
movq -112(%rbp), %r13
addq %r10, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r10
movq %r10, %r12
movq %r12, -96(%rbp)
movq 8(%rbp), %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r10
movq 0(%r10), %r12
movq %r12, -80(%rbp)
callq printint
movq 8(%rbp), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq 0(%r13), %r12
movq %r12, -64(%rbp)
callq printint
movq L63(%rip), %r11
movq %r11, -56(%rbp)
callq print
movq 8(%rbp), %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -40(%rbp)
callq printlist
movq -32(%rbp), %r10
movq %rax, (%r10)
L66:
jmp L80
L64:
movq -96(%rbp), %r13
movq %r13, %r12
movq %r12, -32(%rbp)
movq L61(%rip), %r11
movq %r11, -24(%rbp)
callq print
movq %rax, %r12
movq %r12, -16(%rbp)
movq -16(%rbp), %r13
movq -32(%rbp), %r13
movq %r13, (%r13)
jmp L66
L80:
addq $128, %rsp
popq %rbp
ret


.size printlist, .-printlist
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $192, %rsp
L83:
movq -184(%rbp), %r13
movq -192(%rbp), %r10
addq %r13, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r13
movq %r13, %r11
movq %r11, -176(%rbp)
callq getchar
movq %rax, %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r13
movq -176(%rbp), %r10
movq %r13, (%r10)
movq -152(%rbp), %r10
movq -160(%rbp), %r13
addq %r10, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r10
movq %r10, %r12
movq %r12, -144(%rbp)
callq readlist
movq %rax, %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r10
movq -144(%rbp), %r13
movq %r10, (%r13)
movq -120(%rbp), %r13
movq -128(%rbp), %r10
addq %r13, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r13
movq %r13, %r11
movq %r11, -112(%rbp)
movq -96(%rbp), %r13
movq -104(%rbp), %r10
addq %r13, %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r13
movq %r13, %r11
movq %r11, -88(%rbp)
callq getchar
movq %rax, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
movq %r13, (%r10)
callq readlist
movq -112(%rbp), %r10
movq %rax, (%r10)
movq -40(%rbp), %r11
movq %r11, -72(%rbp)
movq -24(%rbp), %r12
movq %r12, -64(%rbp)
callq merge
movq %rax, %r11
movq %r11, -56(%rbp)
callq printlist
jmp L82
L82:
addq $192, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L1
.type L1, @object
.size L1, 1
L1:
.string "0"
.globl L2
.type L2, @object
.size L2, 1
L2:
.string "0"
.globl L3
.type L3, @object
.size L3, 1
L3:
.string "9"
.globl L4
.type L4, @object
.size L4, 1
L4:
.string "9"
.globl L10
.type L10, @object
.size L10, 1
L10:
.string " "
.globl L11
.type L11, @object
.size L11, 1
L11:
.string "\n"
.globl L23
.type L23, @object
.size L23, 1
L23:
.string "0"
.globl L24
.type L24, @object
.size L24, 1
L24:
.string "0"
.globl L25
.type L25, @object
.size L25, 1
L25:
.string "0"
.globl L26
.type L26, @object
.size L26, 1
L26:
.string "0"
.globl L39
.type L39, @object
.size L39, 1
L39:
.string "0"
.globl L40
.type L40, @object
.size L40, 1
L40:
.string "0"
.globl L41
.type L41, @object
.size L41, 1
L41:
.string "0"
.globl L42
.type L42, @object
.size L42, 1
L42:
.string "0"
.globl L43
.type L43, @object
.size L43, 1
L43:
.string "0"
.globl L44
.type L44, @object
.size L44, 1
L44:
.string "0"
.globl L45
.type L45, @object
.size L45, 1
L45:
.string "0"
.globl L46
.type L46, @object
.size L46, 1
L46:
.string "0"
.globl L50
.type L50, @object
.size L50, 1
L50:
.string "-"
.globl L51
.type L51, @object
.size L51, 1
L51:
.string "-"
.globl L52
.type L52, @object
.size L52, 1
L52:
.string "0"
.globl L53
.type L53, @object
.size L53, 1
L53:
.string "0"
.globl L60
.type L60, @object
.size L60, 1
L60:
.string "\n"
.globl L61
.type L61, @object
.size L61, 1
L61:
.string "\n"
.globl L62
.type L62, @object
.size L62, 1
L62:
.string " "
.globl L63
.type L63, @object
.size L63, 1
L63:
.string " "
