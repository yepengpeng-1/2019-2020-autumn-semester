.text
.globl g
.type g, @function
g:
pushq %rbp
movq %rsp, %rbp
subq $80, %rsp
movq %rsi, -8(%rbp)
movq %rdi, -16(%rbp)
L7:
movq -24(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -24(%rbp)
movq %r11, %rbp
movq -32(%rbp), %r10
movq -24(%rbp), %r11
movq %r11, %r10
movq %r10, -32(%rbp)
movq %r11, -24(%rbp)
movq -40(%rbp), %r10
movq $3, %r10
movq %r10, -40(%rbp)
movq -48(%rbp), %r10
movq -40(%rbp), %r11
movq %r11, %r10
movq %r10, -48(%rbp)
movq %r11, -40(%rbp)
movq -32(%rbp), %r10
movq -48(%rbp), %r11
cmpq %r11, %r10
movq %r10, -32(%rbp)
movq %r11, -48(%rbp)
jg L2
L3:
movq -56(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq $4, %r10
movq %r10, -64(%rbp)
movq -56(%rbp), %r10
movq -64(%rbp), %r11
movq %r11, -8(%r10)
movq %r10, -56(%rbp)
movq %r11, -64(%rbp)
movq -72(%rbp), %r10
movq $0, %r10
movq %r10, -72(%rbp)
movq %rax, %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, %rax
movq %r11, -72(%rbp)
L4:
jmp L6
L2:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
leaq -80(%rbp), %r10
leaq L1(%rip), %r10
movq %r10, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %rdi
movq %r10, -80(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L4
L6:
addq $80, %rsp
popq %rbp
ret


.size g, .-g
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp
movq %rdi, -8(%rbp)
L9:
movq -16(%rbp), %r10
movq $5, %r10
movq %r10, -16(%rbp)
movq %rbp, %r10
movq -16(%rbp), %r11
movq %r11, -8(%r10)
movq %r10, %rbp
movq %r11, -16(%rbp)
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -24(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -24(%rbp)
movq %r11, %rbp
movq -24(%rbp), %r10
movq %r10, %rdi
movq %r10, -24(%rbp)
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
leaq -32(%rbp), %r10
leaq L5(%rip), %r10
movq %r10, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, %rdi
movq %r10, -32(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -40(%rbp), %r10
movq $2, %r10
movq %r10, -40(%rbp)
movq -40(%rbp), %r10
movq %r10, %rdi
movq %r10, -40(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq g
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
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
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
jmp L8
L8:
addq $48, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
L1:
.long 20
.string "hey! Bigger than 3!\n"
L5:
.long 1
.string "\n"
