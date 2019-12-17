.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $176, %rsp
movq %rdi, -8(%rbp)
L8:
movq -32(%rbp), %r10
movq $4, %r10
movq %r10, -32(%rbp)
movq %rbp, %r10
movq -32(%rbp), %r11
movq %r11, -8(%r10)
movq %r10, %rbp
movq %r11, -32(%rbp)
movq -40(%rbp), %r10
movq %rbp, %r11
movq -8(%r11), %r10
movq %r10, -40(%rbp)
movq %r11, %rbp
movq %rbp, %r10
movq -40(%rbp), %r11
movq %r11, -24(%r10)
movq %r10, %rbp
movq %r11, -40(%rbp)
movq -48(%rbp), %r10
movq $0, %r10
movq %r10, -48(%rbp)
movq %rbp, %r10
movq -48(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -48(%rbp)
movq -56(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -56(%rbp)
movq %r11, %rbp
movq -64(%rbp), %r10
movq -56(%rbp), %r11
movq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -56(%rbp)
movq -72(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -72(%rbp)
movq %r11, %rbp
movq -80(%rbp), %r10
movq -72(%rbp), %r11
movq %r11, %r10
movq %r10, -80(%rbp)
movq %r11, -72(%rbp)
movq -64(%rbp), %r10
movq -80(%rbp), %r11
cmpq %r11, %r10
movq %r10, -64(%rbp)
movq %r11, -80(%rbp)
jle L2
L1:
jmp L7
L2:
movq %rbp, %r10
movq %r10, %rsi
movq %r10, %rbp
movq -88(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -88(%rbp)
movq %r11, %rbp
movq -88(%rbp), %r10
movq %r10, %rdi
movq %r10, -88(%rbp)
movq %rsp, %r10
movq %rsp, %r11
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq %r10, %rsp
movq %r11, %rsp
movq -96(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -96(%rbp)
movq %r11, %rbp
movq -104(%rbp), %r10
movq -96(%rbp), %r11
movq %r11, %r10
movq %r10, -104(%rbp)
movq %r11, -96(%rbp)
movq -112(%rbp), %r10
movq $3, %r10
movq %r10, -112(%rbp)
movq -120(%rbp), %r10
movq -112(%rbp), %r11
movq %r11, %r10
movq %r10, -120(%rbp)
movq %r11, -112(%rbp)
movq -104(%rbp), %r10
movq -120(%rbp), %r11
cmpq %r11, %r10
movq %r10, -104(%rbp)
movq %r11, -120(%rbp)
je L4
L5:
movq -128(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -128(%rbp)
movq %r11, %rbp
movq -136(%rbp), %r10
movq -128(%rbp), %r11
movq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -128(%rbp)
movq -144(%rbp), %r10
movq %rbp, %r11
movq -24(%r11), %r10
movq %r10, -144(%rbp)
movq %r11, %rbp
movq -152(%rbp), %r10
movq -144(%rbp), %r11
movq %r11, %r10
movq %r10, -152(%rbp)
movq %r11, -144(%rbp)
movq -136(%rbp), %r10
movq -152(%rbp), %r11
cmpq %r11, %r10
movq %r10, -136(%rbp)
movq %r11, -152(%rbp)
jge L1
L3:
movq -160(%rbp), %r10
movq %rbp, %r11
movq -16(%r11), %r10
movq %r10, -160(%rbp)
movq %r11, %rbp
movq -168(%rbp), %r10
movq -160(%rbp), %r11
movq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -160(%rbp)
movq -176(%rbp), %r10
movq $1, %r10
movq %r10, -176(%rbp)
movq -168(%rbp), %r10
movq -176(%rbp), %r11
addq %r11, %r10
movq %r10, -168(%rbp)
movq %r11, -176(%rbp)
movq %rbp, %r10
movq -168(%rbp), %r11
movq %r11, -16(%r10)
movq %r10, %rbp
movq %r11, -168(%rbp)
jmp L2
L4:
jmp L1
L7:
addq $176, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
