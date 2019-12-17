.text
.globl b
.type b, @function
b:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $80, %rsp
L2:
movq $16, %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r10
movq -16(%rbp), %r13
addq %r10, %r12
movq %r12, -16(%rbp)
movq -16(%rbp), %r10
movq (%r10), %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r13
movq %r13, %r12
movq %r12, -56(%rbp)
movq -56(%rbp), %r10
movq %r10, %r11
movq %r11, -72(%rbp)
jmp L1
L1:
addq $80, %rsp
popq %rbp
ret


.size b, .-b
.globl a
.type a, @function
a:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
L4:
movq $3, %r12
movq %r12, -8(%rbp)
movq -8(%rbp), %r13
movq %r13, %rdi
callq b
jmp L3
L3:
addq $16, %rsp
popq %rbp
ret


.size a, .-a
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp
L6:
movq $2, %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rdi
callq a
movq %rax, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq %r13, %rdi
callq printi
jmp L5
L5:
addq $32, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
