.text
.globl printboard
.type printboard, @function
printboard:
pushq %rbp
movq %rsp, %rbp
subq $408, %rsp
movq %rdi, -8(%rbp)
L34:
movq -48(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, %rbp
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
movq %rbp, %r10
movq -64(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -64(%rbp)
movq -80(%rbp), %r10
movq $0, %r10
movq %r10, -80(%rbp)
movq %rbp, %r10
movq -80(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -80(%rbp)
movq -88(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -96(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, -88(%rbp)
movq -104(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
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
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -120(%rbp), %r10
leaq L13(%rip), %r10
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
jmp L33
L2:
movq -128(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -144(%rbp), %r10
movq -136(%rbp), %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, -136(%rbp)
movq -152(%rbp), %r10
movq $1, %r10
movq %r10, -152(%rbp)
movq -144(%rbp), %r10
movq -152(%rbp), %r11
subq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, -152(%rbp)
movq %rbp, %r10
movq -144(%rbp), %r11
movq %r11, -40(%r10)
movq %r10, %rbp
movq %r11, -144(%rbp)
movq -160(%rbp), %r10
movq $0, %r10
movq %r10, -160(%rbp)
movq %rbp, %r10
movq -160(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -160(%rbp)
movq -168(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -168(%rbp)
movq %r11, %rbp
movq -176(%rbp), %r10
movq -168(%rbp), %r11
movq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -168(%rbp)
movq -184(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
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
jle L5
L4:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -200(%rbp), %r10
leaq L12(%rip), %r10
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
jge L1
L3:
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
jmp L2
L5:
movq -264(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -264(%rbp)
movq %r11, %rbp
movq -272(%rbp), %r10
movq -264(%rbp), %r11
movq -24(%r11), %r10
movq %r10, -272(%rbp)
movq %r11, -264(%rbp)
movq -280(%rbp), %r10
movq -272(%rbp), %r11
movq %r11, %r10
movq %r10, -280(%rbp)
movq %r11, -272(%rbp)
movq -288(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -288(%rbp)
movq %r11, %rbp
movq -296(%rbp), %r10
movq $8, %r10
movq %r10, -296(%rbp)
movq %rax, %r10
movq -288(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -288(%rbp)
movq -296(%rbp), %r10
imulq %r10
movq %r10, -296(%rbp)
movq -304(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -304(%rbp)
movq %r11, %rax
movq -280(%rbp), %r10
movq -304(%rbp), %r11
addq %r11, %r10
movq %r10, -280(%rbp)
movq %r11, -304(%rbp)
movq -312(%rbp), %r10
movq -280(%rbp), %r11
movq (%r11), %r10
movq %r10, -312(%rbp)
movq %r11, -280(%rbp)
movq -320(%rbp), %r10
movq -312(%rbp), %r11
movq %r11, %r10
movq %r10, -320(%rbp)
movq %r11, -312(%rbp)
movq -328(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -328(%rbp)
movq %r11, %rbp
movq -336(%rbp), %r10
movq -328(%rbp), %r11
movq %r11, %r10
movq %r10, -336(%rbp)
movq %r11, -328(%rbp)
movq -320(%rbp), %r10
movq -336(%rbp), %r11
cmpq %r11, %r10
movq %r10, -320(%rbp)
movq %r11, -336(%rbp)
je L9
L10:
leaq -344(%rbp), %r10
leaq L8(%rip), %r10
movq %r10, -344(%rbp)
movq %rax, %r10
movq -344(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -344(%rbp)
L11:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq %rax, %r10
movq %r10, %rdi
movq %r10, %rax
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -352(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -352(%rbp)
movq %r11, %rbp
movq -360(%rbp), %r10
movq -352(%rbp), %r11
movq %r11, %r10
movq %r10, -360(%rbp)
movq %r11, -352(%rbp)
movq -368(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
movq %r10, -368(%rbp)
movq %r11, %rbp
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
jge L4
L6:
movq -384(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -384(%rbp)
movq %r11, %rbp
movq -392(%rbp), %r10
movq -384(%rbp), %r11
movq %r11, %r10
movq %r10, -392(%rbp)
movq %r11, -384(%rbp)
movq -400(%rbp), %r10
movq $1, %r10
movq %r10, -400(%rbp)
movq -392(%rbp), %r10
movq -400(%rbp), %r11
addq %r11, %r10
movq %r10, -392(%rbp)
movq %r11, -400(%rbp)
movq %rbp, %r10
movq -392(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -392(%rbp)
jmp L5
L9:
leaq -408(%rbp), %r10
leaq L7(%rip), %r10
movq %r10, -408(%rbp)
movq %rax, %r10
movq -408(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -408(%rbp)
jmp L11
L33:
addq $408, %rsp
popq %rbp
ret


.size printboard, .-printboard
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $1080, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L36:
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
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq -56(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -64(%rbp)
movq %r11, -56(%rbp)
movq -72(%rbp), %r10
movq -64(%rbp), %r11
movq %r11, %r10
movq %r10, -72(%rbp)
movq %r11, -64(%rbp)
movq -48(%rbp), %r10
movq -72(%rbp), %r11
cmpq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -72(%rbp)
je L30
L31:
movq -80(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -80(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq -80(%rbp), %r11
movq -8(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, -80(%rbp)
movq -96(%rbp), %r10
movq -88(%rbp), %r11
movq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, -88(%rbp)
movq -104(%rbp), %r10
movq $1, %r10
movq %r10, -104(%rbp)
movq -96(%rbp), %r10
movq -104(%rbp), %r11
subq %r11, %r10
movq %r10, -96(%rbp)
movq %r11, -104(%rbp)
movq %rbp, %r10
movq -96(%rbp), %r11
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -96(%rbp)
movq -112(%rbp), %r10
movq $0, %r10
movq %r10, -112(%rbp)
movq %rbp, %r10
movq -112(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -112(%rbp)
movq -120(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -120(%rbp)
movq %r11, %rbp
movq -128(%rbp), %r10
movq -120(%rbp), %r11
movq %r11, %r10
movq %r10, -128(%rbp)
movq %r11, -120(%rbp)
movq -136(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -136(%rbp)
movq %r11, %rbp
movq -144(%rbp), %r10
movq -136(%rbp), %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, -136(%rbp)
movq -128(%rbp), %r10
movq -144(%rbp), %r11
cmpq %r11, %r10
movq %r10, -128(%rbp)
movq %r11, -144(%rbp)
jle L15
L14:
movq -152(%rbp), %r10
movq $0, %r10
movq %r10, -152(%rbp)
movq %rax, %r10
movq -152(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -152(%rbp)
L32:
jmp L35
L30:
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printboard
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L32
L15:
movq -160(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -160(%rbp)
movq %r11, %rbp
movq -168(%rbp), %r10
movq -160(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -168(%rbp)
movq %r11, -160(%rbp)
movq -176(%rbp), %r10
movq -168(%rbp), %r11
movq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -168(%rbp)
movq -184(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -184(%rbp)
movq %r11, %rbp
movq -192(%rbp), %r10
movq $8, %r10
movq %r10, -192(%rbp)
movq %rax, %r10
movq -184(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -184(%rbp)
movq -192(%rbp), %r10
imulq %r10
movq %r10, -192(%rbp)
movq -200(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -200(%rbp)
movq %r11, %rax
movq -176(%rbp), %r10
movq -200(%rbp), %r11
addq %r11, %r10
movq %r10, -176(%rbp)
movq %r11, -200(%rbp)
movq -208(%rbp), %r10
movq -176(%rbp), %r11
movq (%r11), %r10
movq %r10, -208(%rbp)
movq %r11, -176(%rbp)
movq -216(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, %r10
movq %r10, -216(%rbp)
movq %r11, -208(%rbp)
movq -224(%rbp), %r10
movq $0, %r10
movq %r10, -224(%rbp)
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
je L17
L18:
movq -240(%rbp), %r10
movq $0, %r10
movq %r10, -240(%rbp)
movq %rax, %r10
movq -240(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -240(%rbp)
L19:
movq -248(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -248(%rbp)
movq %r11, %rax
movq -256(%rbp), %r10
movq $0, %r10
movq %r10, -256(%rbp)
movq -264(%rbp), %r10
movq -256(%rbp), %r11
movq %r11, %r10
movq %r10, -264(%rbp)
movq %r11, -256(%rbp)
movq -248(%rbp), %r10
movq -264(%rbp), %r11
cmpq %r11, %r10
movq %r10, -248(%rbp)
movq %r11, -264(%rbp)
jne L22
L23:
movq -272(%rbp), %r10
movq $0, %r10
movq %r10, -272(%rbp)
movq %rax, %r10
movq -272(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -272(%rbp)
L24:
movq -280(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -280(%rbp)
movq %r11, %rax
movq -288(%rbp), %r10
movq $0, %r10
movq %r10, -288(%rbp)
movq -296(%rbp), %r10
movq -288(%rbp), %r11
movq %r11, %r10
movq %r10, -296(%rbp)
movq %r11, -288(%rbp)
movq -280(%rbp), %r10
movq -296(%rbp), %r11
cmpq %r11, %r10
movq %r10, -280(%rbp)
movq %r11, -296(%rbp)
jne L27
L28:
movq -304(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -304(%rbp)
movq %r11, %rbp
movq -312(%rbp), %r10
movq -304(%rbp), %r11
movq %r11, %r10
movq %r10, -312(%rbp)
movq %r11, -304(%rbp)
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
movq -312(%rbp), %r10
movq -328(%rbp), %r11
cmpq %r11, %r10
movq %r10, -312(%rbp)
movq %r11, -328(%rbp)
jge L14
L16:
movq -336(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -336(%rbp)
movq %r11, %rbp
movq -344(%rbp), %r10
movq -336(%rbp), %r11
movq %r11, %r10
movq %r10, -344(%rbp)
movq %r11, -336(%rbp)
movq -352(%rbp), %r10
movq $1, %r10
movq %r10, -352(%rbp)
movq -344(%rbp), %r10
movq -352(%rbp), %r11
addq %r11, %r10
movq %r10, -344(%rbp)
movq %r11, -352(%rbp)
movq %rbp, %r10
movq -344(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -344(%rbp)
jmp L15
L17:
movq -360(%rbp), %r10
movq $1, %r10
movq %r10, -360(%rbp)
movq -368(%rbp), %r10
movq -360(%rbp), %r11
movq %r11, %r10
movq %r10, -368(%rbp)
movq %r11, -360(%rbp)
movq -376(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -376(%rbp)
movq %r11, %rbp
movq -384(%rbp), %r10
movq -376(%rbp), %r11
movq -32(%r11), %r10
movq %r10, -384(%rbp)
movq %r11, -376(%rbp)
movq -392(%rbp), %r10
movq -384(%rbp), %r11
movq %r11, %r10
movq %r10, -392(%rbp)
movq %r11, -384(%rbp)
movq -400(%rbp), %r10
movq -24(%rbp), %r10
movq %r10, -400(%rbp)
movq -400(%rbp), %r10
movq %rbp, %r11
addq -16(%r11), %r10
movq %r10, -400(%rbp)
movq %r11, %rbp
movq -408(%rbp), %r10
movq $8, %r10
movq %r10, -408(%rbp)
movq %rax, %r10
movq -400(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -400(%rbp)
movq -408(%rbp), %r10
imulq %r10
movq %r10, -408(%rbp)
movq -416(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -416(%rbp)
movq %r11, %rax
movq -392(%rbp), %r10
movq -416(%rbp), %r11
addq %r11, %r10
movq %r10, -392(%rbp)
movq %r11, -416(%rbp)
movq -424(%rbp), %r10
movq -392(%rbp), %r11
movq (%r11), %r10
movq %r10, -424(%rbp)
movq %r11, -392(%rbp)
movq -432(%rbp), %r10
movq -424(%rbp), %r11
movq %r11, %r10
movq %r10, -432(%rbp)
movq %r11, -424(%rbp)
movq -440(%rbp), %r10
movq $0, %r10
movq %r10, -440(%rbp)
movq -448(%rbp), %r10
movq -440(%rbp), %r11
movq %r11, %r10
movq %r10, -448(%rbp)
movq %r11, -440(%rbp)
movq -432(%rbp), %r10
movq -448(%rbp), %r11
cmpq %r11, %r10
movq %r10, -432(%rbp)
movq %r11, -448(%rbp)
je L20
L21:
movq -456(%rbp), %r10
movq $0, %r10
movq %r10, -456(%rbp)
movq -368(%rbp), %r10
movq -456(%rbp), %r11
movq %r11, %r10
movq %r10, -368(%rbp)
movq %r11, -456(%rbp)
L20:
movq %rax, %r10
movq -368(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -368(%rbp)
jmp L19
L22:
movq -464(%rbp), %r10
movq $1, %r10
movq %r10, -464(%rbp)
movq -472(%rbp), %r10
movq -464(%rbp), %r11
movq %r11, %r10
movq %r10, -472(%rbp)
movq %r11, -464(%rbp)
movq -480(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -480(%rbp)
movq %r11, %rbp
movq -488(%rbp), %r10
movq -480(%rbp), %r11
movq -40(%r11), %r10
movq %r10, -488(%rbp)
movq %r11, -480(%rbp)
movq -496(%rbp), %r10
movq -488(%rbp), %r11
movq %r11, %r10
movq %r10, -496(%rbp)
movq %r11, -488(%rbp)
movq -504(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -504(%rbp)
movq %r11, %rbp
movq -512(%rbp), %r10
movq -504(%rbp), %r11
movq %r11, %r10
movq %r10, -512(%rbp)
movq %r11, -504(%rbp)
movq -520(%rbp), %r10
movq $7, %r10
movq %r10, -520(%rbp)
movq -512(%rbp), %r10
movq -520(%rbp), %r11
addq %r11, %r10
movq %r10, -512(%rbp)
movq %r11, -520(%rbp)
movq -528(%rbp), %r10
movq -512(%rbp), %r11
movq %r11, %r10
movq %r10, -528(%rbp)
movq %r11, -512(%rbp)
movq -536(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -536(%rbp)
movq %r11, %rbp
movq -528(%rbp), %r10
movq -536(%rbp), %r11
subq %r11, %r10
movq %r10, -528(%rbp)
movq %r11, -536(%rbp)
movq -544(%rbp), %r10
movq $8, %r10
movq %r10, -544(%rbp)
movq %rax, %r10
movq -528(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -528(%rbp)
movq -544(%rbp), %r10
imulq %r10
movq %r10, -544(%rbp)
movq -552(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -552(%rbp)
movq %r11, %rax
movq -496(%rbp), %r10
movq -552(%rbp), %r11
addq %r11, %r10
movq %r10, -496(%rbp)
movq %r11, -552(%rbp)
movq -560(%rbp), %r10
movq -496(%rbp), %r11
movq (%r11), %r10
movq %r10, -560(%rbp)
movq %r11, -496(%rbp)
movq -568(%rbp), %r10
movq -560(%rbp), %r11
movq %r11, %r10
movq %r10, -568(%rbp)
movq %r11, -560(%rbp)
movq -576(%rbp), %r10
movq $0, %r10
movq %r10, -576(%rbp)
movq -584(%rbp), %r10
movq -576(%rbp), %r11
movq %r11, %r10
movq %r10, -584(%rbp)
movq %r11, -576(%rbp)
movq -568(%rbp), %r10
movq -584(%rbp), %r11
cmpq %r11, %r10
movq %r10, -568(%rbp)
movq %r11, -584(%rbp)
je L25
L26:
movq -592(%rbp), %r10
movq $0, %r10
movq %r10, -592(%rbp)
movq -472(%rbp), %r10
movq -592(%rbp), %r11
movq %r11, %r10
movq %r10, -472(%rbp)
movq %r11, -592(%rbp)
L25:
movq %rax, %r10
movq -472(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -472(%rbp)
jmp L24
L27:
movq -600(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -600(%rbp)
movq %r11, %rbp
movq -608(%rbp), %r10
movq -600(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -608(%rbp)
movq %r11, -600(%rbp)
movq -616(%rbp), %r10
movq -608(%rbp), %r11
movq %r11, %r10
movq %r10, -616(%rbp)
movq %r11, -608(%rbp)
movq -624(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -624(%rbp)
movq %r11, %rbp
movq -632(%rbp), %r10
movq $8, %r10
movq %r10, -632(%rbp)
movq %rax, %r10
movq -624(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -624(%rbp)
movq -632(%rbp), %r10
imulq %r10
movq %r10, -632(%rbp)
movq -640(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -640(%rbp)
movq %r11, %rax
movq -616(%rbp), %r10
movq -640(%rbp), %r11
addq %r11, %r10
movq %r10, -616(%rbp)
movq %r11, -640(%rbp)
movq -648(%rbp), %r10
movq $1, %r10
movq %r10, -648(%rbp)
movq -616(%rbp), %r10
movq -648(%rbp), %r11
movq %r11, (%r10)
movq %r10, -616(%rbp)
movq %r11, -648(%rbp)
movq -656(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -656(%rbp)
movq %r11, %rbp
movq -664(%rbp), %r10
movq -656(%rbp), %r11
movq -32(%r11), %r10
movq %r10, -664(%rbp)
movq %r11, -656(%rbp)
movq -672(%rbp), %r10
movq -664(%rbp), %r11
movq %r11, %r10
movq %r10, -672(%rbp)
movq %r11, -664(%rbp)
movq -680(%rbp), %r10
movq -24(%rbp), %r10
movq %r10, -680(%rbp)
movq -680(%rbp), %r10
movq %rbp, %r11
addq -16(%r11), %r10
movq %r10, -680(%rbp)
movq %r11, %rbp
movq -688(%rbp), %r10
movq $8, %r10
movq %r10, -688(%rbp)
movq %rax, %r10
movq -680(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -680(%rbp)
movq -688(%rbp), %r10
imulq %r10
movq %r10, -688(%rbp)
movq -696(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -696(%rbp)
movq %r11, %rax
movq -672(%rbp), %r10
movq -696(%rbp), %r11
addq %r11, %r10
movq %r10, -672(%rbp)
movq %r11, -696(%rbp)
movq -704(%rbp), %r10
movq $1, %r10
movq %r10, -704(%rbp)
movq -672(%rbp), %r10
movq -704(%rbp), %r11
movq %r11, (%r10)
movq %r10, -672(%rbp)
movq %r11, -704(%rbp)
movq -712(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -712(%rbp)
movq %r11, %rbp
movq -720(%rbp), %r10
movq -712(%rbp), %r11
movq -40(%r11), %r10
movq %r10, -720(%rbp)
movq %r11, -712(%rbp)
movq -728(%rbp), %r10
movq -720(%rbp), %r11
movq %r11, %r10
movq %r10, -728(%rbp)
movq %r11, -720(%rbp)
movq -736(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -736(%rbp)
movq %r11, %rbp
movq -744(%rbp), %r10
movq -736(%rbp), %r11
movq %r11, %r10
movq %r10, -744(%rbp)
movq %r11, -736(%rbp)
movq -752(%rbp), %r10
movq $7, %r10
movq %r10, -752(%rbp)
movq -744(%rbp), %r10
movq -752(%rbp), %r11
addq %r11, %r10
movq %r10, -744(%rbp)
movq %r11, -752(%rbp)
movq -760(%rbp), %r10
movq -744(%rbp), %r11
movq %r11, %r10
movq %r10, -760(%rbp)
movq %r11, -744(%rbp)
movq -768(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -768(%rbp)
movq %r11, %rbp
movq -760(%rbp), %r10
movq -768(%rbp), %r11
subq %r11, %r10
movq %r10, -760(%rbp)
movq %r11, -768(%rbp)
movq -776(%rbp), %r10
movq $8, %r10
movq %r10, -776(%rbp)
movq %rax, %r10
movq -760(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -760(%rbp)
movq -776(%rbp), %r10
imulq %r10
movq %r10, -776(%rbp)
movq -784(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -784(%rbp)
movq %r11, %rax
movq -728(%rbp), %r10
movq -784(%rbp), %r11
addq %r11, %r10
movq %r10, -728(%rbp)
movq %r11, -784(%rbp)
movq -792(%rbp), %r10
movq $1, %r10
movq %r10, -792(%rbp)
movq -728(%rbp), %r10
movq -792(%rbp), %r11
movq %r11, (%r10)
movq %r10, -728(%rbp)
movq %r11, -792(%rbp)
movq -800(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -800(%rbp)
movq %r11, %rbp
movq -808(%rbp), %r10
movq -800(%rbp), %r11
movq -24(%r11), %r10
movq %r10, -808(%rbp)
movq %r11, -800(%rbp)
movq -816(%rbp), %r10
movq -808(%rbp), %r11
movq %r11, %r10
movq %r10, -816(%rbp)
movq %r11, -808(%rbp)
movq -824(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
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
movq %rbp, %r10
movq %r10, -848(%rbp)
movq -856(%rbp), %r10
movq $-24, %r10
movq %r10, -856(%rbp)
movq -848(%rbp), %r10
movq -856(%rbp), %r11
addq %r11, %r10
movq %r10, -848(%rbp)
movq %r11, -856(%rbp)
movq -816(%rbp), %r10
movq -848(%rbp), %r11
movq (%r11), %r13
movq %r13, (%r10)
movq %r10, -816(%rbp)
movq %r11, -848(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -864(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -864(%rbp)
movq %r11, %rbp
movq -872(%rbp), %r10
movq -864(%rbp), %r11
movq %r11, %r10
movq %r10, -872(%rbp)
movq %r11, -864(%rbp)
movq -880(%rbp), %r10
movq $1, %r10
movq %r10, -880(%rbp)
movq -872(%rbp), %r10
movq -880(%rbp), %r11
addq %r11, %r10
movq %r10, -872(%rbp)
movq %r11, -880(%rbp)
movq -872(%rbp), %r10
movq %r10, %rdi
movq %r10, -872(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq try
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -888(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -888(%rbp)
movq %r11, %rbp
movq -896(%rbp), %r10
movq -888(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -896(%rbp)
movq %r11, -888(%rbp)
movq -904(%rbp), %r10
movq -896(%rbp), %r11
movq %r11, %r10
movq %r10, -904(%rbp)
movq %r11, -896(%rbp)
movq -912(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -912(%rbp)
movq %r11, %rbp
movq -920(%rbp), %r10
movq $8, %r10
movq %r10, -920(%rbp)
movq %rax, %r10
movq -912(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -912(%rbp)
movq -920(%rbp), %r10
imulq %r10
movq %r10, -920(%rbp)
movq -928(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -928(%rbp)
movq %r11, %rax
movq -904(%rbp), %r10
movq -928(%rbp), %r11
addq %r11, %r10
movq %r10, -904(%rbp)
movq %r11, -928(%rbp)
movq -936(%rbp), %r10
movq $0, %r10
movq %r10, -936(%rbp)
movq -904(%rbp), %r10
movq -936(%rbp), %r11
movq %r11, (%r10)
movq %r10, -904(%rbp)
movq %r11, -936(%rbp)
movq -944(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -944(%rbp)
movq %r11, %rbp
movq -952(%rbp), %r10
movq -944(%rbp), %r11
movq -32(%r11), %r10
movq %r10, -952(%rbp)
movq %r11, -944(%rbp)
movq -960(%rbp), %r10
movq -952(%rbp), %r11
movq %r11, %r10
movq %r10, -960(%rbp)
movq %r11, -952(%rbp)
movq -968(%rbp), %r10
movq -24(%rbp), %r10
movq %r10, -968(%rbp)
movq -968(%rbp), %r10
movq %rbp, %r11
addq -16(%r11), %r10
movq %r10, -968(%rbp)
movq %r11, %rbp
movq -976(%rbp), %r10
movq $8, %r10
movq %r10, -976(%rbp)
movq %rax, %r10
movq -968(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -968(%rbp)
movq -976(%rbp), %r10
imulq %r10
movq %r10, -976(%rbp)
movq -984(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -984(%rbp)
movq %r11, %rax
movq -960(%rbp), %r10
movq -984(%rbp), %r11
addq %r11, %r10
movq %r10, -960(%rbp)
movq %r11, -984(%rbp)
movq -992(%rbp), %r10
movq $0, %r10
movq %r10, -992(%rbp)
movq -960(%rbp), %r10
movq -992(%rbp), %r11
movq %r11, (%r10)
movq %r10, -960(%rbp)
movq %r11, -992(%rbp)
movq -1000(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -1000(%rbp)
movq %r11, %rbp
movq -1008(%rbp), %r10
movq -1000(%rbp), %r11
movq -40(%r11), %r10
movq %r10, -1008(%rbp)
movq %r11, -1000(%rbp)
movq -1016(%rbp), %r10
movq -1008(%rbp), %r11
movq %r11, %r10
movq %r10, -1016(%rbp)
movq %r11, -1008(%rbp)
movq -1024(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -1024(%rbp)
movq %r11, %rbp
movq -1032(%rbp), %r10
movq -1024(%rbp), %r11
movq %r11, %r10
movq %r10, -1032(%rbp)
movq %r11, -1024(%rbp)
movq -1040(%rbp), %r10
movq $7, %r10
movq %r10, -1040(%rbp)
movq -1032(%rbp), %r10
movq -1040(%rbp), %r11
addq %r11, %r10
movq %r10, -1032(%rbp)
movq %r11, -1040(%rbp)
movq -1048(%rbp), %r10
movq -1032(%rbp), %r11
movq %r11, %r10
movq %r10, -1048(%rbp)
movq %r11, -1032(%rbp)
movq -1056(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -1056(%rbp)
movq %r11, %rbp
movq -1048(%rbp), %r10
movq -1056(%rbp), %r11
subq %r11, %r10
movq %r10, -1048(%rbp)
movq %r11, -1056(%rbp)
movq -1064(%rbp), %r10
movq $8, %r10
movq %r10, -1064(%rbp)
movq %rax, %r10
movq -1048(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -1048(%rbp)
movq -1064(%rbp), %r10
imulq %r10
movq %r10, -1064(%rbp)
movq -1072(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -1072(%rbp)
movq %r11, %rax
movq -1016(%rbp), %r10
movq -1072(%rbp), %r11
addq %r11, %r10
movq %r10, -1016(%rbp)
movq %r11, -1072(%rbp)
movq -1080(%rbp), %r10
movq $0, %r10
movq %r10, -1080(%rbp)
movq -1016(%rbp), %r10
movq -1080(%rbp), %r11
movq %r11, (%r10)
movq %r10, -1016(%rbp)
movq %r11, -1080(%rbp)
jmp L28
L35:
addq $1080, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $216, %rsp
movq %rdi, -8(%rbp)
L38:
movq -48(%rbp), %r10
movq $8, %r10
movq %r10, -48(%rbp)
movq %rbp, %r10
movq -48(%rbp), %r11
movq %r11, -8(%r10)
movq %r10, %rbp
movq %r11, -48(%rbp)
movq -56(%rbp), %r10
leaq -16(%rbp), %r10
movq %r10, -56(%rbp)
movq -64(%rbp), %r10
movq $0, %r10
movq %r10, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rsi
movq %r10, -64(%rbp)
movq -72(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -72(%rbp)
movq %r11, %rbp
movq -72(%rbp), %r10
movq %r10, %rdi
movq %r10, -72(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq initArray
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -80(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, %rax
movq -56(%rbp), %r10
movq -80(%rbp), %r11
movq %r11, (%r10)
movq %r10, -56(%rbp)
movq %r11, -80(%rbp)
movq -88(%rbp), %r10
leaq -24(%rbp), %r10
movq %r10, -88(%rbp)
movq -96(%rbp), %r10
movq $0, %r10
movq %r10, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %rsi
movq %r10, -96(%rbp)
movq -104(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -104(%rbp)
movq %r11, %rbp
movq -104(%rbp), %r10
movq %r10, %rdi
movq %r10, -104(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq initArray
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -112(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -112(%rbp)
movq %r11, %rax
movq -88(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, (%r10)
movq %r10, -88(%rbp)
movq %r11, -112(%rbp)
movq -120(%rbp), %r10
leaq -32(%rbp), %r10
movq %r10, -120(%rbp)
movq -128(%rbp), %r10
movq $0, %r10
movq %r10, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %rsi
movq %r10, -128(%rbp)
movq -136(%rbp), %r10
movq -8(%rbp), %r10
movq %r10, -136(%rbp)
movq -136(%rbp), %r10
movq %rbp, %r11
addq -8(%r11), %r10
movq %r10, -136(%rbp)
movq %r11, %rbp
movq -144(%rbp), %r10
movq -136(%rbp), %r11
movq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, -136(%rbp)
movq -152(%rbp), %r10
movq $1, %r10
movq %r10, -152(%rbp)
movq -144(%rbp), %r10
movq -152(%rbp), %r11
subq %r11, %r10
movq %r10, -144(%rbp)
movq %r11, -152(%rbp)
movq -144(%rbp), %r10
movq %r10, %rdi
movq %r10, -144(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq initArray
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -160(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -160(%rbp)
movq %r11, %rax
movq -120(%rbp), %r10
movq -160(%rbp), %r11
movq %r11, (%r10)
movq %r10, -120(%rbp)
movq %r11, -160(%rbp)
movq -168(%rbp), %r10
leaq -40(%rbp), %r10
movq %r10, -168(%rbp)
movq -176(%rbp), %r10
movq $0, %r10
movq %r10, -176(%rbp)
movq -176(%rbp), %r10
movq %r10, %rsi
movq %r10, -176(%rbp)
movq -184(%rbp), %r10
movq -8(%rbp), %r10
movq %r10, -184(%rbp)
movq -184(%rbp), %r10
movq %rbp, %r11
addq -8(%r11), %r10
movq %r10, -184(%rbp)
movq %r11, %rbp
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
subq %r11, %r10
movq %r10, -192(%rbp)
movq %r11, -200(%rbp)
movq -192(%rbp), %r10
movq %r10, %rdi
movq %r10, -192(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq initArray
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -208(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -208(%rbp)
movq %r11, %rax
movq -168(%rbp), %r10
movq -208(%rbp), %r11
movq %r11, (%r10)
movq %r10, -168(%rbp)
movq %r11, -208(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -216(%rbp), %r10
movq $0, %r10
movq %r10, -216(%rbp)
movq -216(%rbp), %r10
movq %r10, %rdi
movq %r10, -216(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq try
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L37
L37:
addq $216, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L7:
.long 2
.string " O"
L8:
.long 2
.string " ."
L12:
.long 1
.string "\n"
L13:
.long 1
.string "\n"
