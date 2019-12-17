.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $456, %rsp
L8:
movq $-16, %r11
movq %r11, -24(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r13
addq %r10, %r12
movq %r12, -32(%rbp)
movq $10, %r11
movq %r11, -56(%rbp)
movq -32(%rbp), %r10
movq -56(%rbp), %r13
movq (%r10), %r13
L1:
movq $-8, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq -88(%rbp), %r13
addq %r10, %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r10
movq (%r10), %r12
movq %r12, -112(%rbp)
movq $0, %r11
movq %r11, -128(%rbp)
movq -112(%rbp), %r13
movq -128(%rbp), %r10
cmpq %r10, %r13
jge L2
L3:
jmp L7
L2:
movq $-8, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r13
movq -160(%rbp), %r10
addq %r13, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq (%r13), %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r10
movq %r10, %rdi
callq printi
movq $-8, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq -216(%rbp), %r10
addq %r13, %r12
movq %r12, -216(%rbp)
movq -216(%rbp), %r13
movq (%r13), %r11
movq %r11, -240(%rbp)
movq -240(%rbp), %r10
movq %r10, %rdi
callq printi
movq $-8, %r12
movq %r12, -264(%rbp)
movq -264(%rbp), %r13
movq -272(%rbp), %r10
addq %r13, %r11
movq %r11, -272(%rbp)
movq $-8, %r12
movq %r12, -296(%rbp)
movq -296(%rbp), %r10
movq -304(%rbp), %r13
addq %r10, %r11
movq %r11, -304(%rbp)
movq -304(%rbp), %r10
movq (%r10), %r12
movq %r12, -328(%rbp)
movq $1, %r11
movq %r11, -344(%rbp)
movq -344(%rbp), %r13
movq -352(%rbp), %r10
subq %r13, %r12
movq %r12, -352(%rbp)
movq -272(%rbp), %r13
movq -352(%rbp), %r13
movq (%r13), %r13
movq $-8, %r11
movq %r11, -392(%rbp)
movq -392(%rbp), %r10
movq -400(%rbp), %r13
addq %r10, %r12
movq %r12, -400(%rbp)
movq -400(%rbp), %r10
movq (%r10), %r11
movq %r11, -424(%rbp)
movq $2, %r12
movq %r12, -440(%rbp)
movq -424(%rbp), %r13
movq -440(%rbp), %r10
cmpq %r10, %r13
je L4
L5:
jmp L1
L4:
jmp L3
L7:
addq $456, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
