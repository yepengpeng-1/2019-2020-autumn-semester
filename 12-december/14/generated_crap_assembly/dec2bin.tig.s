.text
.globl dec2bin
.type dec2bin, @function

dec2bin:
pushq %rbp
movq %rsp, %rbp
subq $96, %rsp
L21:
movq 8(%rbp), %r11
movq %r11, -96(%rbp)
movq -88(%rbp), %r13
movq -96(%rbp), %r13
cmpq %r13, %r13
jg L1
L2:
jmp L20
L1:
movq 8(%rbp), %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq %rax, %r10
movq -72(%rbp), %r13
divq %r13
movq %r11, %rax
movq %r11, -64(%rbp)
callq dec2bin
movq 8(%rbp), %r11
movq %r11, -56(%rbp)
movq 8(%rbp), %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r13
movq %rax, %r13
movq -40(%rbp), %r10
divq %r10
movq %r11, %rax
movq %r11, -32(%rbp)
movq -32(%rbp), %r13
movq %rax, %r13
movq -24(%rbp), %r10
mulq %r10
movq %r11, %rax
movq %r11, -16(%rbp)
movq -8(%rbp), %r10
movq -16(%rbp), %r13
subq %r13, %r12
movq %r12, -8(%rbp)
callq printi
jmp L2
L20:
addq $96, %rsp
ret


.size dec2bin, .-dec2bin
.globl try
.type try, @function

try:
pushq %rbp
movq %rsp, %rbp
subq $64, %rsp
L23:
callq printi
callq printi
movq L5, %r12
movq %r12, -64(%rbp)
callq print
callq dec2bin
movq L7, %r11
movq %r11, -56(%rbp)
callq print
callq printi
movq L9, %r12
movq %r12, -48(%rbp)
callq print
callq dec2bin
movq L11, %r11
movq %r11, -40(%rbp)
callq print
callq printi
movq L13, %r12
movq %r12, -32(%rbp)
callq print
callq dec2bin
movq L15, %r11
movq %r11, -24(%rbp)
callq print
callq printi
movq L17, %r12
movq %r12, -16(%rbp)
callq print
callq dec2bin
movq L19, %r11
movq %r11, -8(%rbp)
callq print
jmp L22
L22:
addq $64, %rsp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $0, %rsp
L25:
callq try
jmp L24
L24:
addq $0, %rsp
ret


.size tigermain, .-tigermain
.section .rodata
L4:
.long 4
.string "\t->\t"
L5:
.long 4
.string "\t->\t"
L6:
.long 1
.string "\n"
L7:
.long 1
.string "\n"
L8:
.long 4
.string "\t->\t"
L9:
.long 4
.string "\t->\t"
L10:
.long 1
.string "\n"
L11:
.long 1
.string "\n"
L12:
.long 4
.string "\t->\t"
L13:
.long 4
.string "\t->\t"
L14:
.long 1
.string "\n"
L15:
.long 1
.string "\n"
L16:
.long 4
.string "\t->\t"
L17:
.long 4
.string "\t->\t"
L18:
.long 1
.string "\n"
L19:
.long 1
.string "\n"
