.text
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $96, %rsp
L8:
movq -96(%rbp), %r13
movq %r13, -16(%rbp)
L1:
movq -8(%rbp), %r12
movq %r12, -88(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
cmpq %r13, %r10
jge L2
L3:
jmp L7
L2:
movq -8(%rbp), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r10
movq %r10, %rdi
callq printi
movq -8(%rbp), %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r13
movq %r13, %rdi
callq printi
movq -8(%rbp), %r11
movq %r11, -56(%rbp)
movq -40(%rbp), %r10
movq -48(%rbp), %r13
subq %r10, %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r11
movq %r11, -32(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r13
cmpq %r10, %r13
je L4
L5:
jmp L1
L4:
jmp L3
L7:
addq $96, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
