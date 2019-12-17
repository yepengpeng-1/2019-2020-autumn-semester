.text
.globl g
.type g, @function
g:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $344, %rsp
L9:
movq $8, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq -24(%rbp), %r13
addq %r10, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r10
movq (%r10), %r11
movq %r11, -48(%rbp)
movq $3, %r12
movq %r12, -64(%rbp)
movq -48(%rbp), %r13
movq -64(%rbp), %r10
cmpq %r10, %r13
jg L3
L4:
movq $-8, %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r13
movq -96(%rbp), %r10
addq %r13, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r13
movq %r13, %r11
movq %r11, -120(%rbp)
movq $16, %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r13
movq -144(%rbp), %r10
addq %r13, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r13
movq (%r13), %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r13
movq %r13, %r12
movq %r12, -200(%rbp)
movq $-8, %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r10
movq -224(%rbp), %r13
addq %r10, %r12
movq %r12, -224(%rbp)
movq $4, %r11
movq %r11, -248(%rbp)
movq -224(%rbp), %r10
movq -248(%rbp), %r13
movq (%r10), %r13
movq $0, %r12
movq %r12, -272(%rbp)
movq -272(%rbp), %r10
movq -280(%rbp), %r13
movq (%r13), %r10
L5:
jmp L8
L3:
movq -120(%rbp), %r10
movq %r10, %r11
movq %r11, -280(%rbp)
movq L2(%rip), %r12
movq %r12, -312(%rbp)
movq -312(%rbp), %r13
movq %r13, %rdi
callq print
movq %rax, %r11
movq %r11, -328(%rbp)
movq -280(%rbp), %r10
movq -328(%rbp), %r10
movq (%r10), %r10
jmp L5
L8:
addq $344, %rsp
popq %rbp
ret


.size g, .-g
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $272, %rsp
L11:
movq $-16, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq -32(%rbp), %r10
addq %r13, %r11
movq %r11, -32(%rbp)
movq $5, %r12
movq %r12, -56(%rbp)
movq -32(%rbp), %r13
movq -56(%rbp), %r10
movq (%r13), %r10
movq $-8, %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
addq %r13, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r13
movq (%r13), %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r10
movq %r10, %rdi
callq printi
movq $-8, %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r13
movq -144(%rbp), %r10
addq %r13, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r13
movq (%r13), %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %rdi
callq printi
movq L7(%rip), %r11
movq %r11, -192(%rbp)
movq -192(%rbp), %r13
movq %r13, %rdi
callq print
movq $2, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, %rdi
callq g
movq $-8, %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r13
movq -232(%rbp), %r10
addq %r13, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r13
movq (%r13), %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r10
movq %r10, %rdi
callq printi
jmp L10
L10:
addq $272, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L1
.type L1, @object
.size L1, 20
L1:
.string "hey! Bigger than 3!\n"
.globl L2
.type L2, @object
.size L2, 20
L2:
.string "hey! Bigger than 3!\n"
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
