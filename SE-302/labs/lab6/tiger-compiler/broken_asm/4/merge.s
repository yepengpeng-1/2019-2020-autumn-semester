.text
.globl isdigit
.type isdigit, @function
isdigit:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $640, %rsp
L68:
movq $16, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq -24(%rbp), %r13
addq %r10, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r10
movq (%r10), %r11
movq %r11, -48(%rbp)
movq $16, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r13
movq -72(%rbp), %r10
addq %r13, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq (%r13), %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq %r13, %r12
movq %r12, -128(%rbp)
movq $-8, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r10
movq -152(%rbp), %r13
addq %r10, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq (%r10), %r11
movq %r11, -176(%rbp)
movq -176(%rbp), %r13
movq %r13, %rdi
callq ord
movq %rax, %r12
movq %r12, -200(%rbp)
movq -200(%rbp), %r10
movq %r10, %r11
movq %r11, -208(%rbp)
movq L2(%rip), %r12
movq %r12, -224(%rbp)
movq -224(%rbp), %r10
movq %r10, %rdi
callq ord
movq %rax, %r11
movq %r11, -240(%rbp)
movq -208(%rbp), %r13
movq -240(%rbp), %r13
cmpq %r13, %r13
jge L5
L6:
movq $0, %r12
movq %r12, -264(%rbp)
movq -264(%rbp), %r10
movq -272(%rbp), %r13
movq (%r13), %r10
L7:
jmp L67
L5:
movq $-8, %r12
movq %r12, -288(%rbp)
movq -288(%rbp), %r13
movq -296(%rbp), %r10
addq %r13, %r11
movq %r11, -296(%rbp)
movq -296(%rbp), %r13
movq %r13, %r11
movq %r11, -272(%rbp)
movq $1, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r10
movq %r10, %r11
movq %r11, -344(%rbp)
movq $16, %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r10
movq -368(%rbp), %r13
addq %r10, %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r10
movq (%r10), %r11
movq %r11, -392(%rbp)
movq $16, %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r13
movq -416(%rbp), %r10
addq %r13, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r13
movq (%r13), %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r10
movq %r10, %r11
movq %r11, -456(%rbp)
movq -456(%rbp), %r13
movq %r13, %r12
movq %r12, -472(%rbp)
movq $-8, %r11
movq %r11, -488(%rbp)
movq -488(%rbp), %r10
movq -496(%rbp), %r13
addq %r10, %r12
movq %r12, -496(%rbp)
movq -496(%rbp), %r10
movq (%r10), %r11
movq %r11, -520(%rbp)
movq -520(%rbp), %r13
movq %r13, %rdi
callq ord
movq %rax, %r12
movq %r12, -544(%rbp)
movq -544(%rbp), %r10
movq %r10, %r11
movq %r11, -552(%rbp)
movq L4(%rip), %r12
movq %r12, -568(%rbp)
movq -568(%rbp), %r10
movq %r10, %rdi
callq ord
movq %rax, %r11
movq %r11, -584(%rbp)
movq -552(%rbp), %r13
movq -584(%rbp), %r13
cmpq %r13, %r13
jle L8
L9:
movq $0, %r12
movq %r12, -608(%rbp)
movq -608(%rbp), %r10
movq %r10, %r12
movq %r12, -344(%rbp)
L8:
movq -272(%rbp), %r10
movq -344(%rbp), %r13
movq (%r10), %r13
jmp L7
L67:
addq $640, %rsp
popq %rbp
ret


