.text
.globl nop
.type nop, @function

nop:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp
L15:
movq L2, %r11
movq %r11, -8(%rbp)
callq print
jmp L14
L14:
addq $8, %rsp
ret


.size nop, .-nop
.globl init
.type init, @function

init:
pushq %rbp
movq %rsp, %rbp
subq $272, %rsp
L17:
movq -264(%rbp), %r10
movq -272(%rbp), %r10
addq %r10, %r11
movq %r11, -272(%rbp)
movq -272(%rbp), %r10
movq %r10, %r11
movq %r11, -256(%rbp)
movq 8(%rbp), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r13
movq %r13, %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r10
movq %r10, %r12
movq %r12, -224(%rbp)
movq -232(%rbp), %r10
movq -8(%r10), %r11
movq %r11, -216(%rbp)
movq -200(%rbp), %r10
movq -208(%rbp), %r10
subq %r10, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq -256(%rbp), %r10
movq %r13, (%r10)
movq -192(%rbp), %r13
movq %r13, -8(%rbp)
movq -8(%rbp), %r11
movq %r11, -184(%rbp)
movq -256(%rbp), %r10
movq (%r10), %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r13
movq -184(%rbp), %r10
cmpq %r13, %r10
jle L4
L3:
jmp L16
L4:
movq 8(%rbp), %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %r11
movq %r11, -144(%rbp)
movq -152(%rbp), %r10
movq -24(%r10), %r12
movq %r12, -136(%rbp)
movq -8(%rbp), %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r13
movq %rax, %r13
movq -120(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -112(%rbp)
movq -104(%rbp), %r10
movq -112(%rbp), %r13
addq %r13, %r12
movq %r12, -104(%rbp)
movq -8(%rbp), %r11
movq %r11, -96(%rbp)
movq -96(%rbp), %r10
movq %rax, %r10
movq -88(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -80(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r13
addq %r10, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq -104(%rbp), %r13
movq %r10, (%r13)
callq nop
movq -8(%rbp), %r12
movq %r12, -56(%rbp)
movq -256(%rbp), %r13
movq (%r13), %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r13
movq -56(%rbp), %r10
cmpq %r13, %r10
jge L3
L5:
movq -8(%rbp), %r12
movq %r12, -40(%rbp)
movq -24(%rbp), %r13
movq -32(%rbp), %r13
addq %r13, %r12
movq %r12, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, -8(%rbp)
jmp L4
L16:
addq $272, %rsp
ret


.size init, .-init
.globl bsearch
.type bsearch, @function

bsearch:
pushq %rbp
movq %rsp, %rbp
subq $336, %rsp
L19:
movq 24(%rbp), %r11
movq %r11, -336(%rbp)
movq 16(%rbp), %r11
movq %r11, -328(%rbp)
movq -328(%rbp), %r10
movq -336(%rbp), %r13
cmpq %r10, %r13
je L9
L10:
movq -312(%rbp), %r13
movq -320(%rbp), %r13
addq %r13, %r12
movq %r12, -320(%rbp)
movq -320(%rbp), %r13
movq %r13, %r11
movq %r11, -304(%rbp)
movq 24(%rbp), %r12
movq %r12, -296(%rbp)
movq 16(%rbp), %r12
movq %r12, -288(%rbp)
movq -280(%rbp), %r13
movq -288(%rbp), %r10
addq %r10, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r13
movq %rax, %r13
movq -272(%rbp), %r10
divq %r10
movq %r12, %rax
movq %r12, -264(%rbp)
movq -264(%rbp), %r10
movq %r10, -16(%rbp)
movq 32(%rbp), %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r13
movq %r13, %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r13
movq %r13, %r12
movq %r12, -224(%rbp)
movq -232(%rbp), %r13
movq -24(%r13), %r11
movq %r11, -216(%rbp)
movq -8(%rbp), %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq %rax, %r13
movq -200(%rbp), %r10
mulq %r10
movq %r11, %rax
movq %r11, -192(%rbp)
movq -184(%rbp), %r10
movq -192(%rbp), %r13
addq %r13, %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r10
movq (%r10), %r12
movq %r12, -176(%rbp)
movq 8(%rbp), %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r13
movq -176(%rbp), %r10
cmpq %r13, %r10
jl L6
L7:
movq -152(%rbp), %r10
movq -160(%rbp), %r10
addq %r10, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r10
movq %r10, %r11
movq %r11, -144(%rbp)
movq 8(%rbp), %r11
movq %r11, -136(%rbp)
movq -8(%rbp), %r11
movq %r11, -128(%rbp)
movq 24(%rbp), %r11
movq %r11, -120(%rbp)
callq bsearch
movq %rax, %r11
movq %r11, -112(%rbp)
movq -104(%rbp), %r13
movq -112(%rbp), %r10
movq %r10, (%r13)
L8:
movq -104(%rbp), %r10
movq -304(%rbp), %r10
L11:
jmp L18
L9:
movq -88(%rbp), %r13
movq -96(%rbp), %r13
addq %r13, %r11
movq %r11, -96(%rbp)
movq -96(%rbp), %r10
movq -304(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
jmp L11
L6:
movq -144(%rbp), %r10
movq %r10, %r11
movq %r11, -104(%rbp)
movq 8(%rbp), %r11
movq %r11, -80(%rbp)
movq 16(%rbp), %r12
movq %r12, -72(%rbp)
movq -8(%rbp), %r11
movq %r11, -64(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r10
addq %r10, %r12
movq %r12, -56(%rbp)
callq bsearch
movq %rax, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r13
movq -104(%rbp), %r10
movq %r13, (%r10)
jmp L8
L18:
addq $336, %rsp
ret


.size bsearch, .-bsearch
.globl try
.type try, @function

try:
pushq %rbp
movq %rsp, %rbp
subq $88, %rsp
L21:
callq init
callq init
movq 8(%rbp), %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r10
movq 32(%r10), %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq %r10, %r12
movq %r12, -48(%rbp)
movq -56(%rbp), %r10
movq -8(%r10), %r11
movq %r11, -40(%rbp)
movq -24(%rbp), %r13
movq -32(%rbp), %r13
subq %r13, %r12
movq %r12, -32(%rbp)
callq bsearch
movq %rax, %r12
movq %r12, -16(%rbp)
callq printi
movq L13, %r12
movq %r12, -8(%rbp)
callq print
jmp L20
L20:
addq $88, %rsp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $88, %rsp
L23:
movq -88(%rbp), %r10
movq %r10, -16(%rbp)
movq -72(%rbp), %r13
movq -80(%rbp), %r10
addq %r13, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %r12
movq %r12, -64(%rbp)
movq -8(%rbp), %r12
movq %r12, -56(%rbp)
movq -8(%rbp), %r12
movq %r12, -48(%rbp)
callq initArray
movq %rax, %r12
movq %r12, -40(%rbp)
movq -40(%rbp), %r10
movq -64(%rbp), %r13
movq %r10, (%r13)
callq try
jmp L22
L22:
addq $88, %rsp
ret


.size tigermain, .-tigermain
.section .rodata
L1:
.long 0
.string ""
L2:
.long 0
.string ""
L12:
.long 1
.string "\n"
L13:
.long 1
.string "\n"
