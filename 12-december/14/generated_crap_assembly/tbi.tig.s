.text
.globl printb
.type printb, @function

printb:
pushq %rbp
movq %rsp, %rbp
subq $376, %rsp
L22:
movq -368(%rbp), %r13
movq -376(%rbp), %r13
addq %r13, %r12
movq %r12, -376(%rbp)
movq -376(%rbp), %r13
movq %r13, %r12
movq %r12, -360(%rbp)
movq 8(%rbp), %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r10
movq %r10, %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r10
movq %r10, %r11
movq %r11, -336(%rbp)
movq -344(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -328(%rbp)
movq -312(%rbp), %r10
movq -320(%rbp), %r13
subq %r10, %r12
movq %r12, -320(%rbp)
movq -320(%rbp), %r10
movq -360(%rbp), %r13
movq %r10, (%r13)
movq -304(%rbp), %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r12
movq %r12, -296(%rbp)
movq -360(%rbp), %r13
movq (%r13), %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r10
movq -296(%rbp), %r10
cmpq %r10, %r10
jle L2
L1:
movq L20, %r12
movq %r12, -280(%rbp)
callq print
jmp L21
L2:
movq -264(%rbp), %r13
movq -272(%rbp), %r10
addq %r13, %r11
movq %r11, -272(%rbp)
movq -272(%rbp), %r10
movq %r10, %r11
movq %r11, -256(%rbp)
movq 8(%rbp), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq %r10, %r11
movq %r11, -240(%rbp)
movq -240(%rbp), %r13
movq %r13, %r11
movq %r11, -232(%rbp)
movq -240(%rbp), %r13
movq -8(%r13), %r11
movq %r11, -224(%rbp)
movq -208(%rbp), %r13
movq -216(%rbp), %r13
subq %r13, %r12
movq %r12, -216(%rbp)
movq -216(%rbp), %r10
movq -256(%rbp), %r10
movq %r10, (%r10)
movq -200(%rbp), %r10
movq %r10, -24(%rbp)
movq -24(%rbp), %r11
movq %r11, -192(%rbp)
movq -256(%rbp), %r10
movq (%r10), %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r10
movq -192(%rbp), %r13
cmpq %r10, %r13
jle L5
L4:
movq L18, %r11
movq %r11, -176(%rbp)
callq print
movq -8(%rbp), %r11
movq %r11, -168(%rbp)
movq -360(%rbp), %r13
movq (%r13), %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq -168(%rbp), %r10
cmpq %r13, %r10
jge L1
L3:
movq -8(%rbp), %r11
movq %r11, -152(%rbp)
movq -136(%rbp), %r13
movq -144(%rbp), %r13
addq %r13, %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, -8(%rbp)
jmp L2
L5:
movq -8(%rbp), %r12
movq %r12, -128(%rbp)
movq -24(%rbp), %r11
movq %r11, -120(%rbp)
movq -120(%rbp), %r13
movq -128(%rbp), %r13
cmpq %r13, %r13
jg L14
L15:
movq L13, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r10
movq %r10, -48(%rbp)
L16:
movq -48(%rbp), %r11
movq %r11, -104(%rbp)
callq print
movq -24(%rbp), %r11
movq %r11, -96(%rbp)
movq -256(%rbp), %r13
movq (%r13), %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r10
movq -96(%rbp), %r13
cmpq %r10, %r13
jge L4
L6:
movq -24(%rbp), %r11
movq %r11, -80(%rbp)
movq -64(%rbp), %r10
movq -72(%rbp), %r10
addq %r10, %r12
movq %r12, -72(%rbp)
movq -72(%rbp), %r13
movq %r13, -24(%rbp)
jmp L5
L14:
movq L12, %r12
movq %r12, -56(%rbp)
movq -56(%rbp), %r13
movq %r13, -48(%rbp)
jmp L16
L21:
addq $376, %rsp
ret


.size printb, .-printb
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $24, %rsp
L24:
movq -24(%rbp), %r10
movq %r10, -16(%rbp)
callq printb
jmp L23
L23:
addq $24, %rsp
ret


.size tigermain, .-tigermain
.section .rodata
L7:
.long 1
.string "x"
L8:
.long 1
.string "y"
L12:
.long 1
.string "x"
L13:
.long 1
.string "y"
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
