.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $704, %rsp
L8:
movq $-16, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r10
movq -48(%rbp), %r13
addq %r10, %r12
movq %r12, -48(%rbp)
movq $4, %r11
movq %r11, -72(%rbp)
movq -48(%rbp), %r10
movq -72(%rbp), %r13
movq (%r10), %r13
movq $-24, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r10
movq -104(%rbp), %r13
addq %r10, %r11
movq %r11, -104(%rbp)
movq $-8, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r13
movq -136(%rbp), %r10
addq %r13, %r11
movq %r11, -136(%rbp)
movq -104(%rbp), %r10
movq -136(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
movq $-24, %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r10
movq -184(%rbp), %r13
addq %r10, %r11
movq %r11, -184(%rbp)
movq $0, %r12
movq %r12, -208(%rbp)
movq -184(%rbp), %r10
movq -208(%rbp), %r13
movq (%r10), %r13
movq $-24, %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r10
movq -240(%rbp), %r13
addq %r10, %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r10
movq (%r10), %r11
movq %r11, -264(%rbp)
movq $-24, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r10
movq -288(%rbp), %r13
addq %r10, %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r10
movq (%r10), %r12
movq %r12, -312(%rbp)
movq -264(%rbp), %r13
movq -312(%rbp), %r13
cmpq %r13, %r13
jle L2
L1:
jmp L7
L2:
movq $-24, %r11
movq %r11, -344(%rbp)
movq -344(%rbp), %r10
movq -352(%rbp), %r13
addq %r10, %r12
movq %r12, -352(%rbp)
movq -352(%rbp), %r10
movq (%r10), %r11
movq %r11, -376(%rbp)
movq -376(%rbp), %r13
movq %r13, %rdi
callq printi
movq $-24, %r12
movq %r12, -400(%rbp)
movq -400(%rbp), %r10
movq -408(%rbp), %r13
addq %r10, %r11
movq %r11, -408(%rbp)
movq -408(%rbp), %r10
movq (%r10), %r12
movq %r12, -432(%rbp)
movq $3, %r11
movq %r11, -448(%rbp)
movq -432(%rbp), %r13
movq -448(%rbp), %r10
cmpq %r10, %r13
je L4
L5:
movq $-24, %r12
movq %r12, -472(%rbp)
movq -472(%rbp), %r13
movq -480(%rbp), %r10
addq %r13, %r11
movq %r11, -480(%rbp)
movq -480(%rbp), %r13
movq (%r13), %r12
movq %r12, -504(%rbp)
movq $-24, %r11
movq %r11, -520(%rbp)
movq -520(%rbp), %r13
movq -528(%rbp), %r10
addq %r13, %r12
movq %r12, -528(%rbp)
movq -528(%rbp), %r13
movq (%r13), %r11
movq %r11, -552(%rbp)
movq -504(%rbp), %r10
movq -552(%rbp), %r10
cmpq %r10, %r10
jge L1
L3:
movq $-24, %r12
movq %r12, -584(%rbp)
movq -584(%rbp), %r13
movq -592(%rbp), %r10
addq %r13, %r11
movq %r11, -592(%rbp)
movq $-24, %r12
movq %r12, -616(%rbp)
movq -616(%rbp), %r10
movq -624(%rbp), %r13
addq %r10, %r11
movq %r11, -624(%rbp)
movq -624(%rbp), %r10
movq (%r10), %r12
movq %r12, -648(%rbp)
movq $1, %r11
movq %r11, -664(%rbp)
movq -664(%rbp), %r13
movq -672(%rbp), %r10
addq %r13, %r12
movq %r12, -672(%rbp)
movq -592(%rbp), %r13
movq -672(%rbp), %r13
movq (%r13), %r13
jmp L2
L4:
jmp L1
L7:
addq $704, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
