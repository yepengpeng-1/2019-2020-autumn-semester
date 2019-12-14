.text
.globl g
.type g, @function

g:
pushq %rbp
movq %rsp, %rbp
subq $112, %rsp
L9:
movq 8(%rbp), %r11
movq %r11, -112(%rbp)
movq -104(%rbp), %r10
movq -112(%rbp), %r13
cmpq %r10, %r13
jg L3
L4:
movq -88(%rbp), %r13
movq -96(%rbp), %r13
addq %r13, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r13
movq %r13, %r12
movq %r12, -80(%rbp)
movq 16(%rbp), %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq %r13, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %r11
movq %r11, -56(%rbp)
movq -48(%rbp), %r10
movq -64(%rbp), %r13
movq %r10, -8(%r13)
movq -32(%rbp), %r10
movq -40(%rbp), %r10
movq %r10, (%r10)
L5:
jmp L8
L3:
movq -80(%rbp), %r13
movq %r13, %r12
movq %r12, -40(%rbp)
movq L2, %r11
movq %r11, -24(%rbp)
callq print
movq %rax, %r12
movq %r12, -16(%rbp)
movq -16(%rbp), %r13
movq -40(%rbp), %r10
movq %r13, (%r10)
jmp L5
L8:
addq $112, %rsp
ret


.size g, .-g
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $56, %rsp
L11:
movq -56(%rbp), %r13
movq %r13, -16(%rbp)
movq -8(%rbp), %r11
movq %r11, -48(%rbp)
callq printi
movq -8(%rbp), %r11
movq %r11, -40(%rbp)
callq printi
movq L7, %r11
movq %r11, -32(%rbp)
callq print
callq g
movq -8(%rbp), %r12
movq %r12, -24(%rbp)
callq printi
jmp L10
L10:
addq $56, %rsp
ret


.size tigermain, .-tigermain
.section .rodata
L1:
.long 20
.string "hey! Bigger than 3!\n"
L2:
.long 20
.string "hey! Bigger than 3!\n"
L6:
.long 1
.string "\n"
L7:
.long 1
.string "\n"
