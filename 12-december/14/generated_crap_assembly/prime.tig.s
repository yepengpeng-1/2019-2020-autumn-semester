.text
.globl check
.type check, @function

check:
pushq %rbp
movq %rsp, %rbp
subq $184, %rsp
L30:
movq -184(%rbp), %r13
movq %r13, -16(%rbp)
movq 8(%rbp), %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r10
movq %rax, %r10
movq -168(%rbp), %r13
divq %r13
movq %r12, %rax
movq %r12, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, -24(%rbp)
movq -152(%rbp), %r13
movq %r13, -24(%rbp)
movq -24(%rbp), %r11
movq %r11, -144(%rbp)
movq -24(%rbp), %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r13
movq -144(%rbp), %r13
cmpq %r13, %r13
jle L2
L1:
jmp L29
L2:
movq 8(%rbp), %r12
movq %r12, -128(%rbp)
movq -24(%rbp), %r11
movq %r11, -120(%rbp)
movq -128(%rbp), %r13
movq %rax, %r13
movq -120(%rbp), %r10
divq %r10
movq %r12, %rax
movq %r12, -112(%rbp)
movq -24(%rbp), %r11
movq %r11, -104(%rbp)
movq -112(%rbp), %r10
movq %rax, %r10
movq -104(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -96(%rbp)
movq 8(%rbp), %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r13
movq -96(%rbp), %r13
cmpq %r13, %r13
je L4
L5:
movq -24(%rbp), %r11
movq %r11, -80(%rbp)
movq -24(%rbp), %r12
movq %r12, -72(%rbp)
movq -72(%rbp), %r13
movq -80(%rbp), %r13
cmpq %r13, %r13
jge L1
L3:
movq -24(%rbp), %r11
movq %r11, -64(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r13
addq %r10, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq %r10, -24(%rbp)
jmp L2
L4:
movq -40(%rbp), %r10
movq %r10, -8(%rbp)
jmp L1
L29:
addq $184, %rsp
ret


.size check, .-check
.globl try
.type try, @function

try:
pushq %rbp
movq %rsp, %rbp
subq $176, %rsp
L32:
callq printi
callq check
movq %rax, %r11
movq %r11, -176(%rbp)
callq printi
movq L8, %r12
movq %r12, -168(%rbp)
callq print
callq check
movq %rax, %r12
movq %r12, -160(%rbp)
callq printi
movq L10, %r11
movq %r11, -152(%rbp)
callq print
callq check
movq %rax, %r11
movq %r11, -144(%rbp)
callq printi
movq L12, %r12
movq %r12, -136(%rbp)
callq print
callq check
movq %rax, %r12
movq %r12, -128(%rbp)
callq printi
movq L14, %r11
movq %r11, -120(%rbp)
callq print
callq check
movq %rax, %r11
movq %r11, -112(%rbp)
callq printi
movq L16, %r12
movq %r12, -104(%rbp)
callq print
callq check
movq %rax, %r12
movq %r12, -96(%rbp)
callq printi
movq L18, %r11
movq %r11, -88(%rbp)
callq print
callq check
movq %rax, %r11
movq %r11, -80(%rbp)
callq printi
movq L20, %r12
movq %r12, -72(%rbp)
callq print
callq check
movq %rax, %r12
movq %r12, -64(%rbp)
callq printi
movq L22, %r11
movq %r11, -56(%rbp)
callq print
callq check
movq %rax, %r11
movq %r11, -48(%rbp)
callq printi
movq L24, %r12
movq %r12, -40(%rbp)
callq print
callq check
movq %rax, %r12
movq %r12, -32(%rbp)
callq printi
movq L26, %r11
movq %r11, -24(%rbp)
callq print
callq check
movq %rax, %r11
movq %r11, -16(%rbp)
callq printi
movq L28, %r12
movq %r12, -8(%rbp)
callq print
jmp L31
L31:
addq $176, %rsp
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
ret


.size tigermain, .-tigermain
.section .rodata
L7:
.long 1
.string "\n"
L8:
.long 1
.string "\n"
L9:
.long 1
.string "\n"
L10:
.long 1
.string "\n"
L11:
.long 1
.string "\n"
L12:
.long 1
.string "\n"
L13:
.long 1
.string "\n"
L14:
.long 1
.string "\n"
L15:
.long 1
.string "\n"
L16:
.long 1
.string "\n"
L17:
.long 1
.string "\n"
L18:
.long 1
.string "\n"
L19:
.long 1
.string "\n"
L20:
.long 1
.string "\n"
L21:
.long 1
.string "\n"
L22:
.long 1
.string "\n"
L23:
.long 1
.string "\n"
L24:
.long 1
.string "\n"
L25:
.long 1
.string "\n"
L26:
.long 1
.string "\n"
L27:
.long 1
.string "\n"
L28:
.long 1
.string "\n"
