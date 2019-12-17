.text
.globl printb
.type printb, @function

printb:
pushq %rbp
movq %rsp, %rbp
subq $376, %rsp
L22:
movq -368(%rbp), %r10
movq -376(%rbp), %r13
addq %r10, %r11
movq %r11, -376(%rbp)
movq -376(%rbp), %r10
movq %r10, %r12
movq %r12, -360(%rbp)
movq 8(%rbp), %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r10
movq %r10, %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r10
movq %r10, %r11
movq %r11, -336(%rbp)
movq -344(%rbp), %r13
movq -8(%r13), %r12
movq %r12, -328(%rbp)
movq -312(%rbp), %r13
movq -320(%rbp), %r10
subq %r13, %r11
movq %r11, -320(%rbp)
movq -320(%rbp), %r13
movq -360(%rbp), %r13
movq %r13, (%r13)
movq -304(%rbp), %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r12
movq %r12, -296(%rbp)
movq -360(%rbp), %r10
movq (%r10), %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r10
movq -296(%rbp), %r13
cmpq %r10, %r13
jle L2
L1:
movq L20(%rip), %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r13
movq %r13, %rdi
callq print
jmp L21
L2:
movq -264(%rbp), %r10
movq -272(%rbp), %r13
addq %r10, %r11
movq %r11, -272(%rbp)
movq -272(%rbp), %r10
movq %r10, %r12
movq %r12, -256(%rbp)
movq 8(%rbp), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq %r10, %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r10
movq %r10, %r11
movq %r11, -232(%rbp)
movq -240(%rbp), %r13
movq -8(%r13), %r12
movq %r12, -224(%rbp)
movq -208(%rbp), %r13
movq -216(%rbp), %r10
subq %r13, %r11
movq %r11, -216(%rbp)
movq -216(%rbp), %r13
movq -256(%rbp), %r13
movq %r13, (%r13)
movq -200(%rbp), %r10
movq %r10, -24(%rbp)
movq -24(%rbp), %r12
movq %r12, -192(%rbp)
movq -256(%rbp), %r10
movq (%r10), %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r10
movq -192(%rbp), %r13
cmpq %r10, %r13
jle L5
L4:
movq L18(%rip), %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r13
movq %r13, %rdi
callq print
movq -8(%rbp), %r11
movq %r11, -168(%rbp)
movq -360(%rbp), %r13
movq (%r13), %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r13
movq -168(%rbp), %r10
cmpq %r13, %r10
jge L1
L3:
movq -8(%rbp), %r11
movq %r11, -152(%rbp)
movq -136(%rbp), %r10
movq -144(%rbp), %r13
addq %r10, %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, -8(%rbp)
jmp L2
L5:
movq -8(%rbp), %r11
movq %r11, -128(%rbp)
movq -24(%rbp), %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r10
movq -128(%rbp), %r13
cmpq %r10, %r13
jg L14
L15:
movq L13(%rip), %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq %r13, -48(%rbp)
L16:
movq -48(%rbp), %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r10
movq %r10, %rdi
callq print
movq -24(%rbp), %r11
movq %r11, -96(%rbp)
movq -256(%rbp), %r13
movq (%r13), %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r10
movq -96(%rbp), %r13
cmpq %r10, %r13
jge L4
L6:
movq -24(%rbp), %r11
movq %r11, -80(%rbp)
movq -64(%rbp), %r13
movq -72(%rbp), %r10
addq %r13, %r12
movq %r12, -72(%rbp)
movq -72(%rbp), %r13
movq %r13, -24(%rbp)
jmp L5
L14:
movq L12(%rip), %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq %r10, -48(%rbp)
jmp L16
L21:
addq $376, %rsp
popq %rbp
ret


.size printb, .-printb
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $24, %rsp
L24:
movq -24(%rbp), %r13
movq %r13, -16(%rbp)
callq printb
jmp L23
L23:
addq $24, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L7
.type L7, @object
.size L7, 1
L7:
.string "x"
.globl L8
.type L8, @object
.size L8, 1
L8:
.string "y"
.globl L12
.type L12, @object
.size L12, 1
L12:
.string "x"
.globl L13
.type L13, @object
.size L13, 1
L13:
.string "y"
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
