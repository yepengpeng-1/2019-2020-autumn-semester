.text
.globl check
.type check, @function

check:
pushq %rbp
movq %rsp, %rbp
subq $184, %rsp
L30:
movq -184(%rbp), %r10
movq %r10, -16(%rbp)
movq 8(%rbp), %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r13
movq %rax, %r13
movq -168(%rbp), %r10
idivq %r10
movq %r11, %rax
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, -24(%rbp)
movq -152(%rbp), %r10
movq %r10, -24(%rbp)
movq -24(%rbp), %r12
movq %r12, -144(%rbp)
movq -24(%rbp), %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r10
movq -144(%rbp), %r13
cmpq %r10, %r13
jle L2
L1:
jmp L29
L2:
movq 8(%rbp), %r12
movq %r12, -128(%rbp)
movq -24(%rbp), %r11
movq %r11, -120(%rbp)
movq -128(%rbp), %r13
movq %rax, %r13
movq -120(%rbp), %r10
idivq %r10
movq %r12, %rax
movq %r12, -112(%rbp)
movq -24(%rbp), %r11
movq %r11, -104(%rbp)
movq -112(%rbp), %r13
movq %rax, %r13
movq -104(%rbp), %r10
imulq %r10
movq %r12, %rax
movq %r12, -96(%rbp)
movq 8(%rbp), %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r10
movq -96(%rbp), %r13
cmpq %r10, %r13
je L4
L5:
movq -24(%rbp), %r12
movq %r12, -80(%rbp)
movq -24(%rbp), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq -80(%rbp), %r13
cmpq %r10, %r13
jge L1
L3:
movq -24(%rbp), %r12
movq %r12, -64(%rbp)
movq -48(%rbp), %r13
movq -56(%rbp), %r10
addq %r13, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r13
movq %r13, -24(%rbp)
jmp L2
L4:
movq -40(%rbp), %r10
movq %r10, -8(%rbp)
jmp L1
L29:
addq $184, %rsp
popq %rbp
ret


.size check, .-check
.globl try
.type try, @function

try:
pushq %rbp
movq %rsp, %rbp
subq $264, %rsp
L32:
movq -264(%rbp), %r13
movq %r13, %rdi
callq printi
movq -256(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -264(%rbp)
movq -264(%rbp), %r10
movq %r10, %rdi
callq printi
movq L8(%rip), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r13
movq %r13, %rdi
callq print
movq -240(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r13
movq %r13, %rdi
callq printi
movq L10(%rip), %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r10
movq %r10, %rdi
callq print
movq -216(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, %rdi
callq printi
movq L12(%rip), %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r13
movq %r13, %rdi
callq print
movq -192(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r13
movq %r13, %rdi
callq printi
movq L14(%rip), %r11
movq %r11, -176(%rbp)
movq -176(%rbp), %r10
movq %r10, %rdi
callq print
movq -168(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r10
movq %r10, %rdi
callq printi
movq L16(%rip), %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r13
movq %r13, %rdi
callq print
movq -144(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r13
movq %r13, %rdi
callq printi
movq L18(%rip), %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %rdi
callq print
movq -120(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r12
movq %r12, -112(%rbp)
movq -112(%rbp), %r10
movq %r10, %rdi
callq printi
movq L20(%rip), %r11
movq %r11, -104(%rbp)
movq -104(%rbp), %r13
movq %r13, %rdi
callq print
movq -96(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r13
movq %r13, %rdi
callq printi
movq L22(%rip), %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
callq print
movq -72(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
callq printi
movq L24(%rip), %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r13
movq %r13, %rdi
callq print
movq -48(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -40(%rbp)
movq -40(%rbp), %r13
movq %r13, %rdi
callq printi
movq L26(%rip), %r11
movq %r11, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, %rdi
callq print
movq -24(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r12
movq %r12, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %rdi
callq printi
movq L28(%rip), %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r13
movq %r13, %rdi
callq print
jmp L31
L31:
addq $264, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $0, %rsp
L34:
callq try
jmp L33
L33:
addq $0, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L7
.type L7, @object
.size L7, 1
L7:
.string "\n"
.globl L8
.type L8, @object
.size L8, 1
L8:
.string "\n"
.globl L9
.type L9, @object
.size L9, 1
L9:
.string "\n"
.globl L10
.type L10, @object
.size L10, 1
L10:
.string "\n"
.globl L11
.type L11, @object
.size L11, 1
L11:
.string "\n"
.globl L12
.type L12, @object
.size L12, 1
L12:
.string "\n"
.globl L13
.type L13, @object
.size L13, 1
L13:
.string "\n"
.globl L14
.type L14, @object
.size L14, 1
L14:
.string "\n"
.globl L15
.type L15, @object
.size L15, 1
L15:
.string "\n"
.globl L16
.type L16, @object
.size L16, 1
L16:
.string "\n"
.globl L17
.type L17, @object
.size L17, 1
L17:
.string "\n"
.globl L18
.type L18, @object
.size L18, 1
L18:
.string "\n"
.globl L19
.type L19, @object
.size L19, 1
L19:
.string "\n"
.globl L20
.type L20, @object
.size L20, 1
L20:
.string "\n"
.globl L21
.type L21, @object
.size L21, 1
L21:
.string "\n"
.globl L22
.type L22, @object
.size L22, 1
L22:
.string "\n"
.globl L23
.type L23, @object
.size L23, 1
L23:
.string "\n"
.globl L24
.type L24, @object
.size L24, 1
L24:
.string "\n"
.globl L25
.type L25, @object
.size L25, 1
L25:
.string "\n"
.globl L26
.type L26, @object
.size L26, 1
L26:
.string "\n"
.globl L27
.type L27, @object
.size L27, 1
L27:
.string "\n"
.globl L28
.type L28, @object
.size L28, 1
L28:
.string "\n"
