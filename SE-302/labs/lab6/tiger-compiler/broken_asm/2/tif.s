.text
.globl g
.type g, @function

g:
pushq %rbp
movq %rsp, %rbp
subq $40, %rsp
L5:
movq 16(%rbp), %r12
movq %r12, -40(%rbp)
movq 8(%rbp), %r11
movq %r11, -32(%rbp)
movq -32(%rbp), %r10
movq -40(%rbp), %r13
cmpq %r10, %r13
jg L1
L2:
movq 8(%rbp), %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq %r13, -8(%rbp)
L3:
jmp L4
L1:
movq 16(%rbp), %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, -8(%rbp)
jmp L3
L4:
addq $40, %rsp
popq %rbp
ret


.size g, .-g
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp
L7:
callq g
movq %rax, %r11
movq %r11, -8(%rbp)
callq printi
jmp L6
L6:
addq $8, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