.size isdigit, .-isdigit
.globl skipto
.type skipto, @function
skipto:
pushq %rbp
movq %rsp, %rbp
subq $928, %rsp
L17:
movq $8, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r13
movq -24(%rbp), %r10
addq %r13, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq (%r13), %r11
movq %r11, -48(%rbp)
movq $16, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r13
addq %r10, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq (%r10), %r12
movq %r12, -96(%rbp)
movq $16, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq -120(%rbp), %r10
addq %r13, %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r13
movq (%r13), %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, %r11
movq %r11, -176(%rbp)
movq $-8, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r10
movq -200(%rbp), %r13
addq %r10, %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r10
movq (%r10), %r12
movq %r12, -224(%rbp)
movq L10(%rip), %r11
movq %r11, -240(%rbp)
movq -224(%rbp), %r13
movq -240(%rbp), %r10
cmpq %r10, %r13
je L12
L13:
movq $-8, %r12
movq %r12, -264(%rbp)
movq -264(%rbp), %r13
movq -272(%rbp), %r10
addq %r13, %r11
movq %r11, -272(%rbp)
movq -272(%rbp), %r13
movq %r13, %r12
movq %r12, -296(%rbp)
movq $1, %r11
movq %r11, -312(%rbp)
movq -312(%rbp), %r13
movq %r13, %r12
movq %r12, -320(%rbp)
movq $8, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r13
movq -344(%rbp), %r10
addq %r13, %r11
movq %r11, -344(%rbp)
movq -344(%rbp), %r13
movq (%r13), %r12
movq %r12, -368(%rbp)
movq $16, %r11
movq %r11, -384(%rbp)
movq -384(%rbp), %r10
movq -392(%rbp), %r13
addq %r10, %r12
movq %r12, -392(%rbp)
movq -392(%rbp), %r10
movq (%r10), %r11
movq %r11, -416(%rbp)
movq $16, %r12
movq %r12, -432(%rbp)
movq -432(%rbp), %r13
movq -440(%rbp), %r10
addq %r13, %r11
movq %r11, -440(%rbp)
movq -440(%rbp), %r13
movq (%r13), %r12
movq %r12, -464(%rbp)
movq -464(%rbp), %r10
movq %r10, %r11
movq %r11, -480(%rbp)
movq -480(%rbp), %r13
movq %r13, %r12
movq %r12, -496(%rbp)
movq $-8, %r11
movq %r11, -512(%rbp)
movq -512(%rbp), %r10
movq -520(%rbp), %r13
addq %r10, %r12
movq %r12, -520(%rbp)
movq -520(%rbp), %r10
movq (%r10), %r11
movq %r11, -544(%rbp)
movq L11(%rip), %r12
movq %r12, -560(%rbp)
movq -544(%rbp), %r13
movq -560(%rbp), %r10
cmpq %r10, %r13
je L15
L16:
movq $0, %r11
movq %r11, -584(%rbp)
movq -584(%rbp), %r13
movq %r13, %r11
movq %r11, -320(%rbp)
L15:
movq -296(%rbp), %r10
movq -320(%rbp), %r10
movq (%r10), %r10
L14:
movq -296(%rbp), %r13
movq (%r13), %r12
movq %r12, -624(%rbp)
movq $0, %r11
movq %r11, -640(%rbp)
movq -624(%rbp), %r10
movq -640(%rbp), %r13
cmpq %r13, %r10
jne L18
L19:
jmp L69
L12:
movq $1, %r12
movq %r12, -664(%rbp)
movq -296(%rbp), %r10
movq -664(%rbp), %r10
movq (%r10), %r10
jmp L14
L18:
movq $8, %r11
movq %r11, -688(%rbp)
movq -688(%rbp), %r13
movq -696(%rbp), %r10
addq %r13, %r12
movq %r12, -696(%rbp)
movq -696(%rbp), %r13
movq (%r13), %r11
movq %r11, -720(%rbp)
movq $16, %r12
movq %r12, -736(%rbp)
movq -736(%rbp), %r10
movq -744(%rbp), %r13
addq %r10, %r11
movq %r11, -744(%rbp)
movq -744(%rbp), %r10
movq (%r10), %r12
movq %r12, -768(%rbp)
movq $16, %r11
movq %r11, -784(%rbp)
movq -784(%rbp), %r13
movq -792(%rbp), %r10
addq %r13, %r12
movq %r12, -792(%rbp)
movq -792(%rbp), %r13
movq (%r13), %r11
movq %r11, -816(%rbp)
movq -816(%rbp), %r10
movq %r10, %r12
movq %r12, -832(%rbp)
movq -832(%rbp), %r13
movq %r13, %r11
movq %r11, -848(%rbp)
movq $-8, %r12
movq %r12, -864(%rbp)
movq -864(%rbp), %r10
movq -872(%rbp), %r13
addq %r10, %r11
movq %r11, -872(%rbp)
movq -872(%rbp), %r10
movq %r10, %r12
movq %r12, -896(%rbp)
callq getchar
movq %rax, %r11
movq %r11, -912(%rbp)
movq -896(%rbp), %r13
movq -912(%rbp), %r10
movq (%r13), %r10
jmp L17
L69:
addq $928, %rsp
popq %rbp
ret


