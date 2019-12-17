.text
.globl b
.type b, @function

b:
pushq %rbp
movq %rsp, %rbp
subq $24, %rsp
L2:
movq 16(%rbp), %r11
movq %r11, -24(%rbp)
movq -24(%rbp), %r13
movq %r13, %r12
movq %r12, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %r11
movq %r11, -8(%rbp)
jmp L1
L1:
addq $24, %rsp
popq %rbp
ret


.size b, .-b
.globl a
.type a, @function

a:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp
L4:
movq -8(%rbp), %r10
movq %r10, %rdi
callq b
jmp L3
L3:
addq $8, %rsp
popq %rbp
ret


.size a, .-a
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
L6:
movq -16(%rbp), %r10
movq %r10, %rdi
callq a
movq %rax, %r12
movq %r12, -8(%rbp)
movq -8(%rbp), %r13
movq %r13, %rdi
callq printi
jmp L5
L5:
addq $16, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
