.text
.globl nop
.type nop, @function
nop:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
L15:
movq L2(%rip), %r11
movq %r11, -8(%rbp)
movq -8(%rbp), %r10
movq %r10, %rdi
callq print
jmp L14
L14:
addq $16, %rsp
popq %rbp
ret


.size nop, .-nop
.globl init
.type init, @function
init:
pushq %rbp
movq %rsp, %rbp
subq $1040, %rsp
L17:
movq $-8, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r13
movq -32(%rbp), %r10
addq %r13, %r11
movq %r11, -32(%rbp)
movq -32(%rbp), %r13
movq %r13, %r12
movq %r12, -56(%rbp)
movq $8, %r11
movq %r11, -72(%rbp)
movq -72(%rbp), %r13
movq -80(%rbp), %r10
addq %r13, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq (%r13), %r11
movq %r11, -104(%rbp)
movq $8, %r12
movq %r12, -120(%rbp)
movq -120(%rbp), %r10
movq -128(%rbp), %r13
addq %r10, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq (%r10), %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r13
movq %r13, %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %r12
movq %r12, -184(%rbp)
movq $-8, %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r13
movq -208(%rbp), %r10
addq %r13, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r13
movq (%r13), %r11
movq %r11, -232(%rbp)
movq $1, %r12
movq %r12, -248(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r13
subq %r10, %r11
movq %r11, -256(%rbp)
movq -56(%rbp), %r10
movq -256(%rbp), %r10
movq (%r10), %r10
movq $-8, %r12
movq %r12, -296(%rbp)
movq -296(%rbp), %r13
movq -304(%rbp), %r10
addq %r13, %r11
movq %r11, -304(%rbp)
movq $0, %r12
movq %r12, -328(%rbp)
movq -304(%rbp), %r13
movq -328(%rbp), %r10
movq (%r13), %r10
movq $-8, %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r13
movq -360(%rbp), %r10
addq %r13, %r12
movq %r12, -360(%rbp)
movq -360(%rbp), %r13
movq (%r13), %r11
movq %r11, -384(%rbp)
movq -56(%rbp), %r13
movq (%r13), %r12
movq %r12, -400(%rbp)
movq -384(%rbp), %r10
movq -400(%rbp), %r13
cmpq %r13, %r10
jle L4
L3:
jmp L16
L4:
movq $8, %r11
movq %r11, -432(%rbp)
movq -432(%rbp), %r10
movq -440(%rbp), %r13
addq %r10, %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r10
movq (%r10), %r11
movq %r11, -464(%rbp)
movq $8, %r12
movq %r12, -480(%rbp)
movq -480(%rbp), %r13
movq -488(%rbp), %r10
addq %r13, %r11
movq %r11, -488(%rbp)
movq -488(%rbp), %r13
movq (%r13), %r12
movq %r12, -512(%rbp)
movq -512(%rbp), %r10
movq %r10, %r11
movq %r11, -528(%rbp)
movq -528(%rbp), %r13
movq %r13, %r12
movq %r12, -544(%rbp)
movq $-24, %r11
movq %r11, -560(%rbp)
movq -560(%rbp), %r10
movq -568(%rbp), %r13
addq %r10, %r12
movq %r12, -568(%rbp)
movq -568(%rbp), %r10
movq (%r10), %r11
movq %r11, -592(%rbp)
movq $-8, %r12
movq %r12, -608(%rbp)
movq -608(%rbp), %r13
movq -616(%rbp), %r10
addq %r13, %r11
movq %r11, -616(%rbp)
movq -616(%rbp), %r13
movq (%r13), %r12
movq %r12, -640(%rbp)
movq $8, %r11
movq %r11, -656(%rbp)
movq -640(%rbp), %r10
movq %r10, %rax
movq -656(%rbp), %r13
imulq %r13
movq %rax, %r12
movq %r12, -680(%rbp)
movq -680(%rbp), %r10
movq -688(%rbp), %r13
addq %r10, %r11
movq %r11, -688(%rbp)
movq $-8, %r12
movq %r12, -712(%rbp)
movq -712(%rbp), %r13
movq -720(%rbp), %r10
addq %r13, %r11
movq %r11, -720(%rbp)
movq -720(%rbp), %r13
movq (%r13), %r12
movq %r12, -744(%rbp)
movq $2, %r11
movq %r11, -760(%rbp)
movq -744(%rbp), %r10
movq %r10, %rax
movq -760(%rbp), %r13
imulq %r13
movq %rax, %r12
movq %r12, -784(%rbp)
movq $1, %r11
movq %r11, -792(%rbp)
movq -792(%rbp), %r10
movq -800(%rbp), %r13
addq %r10, %r12
movq %r12, -800(%rbp)
movq -688(%rbp), %r10
movq -800(%rbp), %r10
movq (%r10), %r10
callq nop
movq $-8, %r11
movq %r11, -840(%rbp)
movq -840(%rbp), %r13
movq -848(%rbp), %r10
addq %r13, %r12
movq %r12, -848(%rbp)
movq -848(%rbp), %r13
movq (%r13), %r11
movq %r11, -872(%rbp)
movq -56(%rbp), %r10
movq (%r10), %r12
movq %r12, -888(%rbp)
movq -872(%rbp), %r10
movq -888(%rbp), %r13
cmpq %r13, %r10
jge L3
L5:
movq $-8, %r11
movq %r11, -920(%rbp)
movq -920(%rbp), %r10
movq -928(%rbp), %r13
addq %r10, %r12
movq %r12, -928(%rbp)
movq $-8, %r11
movq %r11, -952(%rbp)
movq -952(%rbp), %r13
movq -960(%rbp), %r10
addq %r13, %r12
movq %r12, -960(%rbp)
movq -960(%rbp), %r13
movq (%r13), %r11
movq %r11, -984(%rbp)
movq $1, %r12
movq %r12, -1000(%rbp)
movq -1000(%rbp), %r10
movq -1008(%rbp), %r13
addq %r10, %r11
movq %r11, -1008(%rbp)
movq -928(%rbp), %r10
movq -1008(%rbp), %r10
movq (%r10), %r10
jmp L4
L16:
addq $1040, %rsp
popq %rbp
ret


.size init, .-init
.globl bsearch
.type bsearch, @function
bsearch:
movq %rdi, 24(%rbp)
movq %rsi, 16(%rbp)
movq %rdx, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $1344, %rsp
L19:
movq $24, %r12
movq %r12, -40(%rbp)
movq -40(%rbp), %r13
movq -48(%rbp), %r10
addq %r13, %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r13
movq (%r13), %r12
movq %r12, -72(%rbp)
movq $16, %r11
movq %r11, -88(%rbp)
movq -88(%rbp), %r13
movq -96(%rbp), %r10
addq %r13, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r13
movq (%r13), %r11
movq %r11, -120(%rbp)
movq -72(%rbp), %r10
movq -120(%rbp), %r10
cmpq %r10, %r10
je L9
L10:
movq $-32, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r13
movq -160(%rbp), %r10
addq %r13, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, %r12
movq %r12, -184(%rbp)
movq $-16, %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r10
movq -208(%rbp), %r13
addq %r10, %r12
movq %r12, -208(%rbp)
movq $24, %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r13
movq -240(%rbp), %r10
addq %r13, %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r13
movq (%r13), %r11
movq %r11, -264(%rbp)
movq $16, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r10
movq -288(%rbp), %r13
addq %r10, %r11
movq %r11, -288(%rbp)
movq -288(%rbp), %r10
movq (%r10), %r12
movq %r12, -312(%rbp)
movq -312(%rbp), %r13
movq -328(%rbp), %r10
addq %r13, %r11
movq %r11, -328(%rbp)
movq $2, %r12
movq %r12, -352(%rbp)
movq -328(%rbp), %r13
movq %r13, %rax
movq -352(%rbp), %r10
idivq %r10
movq %rax, %r11
movq %r11, -376(%rbp)
movq -208(%rbp), %r10
movq -376(%rbp), %r13
movq (%r10), %r13
movq $32, %r12
movq %r12, -400(%rbp)
movq -400(%rbp), %r10
movq -408(%rbp), %r13
addq %r10, %r11
movq %r11, -408(%rbp)
movq -408(%rbp), %r10
movq (%r10), %r12
movq %r12, -432(%rbp)
movq $8, %r11
movq %r11, -448(%rbp)
movq -448(%rbp), %r13
movq -456(%rbp), %r10
addq %r13, %r12
movq %r12, -456(%rbp)
movq -456(%rbp), %r13
movq (%r13), %r11
movq %r11, -480(%rbp)
movq $8, %r12
movq %r12, -496(%rbp)
movq -496(%rbp), %r10
movq -504(%rbp), %r13
addq %r10, %r11
movq %r11, -504(%rbp)
movq -504(%rbp), %r10
movq (%r10), %r12
movq %r12, -528(%rbp)
movq -528(%rbp), %r13
movq %r13, %r11
movq %r11, -544(%rbp)
movq -544(%rbp), %r10
movq %r10, %r12
movq %r12, -560(%rbp)
movq $-24, %r11
movq %r11, -576(%rbp)
movq -576(%rbp), %r13
movq -584(%rbp), %r10
addq %r13, %r12
movq %r12, -584(%rbp)
movq -584(%rbp), %r13
movq (%r13), %r11
movq %r11, -608(%rbp)
movq $-8, %r12
movq %r12, -624(%rbp)
movq -624(%rbp), %r10
movq -632(%rbp), %r13
addq %r10, %r11
movq %r11, -632(%rbp)
movq -632(%rbp), %r10
movq (%r10), %r12
movq %r12, -656(%rbp)
movq $8, %r11
movq %r11, -672(%rbp)
movq -656(%rbp), %r13
movq %r13, %rax
movq -672(%rbp), %r10
imulq %r10
movq %rax, %r12
movq %r12, -696(%rbp)
movq -696(%rbp), %r13
movq -704(%rbp), %r10
addq %r13, %r11
movq %r11, -704(%rbp)
movq -704(%rbp), %r13
movq (%r13), %r12
movq %r12, -728(%rbp)
movq $8, %r11
movq %r11, -744(%rbp)
movq -744(%rbp), %r13
movq -752(%rbp), %r10
addq %r13, %r12
movq %r12, -752(%rbp)
movq -752(%rbp), %r13
movq (%r13), %r11
movq %r11, -776(%rbp)
movq -728(%rbp), %r10
movq -776(%rbp), %r10
cmpq %r10, %r10
jl L6
L7:
movq $-24, %r12
movq %r12, -808(%rbp)
movq -808(%rbp), %r13
movq -816(%rbp), %r10
addq %r13, %r11
movq %r11, -816(%rbp)
movq -816(%rbp), %r13
movq %r13, %r12
movq %r12, -840(%rbp)
movq $24, %r11
movq %r11, -856(%rbp)
movq -856(%rbp), %r13
movq -864(%rbp), %r10
addq %r13, %r12
movq %r12, -864(%rbp)
movq -864(%rbp), %r13
movq (%r13), %r11
movq %r11, -888(%rbp)
movq -888(%rbp), %r10
movq %r10, %rdx
movq $-8, %r12
movq %r12, -912(%rbp)
movq -912(%rbp), %r13
movq -920(%rbp), %r10
addq %r13, %r11
movq %r11, -920(%rbp)
movq -920(%rbp), %r13
movq (%r13), %r12
movq %r12, -944(%rbp)
movq -944(%rbp), %r10
movq %r10, %rsi
movq $8, %r11
movq %r11, -968(%rbp)
movq -968(%rbp), %r13
movq -976(%rbp), %r10
addq %r13, %r12
movq %r12, -976(%rbp)
movq -976(%rbp), %r13
movq (%r13), %r11
movq %r11, -1000(%rbp)
movq -1000(%rbp), %r10
movq %r10, %rdi
callq bsearch
movq %rax, %r12
movq %r12, -1024(%rbp)
movq -1024(%rbp), %r13
movq -1032(%rbp), %r10
movq (%r10), %r13
L8:
movq -184(%rbp), %r10
movq -1032(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
L11:
jmp L18
L9:
movq $24, %r12
movq %r12, -1064(%rbp)
movq -1064(%rbp), %r13
movq -1072(%rbp), %r10
addq %r13, %r11
movq %r11, -1072(%rbp)
movq -184(%rbp), %r13
movq -1072(%rbp), %r13
jmp L11
L6:
movq -840(%rbp), %r10
movq %r10, %r11
movq %r11, -1032(%rbp)
movq $-8, %r12
movq %r12, -1128(%rbp)
movq -1128(%rbp), %r10
movq -1136(%rbp), %r13
addq %r10, %r11
movq %r11, -1136(%rbp)
movq -1136(%rbp), %r10
movq (%r10), %r12
movq %r12, -1160(%rbp)
movq $1, %r11
movq %r11, -1176(%rbp)
movq -1176(%rbp), %r13
movq -1184(%rbp), %r10
addq %r13, %r12
movq %r12, -1184(%rbp)
movq -1184(%rbp), %r13
movq %r13, %rdx
movq $16, %r11
movq %r11, -1216(%rbp)
movq -1216(%rbp), %r10
movq -1224(%rbp), %r13
addq %r10, %r12
movq %r12, -1224(%rbp)
movq -1224(%rbp), %r10
movq (%r10), %r11
movq %r11, -1248(%rbp)
movq -1248(%rbp), %r13
movq %r13, %rsi
movq $8, %r12
movq %r12, -1272(%rbp)
movq -1272(%rbp), %r10
movq -1280(%rbp), %r13
addq %r10, %r11
movq %r11, -1280(%rbp)
movq -1280(%rbp), %r10
movq (%r10), %r12
movq %r12, -1304(%rbp)
movq -1304(%rbp), %r13
movq %r13, %rdi
callq bsearch
movq %rax, %r11
movq %r11, -1328(%rbp)
movq -1032(%rbp), %r10
movq -1328(%rbp), %r10
movq (%r10), %r10
jmp L8
L18:
addq $1344, %rsp
popq %rbp
ret


.size bsearch, .-bsearch
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $376, %rsp
L21:
callq init
callq init
movq $8, %r12
movq %r12, -8(%rbp)
movq -8(%rbp), %r13
movq -16(%rbp), %r10
addq %r13, %r11
movq %r11, -16(%rbp)
movq -16(%rbp), %r13
movq (%r13), %r12
movq %r12, -40(%rbp)
movq $32, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq -64(%rbp), %r13
addq %r10, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq (%r10), %r11
movq %r11, -88(%rbp)
movq $8, %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r13
movq -112(%rbp), %r10
addq %r13, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq (%r13), %r12
movq %r12, -136(%rbp)
movq $8, %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r10
movq -160(%rbp), %r13
addq %r10, %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r10
movq (%r10), %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r13
movq %r13, %r12
movq %r12, -200(%rbp)
movq -200(%rbp), %r10
movq %r10, %r11
movq %r11, -216(%rbp)
movq $0, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r13
movq %r13, %rdx
movq $-8, %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r13
addq %r10, %r12
movq %r12, -256(%rbp)
movq -256(%rbp), %r10
movq (%r10), %r11
movq %r11, -280(%rbp)
movq $1, %r12
movq %r12, -296(%rbp)
movq -296(%rbp), %r13
movq -304(%rbp), %r10
subq %r13, %r11
movq %r11, -304(%rbp)
movq -304(%rbp), %r13
movq %r13, %rsi
movq $7, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r10
movq %r10, %rdi
callq bsearch
movq %rax, %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r13
movq %r13, %rdi
callq printi
movq L13(%rip), %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r10
movq %r10, %rdi
callq print
jmp L20
L20:
addq $376, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $272, %rsp
L23:
movq $-16, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r13
movq -48(%rbp), %r10
addq %r13, %r12
movq %r12, -48(%rbp)
movq $16, %r11
movq %r11, -72(%rbp)
movq -48(%rbp), %r13
movq -72(%rbp), %r10
movq (%r13), %r10
movq $-32, %r12
movq %r12, -96(%rbp)
movq -96(%rbp), %r13
movq -104(%rbp), %r10
addq %r13, %r11
movq %r11, -104(%rbp)
movq -104(%rbp), %r13
movq %r13, %r12
movq %r12, -128(%rbp)
movq $-8, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r13
movq -152(%rbp), %r10
addq %r13, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r13
movq (%r13), %r11
movq %r11, -176(%rbp)
movq -176(%rbp), %r10
movq %r10, %rsi
movq $-8, %r12
movq %r12, -200(%rbp)
movq -200(%rbp), %r13
movq -208(%rbp), %r10
addq %r13, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq (%r13), %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r10
movq %r10, %rdi
callq initArray
movq %rax, %r11
movq %r11, -256(%rbp)
movq -128(%rbp), %r10
movq -256(%rbp), %r13
movq (%r10), %r13
callq try
jmp L22
L22:
addq $272, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L1
.type L1, @object
.size L1, 0
L1:
.string ""
.globl L2
.type L2, @object
.size L2, 0
L2:
.string ""
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
