.text
.globl check
.type check, @function
check:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $936, %rsp
L30:
movq $-16, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r10
movq -48(%rbp), %r13
addq %r10, %r12
movq %r12, -48(%rbp)
movq $1, %r11
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
movq $8, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r13
movq -136(%rbp), %r10
addq %r13, %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r13
movq (%r13), %r12
movq %r12, -160(%rbp)
movq $2, %r11
movq %r11, -176(%rbp)
movq -160(%rbp), %r10
movq %r10, %rax
movq -176(%rbp), %r13
idivq %r13
movq %rax, %r12
movq %r12, -200(%rbp)
movq -104(%rbp), %r10
movq -200(%rbp), %r10
movq (%r10), %r10
movq $-24, %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r13
movq -232(%rbp), %r10
addq %r13, %r12
movq %r12, -232(%rbp)
movq $2, %r11
movq %r11, -256(%rbp)
movq -232(%rbp), %r13
movq -256(%rbp), %r10
movq (%r13), %r10
movq $-24, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r13
movq -288(%rbp), %r10
addq %r13, %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r13
movq (%r13), %r12
movq %r12, -312(%rbp)
movq $-24, %r11
movq %r11, -328(%rbp)
movq -328(%rbp), %r13
movq -336(%rbp), %r10
addq %r13, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r13
movq (%r13), %r11
movq %r11, -360(%rbp)
movq -312(%rbp), %r10
movq -360(%rbp), %r10
cmpq %r10, %r10
jle L2
L1:
jmp L29
L2:
movq $8, %r12
movq %r12, -392(%rbp)
movq -392(%rbp), %r13
movq -400(%rbp), %r10
addq %r13, %r11
movq %r11, -400(%rbp)
movq -400(%rbp), %r13
movq (%r13), %r12
movq %r12, -424(%rbp)
movq $-24, %r11
movq %r11, -440(%rbp)
movq -440(%rbp), %r13
movq -448(%rbp), %r10
addq %r13, %r12
movq %r12, -448(%rbp)
movq -448(%rbp), %r13
movq (%r13), %r11
movq %r11, -472(%rbp)
movq -424(%rbp), %r10
movq %r10, %rax
movq -472(%rbp), %r10
idivq %r10
movq %rax, %r12
movq %r12, -504(%rbp)
movq $-24, %r11
movq %r11, -512(%rbp)
movq -512(%rbp), %r10
movq -520(%rbp), %r13
addq %r10, %r12
movq %r12, -520(%rbp)
movq -520(%rbp), %r10
movq (%r10), %r11
movq %r11, -544(%rbp)
movq -504(%rbp), %r13
movq %r13, %rax
movq -544(%rbp), %r13
imulq %r13
movq %rax, %r12
movq %r12, -576(%rbp)
movq $8, %r11
movq %r11, -584(%rbp)
movq -584(%rbp), %r13
movq -592(%rbp), %r10
addq %r13, %r12
movq %r12, -592(%rbp)
movq -592(%rbp), %r13
movq (%r13), %r11
movq %r11, -616(%rbp)
movq -576(%rbp), %r10
movq -616(%rbp), %r10
cmpq %r10, %r10
je L4
L5:
movq $-24, %r12
movq %r12, -648(%rbp)
movq -648(%rbp), %r13
movq -656(%rbp), %r10
addq %r13, %r11
movq %r11, -656(%rbp)
movq -656(%rbp), %r13
movq (%r13), %r12
movq %r12, -680(%rbp)
movq $-24, %r11
movq %r11, -696(%rbp)
movq -696(%rbp), %r13
movq -704(%rbp), %r10
addq %r13, %r12
movq %r12, -704(%rbp)
movq -704(%rbp), %r13
movq (%r13), %r11
movq %r11, -728(%rbp)
movq -680(%rbp), %r10
movq -728(%rbp), %r10
cmpq %r10, %r10
jge L1
L3:
movq $-24, %r12
movq %r12, -760(%rbp)
movq -760(%rbp), %r13
movq -768(%rbp), %r10
addq %r13, %r11
movq %r11, -768(%rbp)
movq $-24, %r12
movq %r12, -792(%rbp)
movq -792(%rbp), %r10
movq -800(%rbp), %r13
addq %r10, %r11
movq %r11, -800(%rbp)
movq -800(%rbp), %r10
movq (%r10), %r12
movq %r12, -824(%rbp)
movq $1, %r11
movq %r11, -840(%rbp)
movq -840(%rbp), %r13
movq -848(%rbp), %r10
addq %r13, %r12
movq %r12, -848(%rbp)
movq -768(%rbp), %r13
movq -848(%rbp), %r13
movq (%r13), %r13
jmp L2
L4:
movq $-8, %r11
movq %r11, -888(%rbp)
movq -888(%rbp), %r10
movq -896(%rbp), %r13
addq %r10, %r12
movq %r12, -896(%rbp)
movq $0, %r11
movq %r11, -920(%rbp)
movq -896(%rbp), %r10
movq -920(%rbp), %r13
movq (%r10), %r13
jmp L1
L29:
addq $936, %rsp
popq %rbp
ret


