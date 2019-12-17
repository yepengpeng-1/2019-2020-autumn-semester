.text
.globl dec2bin
.type dec2bin, @function
dec2bin:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $352, %rsp
L21:
movq $8, %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r10
movq -16(%rbp), %r13
addq %r10, %r12
movq %r12, -16(%rbp)
movq -16(%rbp), %r10
movq (%r10), %r11
movq %r11, -40(%rbp)
movq $0, %r12
movq %r12, -56(%rbp)
movq -40(%rbp), %r13
movq -56(%rbp), %r10
cmpq %r10, %r13
jg L1
L2:
jmp L20
L1:
movq $8, %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
addq %r13, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r13
movq (%r13), %r11
movq %r11, -112(%rbp)
movq $2, %r12
movq %r12, -128(%rbp)
movq -112(%rbp), %r10
movq %r10, %rax
movq -128(%rbp), %r13
idivq %r13
movq %rax, %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %rdi
callq dec2bin
movq $8, %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r13
movq -176(%rbp), %r10
addq %r13, %r11
movq %r11, -176(%rbp)
movq -176(%rbp), %r13
movq (%r13), %r12
movq %r12, -200(%rbp)
movq $8, %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r10
movq -224(%rbp), %r13
addq %r10, %r12
movq %r12, -224(%rbp)
movq -224(%rbp), %r10
movq (%r10), %r11
movq %r11, -248(%rbp)
movq $2, %r12
movq %r12, -264(%rbp)
movq -248(%rbp), %r13
movq %r13, %rax
movq -264(%rbp), %r10
idivq %r10
movq %rax, %r11
movq %r11, -288(%rbp)
movq $2, %r12
movq %r12, -296(%rbp)
movq -288(%rbp), %r13
movq %r13, %rax
movq -296(%rbp), %r10
imulq %r10
movq %rax, %r11
movq %r11, -320(%rbp)
movq -320(%rbp), %r13
movq -328(%rbp), %r10
subq %r13, %r12
movq %r12, -328(%rbp)
movq -328(%rbp), %r13
movq %r13, %rdi
callq printi
jmp L2
L20:
addq $352, %rsp
popq %rbp
ret


.size dec2bin, .-dec2bin
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $272, %rsp
L23:
movq $100, %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rdi
callq printi
movq $100, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq %r13, %rdi
callq printi
movq L5(%rip), %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rdi
callq print
movq $100, %r12
movq %r12, -56(%rbp)
movq -56(%rbp), %r13
movq %r13, %rdi
callq dec2bin
movq L7(%rip), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq %r10, %rdi
callq print
movq $200, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r13
movq %r13, %rdi
callq printi
movq L9(%rip), %r11
movq %r11, -104(%rbp)
movq -104(%rbp), %r10
movq %r10, %rdi
callq print
movq $200, %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r13
movq %r13, %rdi
callq dec2bin
movq L11(%rip), %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r10
movq %r10, %rdi
callq print
movq $789, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r13
movq %r13, %rdi
callq printi
movq L13(%rip), %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %rdi
callq print
movq $789, %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r13
movq %r13, %rdi
callq dec2bin
movq L15(%rip), %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r10
movq %r10, %rdi
callq print
movq $567, %r12
movq %r12, -216(%rbp)
movq -216(%rbp), %r13
movq %r13, %rdi
callq printi
movq L17(%rip), %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r10
movq %r10, %rdi
callq print
movq $567, %r12
movq %r12, -248(%rbp)
movq -248(%rbp), %r13
movq %r13, %rdi
callq dec2bin
movq L19(%rip), %r11
movq %r11, -264(%rbp)
movq -264(%rbp), %r10
movq %r10, %rdi
callq print
jmp L22
L22:
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
L25:
callq try
jmp L24
L24:
addq $0, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L4
.type L4, @object
.size L4, 4
L4:
.string "\t->\t"
.globl L5
.type L5, @object
.size L5, 4
L5:
.string "\t->\t"
.globl L6
.type L6, @object
.size L6, 1
L6:
.string "\n"
.globl L7
.type L7, @object
.size L7, 1
L7:
.string "\n"
.globl L8
.type L8, @object
.size L8, 4
L8:
.string "\t->\t"
.globl L9
.type L9, @object
.size L9, 4
L9:
.string "\t->\t"
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
.size L12, 4
L12:
.string "\t->\t"
.globl L13
.type L13, @object
.size L13, 4
L13:
.string "\t->\t"
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
.size L16, 4
L16:
.string "\t->\t"
.globl L17
.type L17, @object
.size L17, 4
L17:
.string "\t->\t"
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
