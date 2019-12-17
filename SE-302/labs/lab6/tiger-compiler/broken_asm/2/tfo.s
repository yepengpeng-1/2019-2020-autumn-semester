.text
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $136, %rsp
L8:
movq -136(%rbp), %r13
movq %r13, -16(%rbp)
movq -8(%rbp), %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, -24(%rbp)
movq -120(%rbp), %r13
movq %r13, -24(%rbp)
movq -24(%rbp), %r12
movq %r12, -112(%rbp)
movq -24(%rbp), %r11
movq %r11, -104(%rbp)
movq -104(%rbp), %r13
movq -112(%rbp), %r10
cmpq %r13, %r10
jle L2
L1:
jmp L7
L2:
movq -24(%rbp), %r12
movq %r12, -96(%rbp)
callq printi
movq -24(%rbp), %r11
movq %r11, -88(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r10
cmpq %r13, %r10
je L4
L5:
movq -24(%rbp), %r12
movq %r12, -72(%rbp)
movq -24(%rbp), %r11
movq %r11, -64(%rbp)
movq -64(%rbp), %r13
movq -72(%rbp), %r10
cmpq %r13, %r10
jge L1
L3:
movq -24(%rbp), %r12
movq %r12, -56(%rbp)
movq -40(%rbp), %r10
movq -48(%rbp), %r13
addq %r10, %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r10
movq %r10, -24(%rbp)
jmp L2
L4:
jmp L1
L7:
addq $136, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