.size check, .-check
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $536, %rsp
L32:
movq -8(%rbp), %r10
movq %r10, %rdi
callq printi
movq $56, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -8(%rbp)
movq -8(%rbp), %r13
movq %r13, %rdi
callq printi
movq L8(%rip), %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r13
movq %r13, %rdi
callq print
movq $23, %r11
movq %r11, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq %r13, %rdi
callq printi
movq L10(%rip), %r11
movq %r11, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %rdi
callq print
movq $71, %r12
movq %r12, -112(%rbp)
movq -112(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %rdi
callq printi
movq L12(%rip), %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r13
movq %r13, %rdi
callq print
movq $72, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r13
movq %r13, %rdi
callq printi
movq L14(%rip), %r11
movq %r11, -192(%rbp)
movq -192(%rbp), %r10
movq %r10, %rdi
callq print
movq $173, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r10
movq %r10, %rdi
callq printi
movq L16(%rip), %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r13
movq %r13, %rdi
callq print
movq $181, %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -272(%rbp)
movq -272(%rbp), %r13
movq %r13, %rdi
callq printi
movq L18(%rip), %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r10
movq %r10, %rdi
callq print
movq $281, %r12
movq %r12, -304(%rbp)
movq -304(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r11
movq %r11, -320(%rbp)
movq -320(%rbp), %r10
movq %r10, %rdi
callq printi
movq L20(%rip), %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r13
movq %r13, %rdi
callq print
movq $659, %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r13
movq %r13, %rdi
callq printi
movq L22(%rip), %r11
movq %r11, -384(%rbp)
movq -384(%rbp), %r10
movq %r10, %rdi
callq print
movq $729, %r12
movq %r12, -400(%rbp)
movq -400(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r10
movq %r10, %rdi
callq printi
movq L24(%rip), %r12
movq %r12, -432(%rbp)
movq -432(%rbp), %r13
movq %r13, %rdi
callq print
movq $947, %r11
movq %r11, -448(%rbp)
movq -448(%rbp), %r10
movq %r10, %rdi
callq check
movq %rax, %r12
movq %r12, -464(%rbp)
movq -464(%rbp), %r13
movq %r13, %rdi
callq printi
movq L26(%rip), %r11
movq %r11, -480(%rbp)
movq -480(%rbp), %r10
movq %r10, %rdi
callq print
movq $945, %r12
movq %r12, -496(%rbp)
movq -496(%rbp), %r13
movq %r13, %rdi
callq check
movq %rax, %r11
movq %r11, -512(%rbp)
movq -512(%rbp), %r10
movq %r10, %rdi
callq printi
movq L28(%rip), %r12
movq %r12, -528(%rbp)
movq -528(%rbp), %r13
movq %r13, %rdi
callq print
jmp L31
L31:
addq $536, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $0, %rsp
L34:
callq try
jmp L33
L33:
addq $0, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L7
.type L7, @object
.size L7, 1
L7:
.string "\n"
.globl L8
.type L8, @object
.size L8, 1
L8:
.string "\n"
.globl L9
.type L9, @object
.size L9, 1
L9:
.string "\n"
.globl L10
.type L10, @object
.size L10, 1
L10:
.string "\n"
.globl L11
.type L11, @object
.size L11, 1
L11:
.string "\n"
.globl L12
.type L12, @object
.size L12, 1
L12:
.string "\n"
.globl L13
.type L13, @object
.size L13, 1
L13:
.string "\n"
.globl L14
.type L14, @object
.size L14, 1
L14:
.string "\n"
.globl L15
.type L15, @object
.size L15, 1
L15:
.string "\n"
.globl L16
.type L16, @object
.size L16, 1
L16:
.string "\n"
.globl L17
.type L17, @object
.size L17, 1
L17:
.string "\n"
.globl L18
.type L18, @object
.size L18, 1
L18:
.string "\n"
.globl L19
.type L19, @object
.size L19, 1
L19:
.string "\n"
.globl L20
.type L20, @object
.size L20, 1
L20:
.string "\n"
.globl L21
.type L21, @object
.size L21, 1
L21:
.string "\n"
.globl L22
.type L22, @object
.size L22, 1
L22:
.string "\n"
.globl L23
.type L23, @object
.size L23, 1
L23:
.string "\n"
.globl L24
.type L24, @object
.size L24, 1
L24:
.string "\n"
.globl L25
.type L25, @object
.size L25, 1
L25:
.string "\n"
.globl L26
.type L26, @object
.size L26, 1
L26:
.string "\n"
.globl L27
.type L27, @object
.size L27, 1
L27:
.string "\n"
.globl L28
.type L28, @object
.size L28, 1
L28:
.string "\n"