.size skipto, .-skipto
.globl readint
.type readint, @function
readint:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $1040, %rsp
L71:
movq $-16, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq -32(%rbp), %r10
addq %r13, %r11
movq %r11, -32(%rbp)
movq $0, %r12
movq %r12, -56(%rbp)
movq -32(%rbp), %r13
movq -56(%rbp), %r10
movq (%r13), %r10
callq skipto
callq skipto
movq $8, %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
addq %r13, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r13
movq (%r13), %r11
movq %r11, -112(%rbp)
movq $0, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r10
movq -136(%rbp), %r13
addq %r10, %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r10
movq %r10, %r12
movq %r12, -160(%rbp)
movq $16, %r11
movq %r11, -176(%rbp)
movq -176(%rbp), %r10
movq -184(%rbp), %r13
addq %r10, %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r10
movq (%r10), %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq %r13, %r12
movq %r12, -224(%rbp)
movq -224(%rbp), %r10
movq %r10, %r11
movq %r11, -240(%rbp)
movq $-8, %r12
movq %r12, -256(%rbp)
movq -256(%rbp), %r13
movq -264(%rbp), %r10
addq %r13, %r11
movq %r11, -264(%rbp)
movq -264(%rbp), %r13
movq (%r13), %r12
movq %r12, -288(%rbp)
movq -288(%rbp), %r10
movq %r10, %rdi
callq isdigit
movq %rax, %r11
movq %r11, -312(%rbp)
movq -160(%rbp), %r13
movq -312(%rbp), %r13
movq (%r13), %r13
L20:
movq $16, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r10
movq -344(%rbp), %r13
addq %r10, %r11
movq %r11, -344(%rbp)
movq -344(%rbp), %r10
movq (%r10), %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r13
movq %r13, %r11
movq %r11, -384(%rbp)
movq -384(%rbp), %r10
movq %r10, %r12
movq %r12, -400(%rbp)
movq $-8, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r13
movq -424(%rbp), %r10
addq %r13, %r12
movq %r12, -424(%rbp)
movq -424(%rbp), %r13
movq (%r13), %r11
movq %r11, -448(%rbp)
movq -448(%rbp), %r10
movq %r10, %rdi
callq isdigit
movq %rax, %r12
movq %r12, -472(%rbp)
movq $0, %r11
movq %r11, -480(%rbp)
movq -472(%rbp), %r13
movq -480(%rbp), %r10
cmpq %r10, %r13
jne L21
L22:
jmp L70
L21:
movq $-8, %r12
movq %r12, -504(%rbp)
movq -504(%rbp), %r13
movq -512(%rbp), %r10
addq %r13, %r11
movq %r11, -512(%rbp)
movq -512(%rbp), %r13
movq %r13, %r12
movq %r12, -536(%rbp)
movq $-8, %r11
movq %r11, -552(%rbp)
movq -552(%rbp), %r13
movq -560(%rbp), %r10
addq %r13, %r12
movq %r12, -560(%rbp)
movq -560(%rbp), %r13
movq (%r13), %r11
movq %r11, -584(%rbp)
movq $10, %r12
movq %r12, -600(%rbp)
movq -584(%rbp), %r10
movq %r10, %rax
movq -600(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -624(%rbp)
movq -624(%rbp), %r10
movq %r10, %r12
movq %r12, -632(%rbp)
movq $16, %r11
movq %r11, -648(%rbp)
movq -648(%rbp), %r13
movq -656(%rbp), %r10
addq %r13, %r12
movq %r12, -656(%rbp)
movq -656(%rbp), %r13
movq (%r13), %r11
movq %r11, -680(%rbp)
movq -680(%rbp), %r10
movq %r10, %r12
movq %r12, -696(%rbp)
movq -696(%rbp), %r13
movq %r13, %r11
movq %r11, -712(%rbp)
movq $-8, %r12
movq %r12, -728(%rbp)
movq -728(%rbp), %r10
movq -736(%rbp), %r13
addq %r10, %r11
movq %r11, -736(%rbp)
movq -736(%rbp), %r10
movq (%r10), %r12
movq %r12, -760(%rbp)
movq -760(%rbp), %r13
movq %r13, %rdi
callq ord
movq %rax, %r11
movq %r11, -784(%rbp)
movq -784(%rbp), %r10
movq -792(%rbp), %r13
addq %r10, %r12
movq %r12, -792(%rbp)
movq -792(%rbp), %r10
movq %r10, %r11
movq %r11, -816(%rbp)
movq L24(%rip), %r12
movq %r12, -832(%rbp)
movq -832(%rbp), %r13
movq %r13, %rdi
callq ord
movq %rax, %r11
movq %r11, -848(%rbp)
movq -848(%rbp), %r10
movq -856(%rbp), %r13
subq %r10, %r12
movq %r12, -856(%rbp)
movq -536(%rbp), %r10
movq -856(%rbp), %r10
movq (%r10), %r10
movq $16, %r11
movq %r11, -896(%rbp)
movq -896(%rbp), %r13
movq -904(%rbp), %r10
addq %r13, %r12
movq %r12, -904(%rbp)
movq -904(%rbp), %r13
movq (%r13), %r11
movq %r11, -928(%rbp)
movq -928(%rbp), %r10
movq %r10, %r12
movq %r12, -944(%rbp)
movq -944(%rbp), %r13
movq %r13, %r11
movq %r11, -960(%rbp)
movq $-8, %r12
movq %r12, -976(%rbp)
movq -976(%rbp), %r10
movq -984(%rbp), %r13
addq %r10, %r11
movq %r11, -984(%rbp)
movq -984(%rbp), %r10
movq %r10, %r12
movq %r12, -1008(%rbp)
callq getchar
movq %rax, %r11
movq %r11, -1024(%rbp)
movq -1008(%rbp), %r13
movq -1024(%rbp), %r10
movq (%r13), %r10
jmp L20
L70:
addq $1040, %rsp
popq %rbp
ret


.size readint, .-readint
.globl readlist
.type readlist, @function
readlist:
pushq %rbp
movq %rsp, %rbp
subq $800, %rsp
L73:
movq $-24, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r13
movq -72(%rbp), %r10
addq %r13, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq %r13, %r12
movq %r12, -96(%rbp)
movq $-16, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq -120(%rbp), %r10
addq %r13, %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r13
movq %r13, %r11
movq %r11, -144(%rbp)
movq $8, %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, %rdi
callq allocRecord
movq %rax, %r11
movq %r11, -176(%rbp)
movq -144(%rbp), %r10
movq -176(%rbp), %r10
movq (%r10), %r10
movq -144(%rbp), %r13
movq (%r13), %r12
movq %r12, -200(%rbp)
movq $0, %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r13
movq -224(%rbp), %r10
addq %r13, %r12
movq %r12, -224(%rbp)
movq $0, %r11
movq %r11, -248(%rbp)
movq -224(%rbp), %r13
movq -248(%rbp), %r10
movq (%r13), %r10
movq -96(%rbp), %r10
movq -144(%rbp), %r10
movq $-40, %r12
movq %r12, -288(%rbp)
movq -288(%rbp), %r13
movq -296(%rbp), %r10
addq %r13, %r11
movq %r11, -296(%rbp)
movq -296(%rbp), %r13
movq %r13, %r12
movq %r12, -320(%rbp)
movq $-8, %r11
movq %r11, -336(%rbp)
movq -336(%rbp), %r13
movq -344(%rbp), %r10
addq %r13, %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r13
movq (%r13), %r11
movq %r11, -368(%rbp)
movq -368(%rbp), %r10
movq %r10, %rdi
callq readint
movq %rax, %r12
movq %r12, -392(%rbp)
movq -320(%rbp), %r10
movq -392(%rbp), %r13
movq (%r10), %r13
movq $-8, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r10
movq -424(%rbp), %r13
addq %r10, %r12
movq %r12, -424(%rbp)
movq -424(%rbp), %r10
movq (%r10), %r11
movq %r11, -448(%rbp)
movq $0, %r12
movq %r12, -464(%rbp)
movq -464(%rbp), %r13
movq -472(%rbp), %r10
addq %r13, %r11
movq %r11, -472(%rbp)
movq -472(%rbp), %r13
movq (%r13), %r12
movq %r12, -496(%rbp)
movq $0, %r11
movq %r11, -512(%rbp)
movq -496(%rbp), %r10
movq -512(%rbp), %r13
cmpq %r13, %r10
jne L27
L28:
movq $0, %r12
movq %r12, -536(%rbp)
movq -536(%rbp), %r10
movq -544(%rbp), %r13
movq (%r13), %r10
L29:
jmp L72
L27:
movq $-56, %r12
movq %r12, -560(%rbp)
movq -560(%rbp), %r13
movq -568(%rbp), %r10
addq %r13, %r11
movq %r11, -568(%rbp)
movq -568(%rbp), %r13
movq %r13, %r11
movq %r11, -544(%rbp)
movq $-48, %r12
movq %r12, -608(%rbp)
movq -608(%rbp), %r10
movq -616(%rbp), %r13
addq %r10, %r11
movq %r11, -616(%rbp)
movq -616(%rbp), %r10
movq %r10, %r12
movq %r12, -640(%rbp)
movq $16, %r11
movq %r11, -656(%rbp)
movq -656(%rbp), %r10
movq %r10, %rdi
callq allocRecord
movq %rax, %r12
movq %r12, -672(%rbp)
movq -640(%rbp), %r13
movq -672(%rbp), %r13
movq (%r13), %r13
movq -640(%rbp), %r10
movq (%r10), %r11
movq %r11, -696(%rbp)
movq $8, %r12
movq %r12, -712(%rbp)
movq -712(%rbp), %r10
movq -720(%rbp), %r13
addq %r10, %r11
movq %r11, -720(%rbp)
movq $-32, %r12
movq %r12, -744(%rbp)
movq -744(%rbp), %r13
movq -752(%rbp), %r10
addq %r13, %r11
movq %r11, -752(%rbp)
movq -720(%rbp), %r10
movq -752(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
movq -544(%rbp), %r10
movq -640(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
jmp L29
L72:
addq $800, %rsp
popq %rbp
ret


.size readlist, .-readlist
.globl merge
.type merge, @function
merge:
movq %rdi, 16(%rbp)
movq %rsi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $1176, %rsp
L75:
movq $16, %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r13
addq %r10, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq (%r10), %r12
movq %r12, -80(%rbp)
movq $0, %r11
movq %r11, -96(%rbp)
movq -80(%rbp), %r13
movq -96(%rbp), %r10
cmpq %r10, %r13
je L36
L37:
movq $-40, %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r13
movq -128(%rbp), %r10
addq %r13, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r13
movq %r13, %r12
movq %r12, -152(%rbp)
movq $8, %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r10
movq -176(%rbp), %r13
addq %r10, %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r10
movq (%r10), %r11
movq %r11, -200(%rbp)
movq $0, %r12
movq %r12, -216(%rbp)
movq -200(%rbp), %r13
movq -216(%rbp), %r10
cmpq %r10, %r13
je L33
L34:
movq $-32, %r11
movq %r11, -240(%rbp)
movq -240(%rbp), %r13
movq -248(%rbp), %r10
addq %r13, %r12
movq %r12, -248(%rbp)
movq -248(%rbp), %r13
movq %r13, %r11
movq %r11, -272(%rbp)
movq $16, %r12
movq %r12, -288(%rbp)
movq -288(%rbp), %r13
movq -296(%rbp), %r10
addq %r13, %r11
movq %r11, -296(%rbp)
movq -296(%rbp), %r13
movq (%r13), %r12
movq %r12, -320(%rbp)
movq $0, %r11
movq %r11, -336(%rbp)
movq -336(%rbp), %r10
movq -344(%rbp), %r13
addq %r10, %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r10
movq (%r10), %r11
movq %r11, -368(%rbp)
movq $8, %r12
movq %r12, -384(%rbp)
movq -384(%rbp), %r10
movq -392(%rbp), %r13
addq %r10, %r11
movq %r11, -392(%rbp)
movq -392(%rbp), %r10
movq (%r10), %r12
movq %r12, -416(%rbp)
movq $0, %r11
movq %r11, -432(%rbp)
movq -432(%rbp), %r13
movq -440(%rbp), %r10
addq %r13, %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r13
movq (%r13), %r11
movq %r11, -464(%rbp)
movq -368(%rbp), %r13
movq -464(%rbp), %r10
cmpq %r10, %r13
jl L30
L31:
movq $-24, %r12
movq %r12, -496(%rbp)
movq -496(%rbp), %r13
movq -504(%rbp), %r10
addq %r13, %r11
movq %r11, -504(%rbp)
movq -504(%rbp), %r13
movq %r13, %r12
movq %r12, -528(%rbp)
movq $-16, %r11
movq %r11, -544(%rbp)
movq -544(%rbp), %r13
movq -552(%rbp), %r10
addq %r13, %r12
movq %r12, -552(%rbp)
movq -552(%rbp), %r13
movq %r13, %r11
movq %r11, -576(%rbp)
movq $16, %r12
movq %r12, -592(%rbp)
movq -592(%rbp), %r13
movq %r13, %rdi
callq allocRecord
movq %rax, %r11
movq %r11, -608(%rbp)
movq -576(%rbp), %r10
movq -608(%rbp), %r10
movq (%r10), %r10
movq -576(%rbp), %r13
movq (%r13), %r12
movq %r12, -632(%rbp)
movq $8, %r11
movq %r11, -648(%rbp)
movq -648(%rbp), %r13
movq -656(%rbp), %r10
addq %r13, %r12
movq %r12, -656(%rbp)
movq $8, %r11
movq %r11, -680(%rbp)
movq -680(%rbp), %r10
movq -688(%rbp), %r13
addq %r10, %r12
movq %r12, -688(%rbp)
movq -688(%rbp), %r10
movq (%r10), %r11
movq %r11, -712(%rbp)
movq $0, %r12
movq %r12, -728(%rbp)
movq -728(%rbp), %r13
movq -736(%rbp), %r10
addq %r13, %r11
movq %r11, -736(%rbp)
movq -656(%rbp), %r13
movq -736(%rbp), %r13
movq -576(%rbp), %r10
movq -776(%rbp), %r10
L32:
movq -272(%rbp), %r10
movq -776(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
L35:
movq -152(%rbp), %r10
movq -272(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
L38:
jmp L74
L36:
movq $8, %r11
movq %r11, -824(%rbp)
movq -824(%rbp), %r13
movq -832(%rbp), %r10
addq %r13, %r12
movq %r12, -832(%rbp)
movq -152(%rbp), %r13
movq -832(%rbp), %r13
jmp L38
L33:
movq $16, %r11
movq %r11, -872(%rbp)
movq -872(%rbp), %r10
movq -880(%rbp), %r13
addq %r10, %r12
movq %r12, -880(%rbp)
movq -272(%rbp), %r10
movq -880(%rbp), %r10
jmp L35
L30:
movq -528(%rbp), %r10
movq %r10, %r12
movq %r12, -776(%rbp)
movq $-8, %r11
movq %r11, -936(%rbp)
movq -936(%rbp), %r13
movq -944(%rbp), %r10
addq %r13, %r12
movq %r12, -944(%rbp)
movq -944(%rbp), %r13
movq %r13, %r11
movq %r11, -968(%rbp)
movq $16, %r12
movq %r12, -984(%rbp)
movq -984(%rbp), %r13
movq %r13, %rdi
callq allocRecord
movq %rax, %r11
movq %r11, -1000(%rbp)
movq -968(%rbp), %r10
movq -1000(%rbp), %r10
movq (%r10), %r10
movq -968(%rbp), %r13
movq (%r13), %r12
movq %r12, -1024(%rbp)
movq $8, %r11
movq %r11, -1040(%rbp)
movq -1040(%rbp), %r13
movq -1048(%rbp), %r10
addq %r13, %r12
movq %r12, -1048(%rbp)
movq $16, %r11
movq %r11, -1072(%rbp)
movq -1072(%rbp), %r10
movq -1080(%rbp), %r13
addq %r10, %r12
movq %r12, -1080(%rbp)
movq -1080(%rbp), %r10
movq (%r10), %r11
movq %r11, -1104(%rbp)
movq $0, %r12
movq %r12, -1120(%rbp)
movq -1120(%rbp), %r13
movq -1128(%rbp), %r10
addq %r13, %r11
movq %r11, -1128(%rbp)
movq -1048(%rbp), %r13
movq -1128(%rbp), %r13
movq -776(%rbp), %r10
movq -968(%rbp), %r10
jmp L32
L74:
addq $1176, %rsp
popq %rbp
ret


.size merge, .-merge
.globl f
.type f, @function
f:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $432, %rsp
L77:
movq $8, %r12
movq %r12, -8(%rbp)
movq -8(%rbp), %r10
movq -16(%rbp), %r13
addq %r10, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq (%r10), %r12
movq %r12, -40(%rbp)
movq $0, %r11
movq %r11, -56(%rbp)
movq -40(%rbp), %r13
movq -56(%rbp), %r10
cmpq %r10, %r13
jg L47
L48:
jmp L76
L47:
movq $8, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
addq %r13, %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r13
movq (%r13), %r12
movq %r12, -112(%rbp)
movq $10, %r11
movq %r11, -128(%rbp)
movq -112(%rbp), %r10
movq %r10, %rax
movq -128(%rbp), %r13
idivq %r13
movq %rax, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %rdi
callq f
movq $8, %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r13
movq -176(%rbp), %r10
addq %r13, %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r13
movq (%r13), %r11
movq %r11, -200(%rbp)
movq $8, %r12
movq %r12, -216(%rbp)
movq -216(%rbp), %r10
movq -224(%rbp), %r13
addq %r10, %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r10
movq (%r10), %r12
movq %r12, -248(%rbp)
movq $10, %r11
movq %r11, -264(%rbp)
movq -248(%rbp), %r13
movq %r13, %rax
movq -264(%rbp), %r10
idivq %r10
movq %rax, %r12
movq %r12, -288(%rbp)
movq $10, %r11
movq %r11, -296(%rbp)
movq -288(%rbp), %r13
movq %r13, %rax
movq -296(%rbp), %r10
imulq %r10
movq %rax, %r12
movq %r12, -320(%rbp)
movq -320(%rbp), %r13
movq -328(%rbp), %r10
subq %r13, %r11
movq %r11, -328(%rbp)
movq -328(%rbp), %r13
movq %r13, %r12
movq %r12, -352(%rbp)
movq L46(%rip), %r11
movq %r11, -368(%rbp)
movq -368(%rbp), %r10
movq %r10, %rdi
callq ord
movq %rax, %r12
movq %r12, -384(%rbp)
movq -384(%rbp), %r13
movq -392(%rbp), %r10
addq %r13, %r11
movq %r11, -392(%rbp)
movq -392(%rbp), %r13
movq %r13, %rdi
callq chr
movq %rax, %r12
movq %r12, -424(%rbp)
movq -424(%rbp), %r10
movq %r10, %rdi
callq print
jmp L48
L76:
addq $432, %rsp
popq %rbp
ret


.size f, .-f
.globl printint
.type printint, @function
printint:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $536, %rsp
L79:
movq $8, %r11
movq %r11, -24(%rbp)
movq -24(%rbp), %r13
movq -32(%rbp), %r10
addq %r13, %r12
movq %r12, -32(%rbp)
movq -32(%rbp), %r13
movq (%r13), %r11
movq %r11, -56(%rbp)
movq $0, %r12
movq %r12, -72(%rbp)
movq -56(%rbp), %r10
movq -72(%rbp), %r13
cmpq %r13, %r10
jl L57
L58:
movq $-16, %r11
movq %r11, -96(%rbp)
movq -96(%rbp), %r10
movq -104(%rbp), %r13
addq %r10, %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r10
movq %r10, %r11
movq %r11, -128(%rbp)
movq $8, %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r10
movq -152(%rbp), %r13
addq %r10, %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r10
movq (%r10), %r12
movq %r12, -176(%rbp)
movq $0, %r11
movq %r11, -192(%rbp)
movq -176(%rbp), %r13
movq -192(%rbp), %r10
cmpq %r10, %r13
jg L54
L55:
movq $-8, %r12
movq %r12, -216(%rbp)
movq -216(%rbp), %r13
movq -224(%rbp), %r10
addq %r13, %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r13
movq %r13, %r12
movq %r12, -248(%rbp)
movq L53(%rip), %r11
movq %r11, -264(%rbp)
movq -264(%rbp), %r13
movq %r13, %rdi
callq print
movq %rax, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r10
movq -288(%rbp), %r13
movq (%r13), %r10
L56:
movq -288(%rbp), %r10
movq -304(%rbp), %r10
L59:
jmp L78
L57:
movq -128(%rbp), %r13
movq %r13, %r12
movq %r12, -304(%rbp)
movq L51(%rip), %r11
movq %r11, -336(%rbp)
movq -336(%rbp), %r10
movq %r10, %rdi
callq print
movq $0, %r12
movq %r12, -352(%rbp)
movq $8, %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r13
movq -368(%rbp), %r10
addq %r13, %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r13
movq (%r13), %r11
movq %r11, -392(%rbp)
movq -392(%rbp), %r10
movq -408(%rbp), %r13
subq %r10, %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r10
movq %r10, %rdi
callq f
movq -304(%rbp), %r13
movq (%r13), %rax
jmp L59
L54:
movq -248(%rbp), %r10
movq %r10, %r11
movq %r11, -288(%rbp)
movq $8, %r11
movq %r11, -464(%rbp)
movq -464(%rbp), %r13
movq -472(%rbp), %r10
addq %r13, %r12
movq %r12, -472(%rbp)
movq -472(%rbp), %r13
movq (%r13), %r11
movq %r11, -496(%rbp)
movq -496(%rbp), %r10
movq %r10, %rdi
callq f
movq %rax, %r12
movq %r12, -520(%rbp)
movq -288(%rbp), %r13
movq -520(%rbp), %r13
movq (%r13), %r13
jmp L56
L78:
addq $536, %rsp
popq %rbp
ret


.size printint, .-printint
.globl printlist
.type printlist, @function
printlist:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $520, %rsp
L81:
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
je L64
L65:
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
movq -136(%rbp), %r13
movq -144(%rbp), %r10
addq %r13, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r13
movq (%r13), %r12
movq %r12, -168(%rbp)
movq $0, %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r10
movq -192(%rbp), %r13
addq %r10, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r10
movq (%r10), %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r13
movq %r13, %rdi
callq printint
movq $8, %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r10
movq -248(%rbp), %r13
addq %r10, %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq (%r10), %r12
movq %r12, -272(%rbp)
movq $0, %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r13
movq -296(%rbp), %r10
addq %r13, %r12
movq %r12, -296(%rbp)
movq -296(%rbp), %r13
movq (%r13), %r11
movq %r11, -320(%rbp)
movq -320(%rbp), %r10
movq %r10, %rdi
callq printint
movq L63(%rip), %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r13
movq %r13, %rdi
callq print
movq $8, %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r10
movq -368(%rbp), %r13
addq %r10, %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r10
movq (%r10), %r11
movq %r11, -392(%rbp)
movq $8, %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r13
movq -416(%rbp), %r10
addq %r13, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r13
movq (%r13), %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r10
movq %r10, %rdi
callq printlist
movq -464(%rbp), %r13
movq (%r13), %rax
L66:
jmp L80
L64:
movq -120(%rbp), %r10
movq %r10, %r11
movq %r11, -464(%rbp)
movq L61(%rip), %r12
movq %r12, -488(%rbp)
movq -488(%rbp), %r13
movq %r13, %rdi
callq print
movq %rax, %r11
movq %r11, -504(%rbp)
movq -464(%rbp), %r10
movq -504(%rbp), %r10
movq (%r10), %r10
jmp L66
L80:
addq $520, %rsp
popq %rbp
ret


.size printlist, .-printlist
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $448, %rsp
L83:
movq $-16, %r12
movq %r12, -56(%rbp)
movq -56(%rbp), %r13
movq -64(%rbp), %r10
addq %r13, %r11
movq %r11, -64(%rbp)
movq -64(%rbp), %r13
movq %r13, %r12
movq %r12, -88(%rbp)
callq getchar
movq %rax, %r11
movq %r11, -104(%rbp)
movq -88(%rbp), %r10
movq -104(%rbp), %r13
movq (%r10), %r13
movq $-32, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r10
movq -136(%rbp), %r13
addq %r10, %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r10
movq %r10, %r12
movq %r12, -160(%rbp)
callq readlist
movq %rax, %r11
movq %r11, -176(%rbp)
movq -160(%rbp), %r13
movq -176(%rbp), %r10
movq (%r13), %r10
movq $-48, %r12
movq %r12, -200(%rbp)
movq -200(%rbp), %r13
movq -208(%rbp), %r10
addq %r13, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq %r13, %r12
movq %r12, -232(%rbp)
movq $-8, %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r13
movq -256(%rbp), %r10
addq %r13, %r12
movq %r12, -256(%rbp)
movq -256(%rbp), %r13
movq %r13, %r11
movq %r11, -280(%rbp)
callq getchar
movq %rax, %r12
movq %r12, -296(%rbp)
movq -280(%rbp), %r10
movq -296(%rbp), %r13
movq (%r10), %r13
callq readlist
movq -232(%rbp), %r10
movq (%r10), %rax
movq $-24, %r11
movq %r11, -328(%rbp)
movq -328(%rbp), %r10
movq -336(%rbp), %r13
addq %r10, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r10
movq (%r10), %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r13
movq %r13, %rsi
movq $-40, %r12
movq %r12, -384(%rbp)
movq -384(%rbp), %r10
movq -392(%rbp), %r13
addq %r10, %r11
movq %r11, -392(%rbp)
movq -392(%rbp), %r10
movq (%r10), %r12
movq %r12, -416(%rbp)
movq -416(%rbp), %r13
movq %r13, %rdi
callq merge
movq %rax, %r11
movq %r11, -440(%rbp)
movq -440(%rbp), %r10
movq %r10, %rdi
callq printlist
jmp L82
L82:
addq $448, %rsp
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
