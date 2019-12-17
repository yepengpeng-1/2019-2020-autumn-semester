.text
.globl printb
.type printb, @function
printb:
pushq %rbp
movq %rsp, %rbp
subq $360, %rsp
movq %rdi, -8(%rbp)
L15:
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
jmp L14
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
movq -16(%r11), %r10
movq %r10, -264(%rbp)
movq %r11, %rbp
movq -272(%rbp), %r10
movq -264(%rbp), %r11
movq %r11, %r10
movq %r10, -272(%rbp)
movq %r11, -264(%rbp)
movq -280(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -280(%rbp)
movq %r11, %rbp
movq -288(%rbp), %r10
movq -280(%rbp), %r11
movq %r11, %r10
movq %r10, -288(%rbp)
movq %r11, -280(%rbp)
movq -272(%rbp), %r10
movq -288(%rbp), %r11
cmpq %r11, %r10
movq %r10, -272(%rbp)
movq %r11, -288(%rbp)
jg L9
L10:
leaq -296(%rbp), %r10
leaq L8(%rip), %r10
movq %r10, -296(%rbp)
movq %rax, %r10
movq -296(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -296(%rbp)
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
movq -304(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
movq %r10, -304(%rbp)
movq %r11, %rbp
movq -312(%rbp), %r10
movq -304(%rbp), %r11
movq %r11, %r10
movq %r10, -312(%rbp)
movq %r11, -304(%rbp)
movq -320(%rbp), %r10
movq %rbp, %r11
movq -40(%r11), %r10
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
jge L4
L6:
movq -336(%rbp), %r10
movq %rbp, %r11
movq -32(%r11), %r10
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
movq %r11, -32(%r10)
movq %r10, %rbp
movq %r11, -344(%rbp)
jmp L5
L9:
leaq -360(%rbp), %r10
leaq L7(%rip), %r10
movq %r10, -360(%rbp)
movq %rax, %r10
movq -360(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -360(%rbp)
jmp L11
L14:
addq $360, %rsp
popq %rbp
ret


.size printb, .-printb
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %rdi, -8(%rbp)
L17:
movq -16(%rbp), %r10
movq $8, %r10
movq %r10, -16(%rbp)
movq %rbp, %r10
movq -16(%rbp), %r11
movq %r11, -8(%r10)
movq %r10, %rbp
movq %r11, -16(%rbp)
movq %rbp, %r10
movq %r10, %rdi
movq %r10, %rbp
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printb
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L16
L16:
addq $16, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L7:
.long 1
.string "x"
L8:
.long 1
.string "y"
L12:
.long 1
.string "\n"
L13:
.long 1
.string "\n"
