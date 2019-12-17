.text
.globl nop
.type nop, @function
nop:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %rdi, -8(%rbp)
L33:
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
jmp L32
L32:
addq $16, %rsp
popq %rbp
ret


.size nop, .-nop
.globl init
.type init, @function
init:
pushq %rbp
movq %rsp, %rbp
subq $232, %rsp
movq %rdi, -8(%rbp)
L35:
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
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -56(%rbp), %r10
movq $1, %r10
movq %r10, -56(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r11
subq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -56(%rbp)
movq %rbp, %r10
movq -48(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -48(%rbp)
movq -64(%rbp), %r10
movq $0, %r10
movq %r10, -64(%rbp)
movq %rbp, %r10
movq -64(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -64(%rbp)
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
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -96(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, -88(%rbp)
movq -80(%rbp), %r10
movq -96(%rbp), %r11
cmpq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -96(%rbp)
jle L3
L2:
jmp L34
L3:
movq -104(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, %rbp
movq -112(%rbp), %r10
movq -104(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, -104(%rbp)
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -128(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
movq -136(%rbp), %r10
movq $8, %r10
movq %r10, -136(%rbp)
movq %rax, %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -128(%rbp)
movq -136(%rbp), %r10
imulq %r10
movq %r10, -136(%rbp)
movq -144(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, %rax
movq -120(%rbp), %r10
movq -144(%rbp), %r11
addq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -144(%rbp)
movq -152(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -152(%rbp)
movq %r11, %rbp
movq -160(%rbp), %r10
movq -152(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -160(%rbp)
movq %r11, -152(%rbp)
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
movq -168(%rbp), %r10
movq -176(%rbp), %r11
subq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -176(%rbp)
movq -120(%rbp), %r10
movq -168(%rbp), %r11
movq %r11, (%r10)
movq %r10, -120(%rbp)
movq %r11, -168(%rbp)
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
movq -184(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -184(%rbp)
movq %r11, %rbp
movq -192(%rbp), %r10
movq -184(%rbp), %r11
movq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, -184(%rbp)
movq -200(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, %rbp
movq -208(%rbp), %r10
movq -200(%rbp), %r11
movq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, -200(%rbp)
movq -192(%rbp), %r10
movq -208(%rbp), %r11
cmpq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, -208(%rbp)
jge L2
L4:
movq -216(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -216(%rbp)
movq %r11, %rbp
movq -224(%rbp), %r10
movq -216(%rbp), %r11
movq %r11, %r10
movq %r10, -224(%rbp)
movq %r11, -216(%rbp)
movq -232(%rbp), %r10
movq $1, %r10
movq %r10, -232(%rbp)
movq -224(%rbp), %r10
movq -232(%rbp), %r11
addq %r11, %r10
movq %r10, -224(%rbp)
movq %r11, -232(%rbp)
movq %rbp, %r10
movq -224(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -224(%rbp)
jmp L3
L34:
addq $232, %rsp
popq %rbp
ret


.size init, .-init
.globl quicksort
.type quicksort, @function
quicksort:
pushq %rbp
movq %rsp, %rbp
subq $888, %rsp
movq %rdx, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rdi, -24(%rbp)
L37:
movq -56(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq %rbp, %r10
movq -56(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -56(%rbp)
movq -64(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -64(%rbp)
movq %r11, %rbp
movq %rbp, %r10
movq -64(%rbp), %r11
movq %r11, -40(%r10)
movq %r10, %rbp
movq %r11, -64(%rbp)
movq -72(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -72(%rbp)
movq %r11, %rbp
movq -80(%rbp), %r10
movq -72(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, -72(%rbp)
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
movq $8, %r10
movq %r10, -104(%rbp)
movq %rax, %r10
movq -96(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -96(%rbp)
movq -104(%rbp), %r10
imulq %r10
movq %r10, -104(%rbp)
movq -112(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, %rax
movq -88(%rbp), %r10
movq -112(%rbp), %r11
addq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -112(%rbp)
movq -120(%rbp), %r10
movq -88(%rbp), %r11
movq (%r11), %r10
movq %r10, -120(%rbp)
movq %r11, -88(%rbp)
movq %rbp, %r10
movq -120(%rbp), %r11
movq %r11, -48(%r10)
movq %r10, %rbp
movq %r11, -120(%rbp)
movq -128(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -144(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -144(%rbp)
movq %r11, %rbp
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
jl L24
L25:
jmp L36
L24:
L5:
movq -160(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -160(%rbp)
movq %r11, %rbp
movq -168(%rbp), %r10
movq -160(%rbp), %r11
movq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -160(%rbp)
movq -176(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
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
jl L6
L7:
movq -192(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -192(%rbp)
movq %r11, %rbp
movq -200(%rbp), %r10
movq -192(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -200(%rbp)
movq %r11, -192(%rbp)
movq -208(%rbp), %r10
movq -200(%rbp), %r11
movq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, -200(%rbp)
movq -216(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -216(%rbp)
movq %r11, %rbp
movq -224(%rbp), %r10
movq $8, %r10
movq %r10, -224(%rbp)
movq %rax, %r10
movq -216(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -216(%rbp)
movq -224(%rbp), %r10
imulq %r10
movq %r10, -224(%rbp)
movq -232(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -232(%rbp)
movq %r11, %rax
movq -208(%rbp), %r10
movq -232(%rbp), %r11
addq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, -232(%rbp)
movq -240(%rbp), %r10
movq %rbp, %r10
movq %r10, -240(%rbp)
movq -248(%rbp), %r10
movq $-48, %r10
movq %r10, -248(%rbp)
movq -240(%rbp), %r10
movq -248(%rbp), %r11
addq %r11, %r10
movq %r10, -240(%rbp)
movq %r11, -248(%rbp)
movq -208(%rbp), %r10
movq -240(%rbp), %r11
movq (%r11), %r13
movq %r13, (%r10)
movq %r10, -208(%rbp)
movq %r11, -240(%rbp)
movq %rbp, %r10
movq %r10, %rdx
movq %r10, %rbp
movq -256(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -256(%rbp)
movq %r11, %rbp
movq -264(%rbp), %r10
movq -256(%rbp), %r11
movq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, -256(%rbp)
movq -272(%rbp), %r10
movq $1, %r10
movq %r10, -272(%rbp)
movq -264(%rbp), %r10
movq -272(%rbp), %r11
subq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, -272(%rbp)
movq -264(%rbp), %r10
movq %r10, %rsi
movq %r10, -264(%rbp)
movq -280(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -280(%rbp)
movq %r11, %rbp
movq -280(%rbp), %r10
movq %r10, %rdi
movq %r10, -280(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq quicksort
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rdx
movq %r10, %rbp
movq -288(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -288(%rbp)
movq %r11, %rbp
movq -288(%rbp), %r10
movq %r10, %rsi
movq %r10, -288(%rbp)
movq -296(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -296(%rbp)
movq %r11, %rbp
movq -304(%rbp), %r10
movq -296(%rbp), %r11
movq %r11, %r10
movq %r10, -304(%rbp)
movq %r11, -296(%rbp)
movq -312(%rbp), %r10
movq $1, %r10
movq %r10, -312(%rbp)
movq -304(%rbp), %r10
movq -312(%rbp), %r11
addq %r11, %r10
movq %r10, -304(%rbp)
movq %r11, -312(%rbp)
movq -304(%rbp), %r10
movq %r10, %rdi
movq %r10, -304(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq quicksort
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L25
L6:
L13:
movq -320(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -320(%rbp)
movq %r11, %rbp
movq -328(%rbp), %r10
movq -320(%rbp), %r11
movq %r11, %r10
movq %r10, -328(%rbp)
movq %r11, -320(%rbp)
movq -336(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -336(%rbp)
movq %r11, %rbp
movq -344(%rbp), %r10
movq -336(%rbp), %r11
movq %r11, %r10
movq %r10, -344(%rbp)
movq %r11, -336(%rbp)
movq -328(%rbp), %r10
movq -344(%rbp), %r11
cmpq %r11, %r10
movq %r10, -328(%rbp)
movq %r11, -344(%rbp)
jl L8
L9:
movq -352(%rbp), %r10
movq $0, %r10
movq %r10, -352(%rbp)
movq %rax, %r10
movq -352(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -352(%rbp)
L10:
movq -360(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -360(%rbp)
movq %r11, %rax
movq -368(%rbp), %r10
movq $0, %r10
movq %r10, -368(%rbp)
movq -376(%rbp), %r10
movq -368(%rbp), %r11
movq %r11, %r10
movq %r10, -376(%rbp)
movq %r11, -368(%rbp)
movq -360(%rbp), %r10
movq -376(%rbp), %r11
cmpq %r11, %r10
movq %r10, -360(%rbp)
movq %r11, -376(%rbp)
jne L14
L15:
movq -384(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -384(%rbp)
movq %r11, %rbp
movq -392(%rbp), %r10
movq -384(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -392(%rbp)
movq %r11, -384(%rbp)
movq -400(%rbp), %r10
movq -392(%rbp), %r11
movq %r11, %r10
movq %r10, -400(%rbp)
movq %r11, -392(%rbp)
movq -408(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -408(%rbp)
movq %r11, %rbp
movq -416(%rbp), %r10
movq $8, %r10
movq %r10, -416(%rbp)
movq %rax, %r10
movq -408(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -408(%rbp)
movq -416(%rbp), %r10
imulq %r10
movq %r10, -416(%rbp)
movq -424(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -424(%rbp)
movq %r11, %rax
movq -400(%rbp), %r10
movq -424(%rbp), %r11
addq %r11, %r10
movq %r10, -400(%rbp)
movq %r11, -424(%rbp)
movq -432(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -432(%rbp)
movq %r11, %rbp
movq -440(%rbp), %r10
movq -432(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -440(%rbp)
movq %r11, -432(%rbp)
movq -448(%rbp), %r10
movq -440(%rbp), %r11
movq %r11, %r10
movq %r10, -448(%rbp)
movq %r11, -440(%rbp)
movq -456(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -456(%rbp)
movq %r11, %rbp
movq -464(%rbp), %r10
movq $8, %r10
movq %r10, -464(%rbp)
movq %rax, %r10
movq -456(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -456(%rbp)
movq -464(%rbp), %r10
imulq %r10
movq %r10, -464(%rbp)
movq -472(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -472(%rbp)
movq %r11, %rax
movq -448(%rbp), %r10
movq -472(%rbp), %r11
addq %r11, %r10
movq %r10, -448(%rbp)
movq %r11, -472(%rbp)
movq -400(%rbp), %r10
movq -448(%rbp), %r11
movq (%r11), %r13
movq %r13, (%r10)
movq %r10, -400(%rbp)
movq %r11, -448(%rbp)
L21:
movq -480(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -480(%rbp)
movq %r11, %rbp
movq -488(%rbp), %r10
movq -480(%rbp), %r11
movq %r11, %r10
movq %r10, -488(%rbp)
movq %r11, -480(%rbp)
movq -496(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -496(%rbp)
movq %r11, %rbp
movq -504(%rbp), %r10
movq -496(%rbp), %r11
movq %r11, %r10
movq %r10, -504(%rbp)
movq %r11, -496(%rbp)
movq -488(%rbp), %r10
movq -504(%rbp), %r11
cmpq %r11, %r10
movq %r10, -488(%rbp)
movq %r11, -504(%rbp)
jl L16
L17:
movq -512(%rbp), %r10
movq $0, %r10
movq %r10, -512(%rbp)
movq %rax, %r10
movq -512(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -512(%rbp)
L18:
movq -520(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -520(%rbp)
movq %r11, %rax
movq -528(%rbp), %r10
movq $0, %r10
movq %r10, -528(%rbp)
movq -536(%rbp), %r10
movq -528(%rbp), %r11
movq %r11, %r10
movq %r10, -536(%rbp)
movq %r11, -528(%rbp)
movq -520(%rbp), %r10
movq -536(%rbp), %r11
cmpq %r11, %r10
movq %r10, -520(%rbp)
movq %r11, -536(%rbp)
jne L22
L23:
movq -544(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -544(%rbp)
movq %r11, %rbp
movq -552(%rbp), %r10
movq -544(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -552(%rbp)
movq %r11, -544(%rbp)
movq -560(%rbp), %r10
movq -552(%rbp), %r11
movq %r11, %r10
movq %r10, -560(%rbp)
movq %r11, -552(%rbp)
movq -568(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -568(%rbp)
movq %r11, %rbp
movq -576(%rbp), %r10
movq $8, %r10
movq %r10, -576(%rbp)
movq %rax, %r10
movq -568(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -568(%rbp)
movq -576(%rbp), %r10
imulq %r10
movq %r10, -576(%rbp)
movq -584(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -584(%rbp)
movq %r11, %rax
movq -560(%rbp), %r10
movq -584(%rbp), %r11
addq %r11, %r10
movq %r10, -560(%rbp)
movq %r11, -584(%rbp)
movq -592(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -592(%rbp)
movq %r11, %rbp
movq -600(%rbp), %r10
movq -592(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -600(%rbp)
movq %r11, -592(%rbp)
movq -608(%rbp), %r10
movq -600(%rbp), %r11
movq %r11, %r10
movq %r10, -608(%rbp)
movq %r11, -600(%rbp)
movq -616(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -616(%rbp)
movq %r11, %rbp
movq -624(%rbp), %r10
movq $8, %r10
movq %r10, -624(%rbp)
movq %rax, %r10
movq -616(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -616(%rbp)
movq -624(%rbp), %r10
imulq %r10
movq %r10, -624(%rbp)
movq -632(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -632(%rbp)
movq %r11, %rax
movq -608(%rbp), %r10
movq -632(%rbp), %r11
addq %r11, %r10
movq %r10, -608(%rbp)
movq %r11, -632(%rbp)
movq -560(%rbp), %r10
movq -608(%rbp), %r11
movq (%r11), %r13
movq %r13, (%r10)
movq %r10, -560(%rbp)
movq %r11, -608(%rbp)
jmp L5
L8:
movq -640(%rbp), %r10
movq $1, %r10
movq %r10, -640(%rbp)
movq -648(%rbp), %r10
movq -640(%rbp), %r11
movq %r11, %r10
movq %r10, -648(%rbp)
movq %r11, -640(%rbp)
movq -656(%rbp), %r10
movq %rbp, %r11
movq -48(%r11), %r10
movq %r10, -656(%rbp)
movq %r11, %rbp
movq -664(%rbp), %r10
movq -656(%rbp), %r11
movq %r11, %r10
movq %r10, -664(%rbp)
movq %r11, -656(%rbp)
movq -672(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -672(%rbp)
movq %r11, %rbp
movq -680(%rbp), %r10
movq -672(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -680(%rbp)
movq %r11, -672(%rbp)
movq -688(%rbp), %r10
movq -680(%rbp), %r11
movq %r11, %r10
movq %r10, -688(%rbp)
movq %r11, -680(%rbp)
movq -696(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -696(%rbp)
movq %r11, %rbp
movq -704(%rbp), %r10
movq $8, %r10
movq %r10, -704(%rbp)
movq %rax, %r10
movq -696(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -696(%rbp)
movq -704(%rbp), %r10
imulq %r10
movq %r10, -704(%rbp)
movq -712(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -712(%rbp)
movq %r11, %rax
movq -688(%rbp), %r10
movq -712(%rbp), %r11
addq %r11, %r10
movq %r10, -688(%rbp)
movq %r11, -712(%rbp)
movq -720(%rbp), %r10
movq -688(%rbp), %r11
movq (%r11), %r10
movq %r10, -720(%rbp)
movq %r11, -688(%rbp)
movq -728(%rbp), %r10
movq -720(%rbp), %r11
movq %r11, %r10
movq %r10, -728(%rbp)
movq %r11, -720(%rbp)
movq -664(%rbp), %r10
movq -728(%rbp), %r11
cmpq %r11, %r10
movq %r10, -664(%rbp)
movq %r11, -728(%rbp)
jle L11
L12:
movq -736(%rbp), %r10
movq $0, %r10
movq %r10, -736(%rbp)
movq -648(%rbp), %r10
movq -736(%rbp), %r11
movq %r11, %r10
movq %r10, -648(%rbp)
movq %r11, -736(%rbp)
L11:
movq %rax, %r10
movq -648(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -648(%rbp)
jmp L10
L14:
movq -744(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -744(%rbp)
movq %r11, %rbp
movq -752(%rbp), %r10
movq -744(%rbp), %r11
movq %r11, %r10
movq %r10, -752(%rbp)
movq %r11, -744(%rbp)
movq -760(%rbp), %r10
movq $1, %r10
movq %r10, -760(%rbp)
movq -752(%rbp), %r10
movq -760(%rbp), %r11
subq %r11, %r10
movq %r10, -752(%rbp)
movq %r11, -760(%rbp)
movq %rbp, %r10
movq -752(%rbp), %r11
movq %r11, -40(%r10)
movq %r10, %rbp
movq %r11, -752(%rbp)
jmp L13
L16:
movq -768(%rbp), %r10
movq $1, %r10
movq %r10, -768(%rbp)
movq -776(%rbp), %r10
movq -768(%rbp), %r11
movq %r11, %r10
movq %r10, -776(%rbp)
movq %r11, -768(%rbp)
movq -784(%rbp), %r10
movq %rbp, %r11
movq -48(%r11), %r10
movq %r10, -784(%rbp)
movq %r11, %rbp
movq -792(%rbp), %r10
movq -784(%rbp), %r11
movq %r11, %r10
movq %r10, -792(%rbp)
movq %r11, -784(%rbp)
movq -800(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -800(%rbp)
movq %r11, %rbp
movq -808(%rbp), %r10
movq -800(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -808(%rbp)
movq %r11, -800(%rbp)
movq -816(%rbp), %r10
movq -808(%rbp), %r11
movq %r11, %r10
movq %r10, -816(%rbp)
movq %r11, -808(%rbp)
movq -824(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -824(%rbp)
movq %r11, %rbp
movq -832(%rbp), %r10
movq $8, %r10
movq %r10, -832(%rbp)
movq %rax, %r10
movq -824(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -824(%rbp)
movq -832(%rbp), %r10
imulq %r10
movq %r10, -832(%rbp)
movq -840(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -840(%rbp)
movq %r11, %rax
movq -816(%rbp), %r10
movq -840(%rbp), %r11
addq %r11, %r10
movq %r10, -816(%rbp)
movq %r11, -840(%rbp)
movq -848(%rbp), %r10
movq -816(%rbp), %r11
movq (%r11), %r10
movq %r10, -848(%rbp)
movq %r11, -816(%rbp)
movq -856(%rbp), %r10
movq -848(%rbp), %r11
movq %r11, %r10
movq %r10, -856(%rbp)
movq %r11, -848(%rbp)
movq -792(%rbp), %r10
movq -856(%rbp), %r11
cmpq %r11, %r10
movq %r10, -792(%rbp)
movq %r11, -856(%rbp)
jge L19
L20:
movq -864(%rbp), %r10
movq $0, %r10
movq %r10, -864(%rbp)
movq -776(%rbp), %r10
movq -864(%rbp), %r11
movq %r11, %r10
movq %r10, -776(%rbp)
movq %r11, -864(%rbp)
L19:
movq %rax, %r10
movq -776(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -776(%rbp)
jmp L18
L22:
movq -872(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -872(%rbp)
movq %r11, %rbp
movq -880(%rbp), %r10
movq -872(%rbp), %r11
movq %r11, %r10
movq %r10, -880(%rbp)
movq %r11, -872(%rbp)
movq -888(%rbp), %r10
movq $1, %r10
movq %r10, -888(%rbp)
movq -880(%rbp), %r10
movq -888(%rbp), %r11
addq %r11, %r10
movq %r10, -880(%rbp)
movq %r11, -888(%rbp)
movq %rbp, %r10
movq -880(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -880(%rbp)
jmp L21
L36:
addq $888, %rsp
popq %rbp
ret


.size quicksort, .-quicksort
.globl dosort
.type dosort, @function
dosort:
pushq %rbp
movq %rsp, %rbp
subq $264, %rsp
movq %rdi, -8(%rbp)
L39:
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
movq %r10, %rdx
movq %r10, %rbp
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
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -56(%rbp), %r10
movq $1, %r10
movq %r10, -56(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r11
subq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -56(%rbp)
movq -48(%rbp), %r10
movq %r10, %rsi
movq %r10, -48(%rbp)
movq -64(%rbp), %r10
movq $0, %r10
movq %r10, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
movq %r10, -64(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq quicksort
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
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
movq -88(%rbp), %r10
movq -80(%rbp), %r11
movq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -80(%rbp)
movq -96(%rbp), %r10
movq $1, %r10
movq %r10, -96(%rbp)
movq -88(%rbp), %r10
movq -96(%rbp), %r11
subq %r11, %r10
movq %r10, -88(%rbp)
movq %r11, -96(%rbp)
movq %rbp, %r10
movq -88(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -88(%rbp)
movq -104(%rbp), %r10
movq $0, %r10
movq %r10, -104(%rbp)
movq %rbp, %r10
movq -104(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -104(%rbp)
movq -112(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -112(%rbp)
movq %r11, %rbp
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -128(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
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
jle L28
L27:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -144(%rbp), %r10
leaq L31(%rip), %r10
movq %r10, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, %rdi
movq %r10, -144(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L38
L28:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -152(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -152(%rbp)
movq %r11, %rbp
movq -160(%rbp), %r10
movq -152(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -160(%rbp)
movq %r11, -152(%rbp)
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
movq $8, %r10
movq %r10, -184(%rbp)
movq %rax, %r10
movq -176(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -176(%rbp)
movq -184(%rbp), %r10
imulq %r10
movq %r10, -184(%rbp)
movq -192(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, %rax
movq -168(%rbp), %r10
movq -192(%rbp), %r11
addq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -192(%rbp)
movq -200(%rbp), %r10
movq -168(%rbp), %r11
movq (%r11), %r10
movq %r10, -200(%rbp)
movq %r11, -168(%rbp)
movq -200(%rbp), %r10
movq %r10, %rdi
movq %r10, -200(%rbp)
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
leaq -208(%rbp), %r10
leaq L30(%rip), %r10
movq %r10, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, %rdi
movq %r10, -208(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -216(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -216(%rbp)
movq %r11, %rbp
movq -224(%rbp), %r10
movq -216(%rbp), %r11
movq %r11, %r10
movq %r10, -224(%rbp)
movq %r11, -216(%rbp)
movq -232(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -232(%rbp)
movq %r11, %rbp
movq -240(%rbp), %r10
movq -232(%rbp), %r11
movq %r11, %r10
movq %r10, -240(%rbp)
movq %r11, -232(%rbp)
movq -224(%rbp), %r10
movq -240(%rbp), %r11
cmpq %r11, %r10
movq %r10, -224(%rbp)
movq %r11, -240(%rbp)
jge L27
L29:
movq -248(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
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
movq %rbp, %r10
movq -256(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -256(%rbp)
jmp L28
L38:
addq $264, %rsp
popq %rbp
ret


.size dosort, .-dosort
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $56, %rsp
movq %rdi, -8(%rbp)
L41:
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
callq dosort
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L40
L40:
addq $56, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L1:
.long 0
.string ""
L30:
.long 1
.string " "
L31:
.long 1
.string "\n"
