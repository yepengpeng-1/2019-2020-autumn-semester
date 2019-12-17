.text
.globl b
.type b, @function
b:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L2:
movq -24(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -24(%rbp)
movq %r11, %rbp
movq -32(%rbp), %r10
movq -24(%rbp), %r11
movq -16(%r11), %r10
movq %r10, -32(%rbp)
movq %r11, -24(%rbp)
movq -40(%rbp), %r10
movq -32(%rbp), %r11
movq %r11, %r10
movq %r10, -40(%rbp)
movq %r11, -32(%rbp)
movq -48(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -48(%rbp)
movq %r11, %rbp
movq -40(%rbp), %r10
movq -48(%rbp), %r11
addq %r11, %r10
movq %r10, -40(%rbp)
movq %r11, -48(%rbp)
movq %rax, %r10
movq -40(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -40(%rbp)
jmp L1
L1:
addq $48, %rsp
popq %rbp
ret


.size b, .-b
.globl a
.type a, @function
a:
pushq %rbp
movq %rsp, %rbp
subq $24, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L4:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -24(%rbp), %r10
movq $3, %r10
movq %r10, -24(%rbp)
movq -24(%rbp), %r10
movq %r10, %rdi
movq %r10, -24(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq b
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L3
L3:
addq $24, %rsp
popq %rbp
ret


.size a, .-a
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %rdi, -8(%rbp)
L6:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -8(%rbp), %r10
movq $2, %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rdi
movq %r10, -8(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq a
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -16(%rbp), %r10
movq %rax, %r11
movq %r11, %r10
movq %r10, -16(%rbp)
movq %r11, %rax
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -16(%rbp), %r10
movq %r10, %rdi
movq %r10, -16(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L5
L5:
addq $16, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
