.text
.globl nop
.type nop, @function

nop:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp
L36:
movq L2(%rip), %r11
movq %r11, -8(%rbp)
callq print
jmp L35
L35:
addq $8, %rsp
popq %rbp
ret


.size nop, .-nop
.globl init
.type init, @function

init:
pushq %rbp
movq %rsp, %rbp
subq $296, %rsp
L38:
movq -288(%rbp), %r10
movq -296(%rbp), %r10
addq %r10, %r12
movq %r12, -296(%rbp)
movq -296(%rbp), %r10
movq %r10, %r12
movq %r12, -280(%rbp)
movq 8(%rbp), %r11
movq %r11, -272(%rbp)
movq -272(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -264(%rbp)
movq -264(%rbp), %r13
movq %r13, %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r10
movq %r10, %r11
movq %r11, -248(%rbp)
movq -256(%rbp), %r10
movq -8(%r10), %r11
movq %r11, -240(%rbp)
movq -224(%rbp), %r10
movq -232(%rbp), %r10
subq %r10, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r13
movq -280(%rbp), %r10
movq %r13, (%r10)
movq -216(%rbp), %r13
movq %r13, -8(%rbp)
movq -8(%rbp), %r11
movq %r11, -208(%rbp)
movq -280(%rbp), %r10
movq (%r10), %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r13
movq -208(%rbp), %r10
cmpq %r13, %r10
jle L4
L3:
jmp L37
L4:
movq 8(%rbp), %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r13
movq %r13, %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r10
movq %r10, %r12
movq %r12, -168(%rbp)
movq -176(%rbp), %r10
movq -24(%r10), %r12
movq %r12, -160(%rbp)
movq -8(%rbp), %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r13
movq %rax, %r13
movq -144(%rbp), %r13
imulq %r13
movq %r11, %rax
movq %r11, -136(%rbp)
movq -128(%rbp), %r13
movq -136(%rbp), %r13
addq %r13, %r12
movq %r12, -128(%rbp)
movq -128(%rbp), %r13
movq %r13, %r12
movq %r12, -120(%rbp)
movq 8(%rbp), %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -104(%rbp)
movq -104(%rbp), %r13
movq %r13, %r11
movq %r11, -96(%rbp)
movq -96(%rbp), %r10
movq %r10, %r11
movq %r11, -88(%rbp)
movq -96(%rbp), %r10
movq -8(%r10), %r11
movq %r11, -80(%rbp)
movq -8(%rbp), %r12
movq %r12, -72(%rbp)
movq -64(%rbp), %r13
movq -72(%rbp), %r13
subq %r13, %r11
movq %r11, -64(%rbp)
movq -64(%rbp), %r10
movq -120(%rbp), %r13
movq %r10, (%r13)
callq nop
movq -8(%rbp), %r12
movq %r12, -56(%rbp)
movq -280(%rbp), %r13
movq (%r13), %r11
movq %r11, -48(%rbp)
movq -48(%rbp), %r13
movq -56(%rbp), %r13
cmpq %r13, %r13
jge L3
L5:
movq -8(%rbp), %r12
movq %r12, -40(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r13
addq %r10, %r12
movq %r12, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, -8(%rbp)
jmp L4
L37:
addq $296, %rsp
popq %rbp
ret


.size init, .-init
.globl quicksort
.type quicksort, @function

quicksort:
pushq %rbp
movq %rsp, %rbp
subq $1144, %rsp
L40:
movq 16(%rbp), %r11
movq %r11, -1144(%rbp)
movq -1144(%rbp), %r13
movq %r13, -16(%rbp)
movq 8(%rbp), %r11
movq %r11, -1136(%rbp)
movq -1136(%rbp), %r13
movq %r13, -32(%rbp)
movq -1120(%rbp), %r10
movq -1128(%rbp), %r10
addq %r10, %r12
movq %r12, -1128(%rbp)
movq -1128(%rbp), %r10
movq %r10, %r12
movq %r12, -1112(%rbp)
movq 24(%rbp), %r11
movq %r11, -1104(%rbp)
movq -1104(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -1096(%rbp)
movq -1096(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -1088(%rbp)
movq -1088(%rbp), %r10
movq %r10, %r11
movq %r11, -1080(%rbp)
movq -1080(%rbp), %r10
movq %r10, %r12
movq %r12, -1072(%rbp)
movq -1080(%rbp), %r10
movq -24(%r10), %r11
movq %r11, -1064(%rbp)
movq 16(%rbp), %r11
movq %r11, -1056(%rbp)
movq -1056(%rbp), %r10
movq %rax, %r10
movq -1048(%rbp), %r13
imulq %r13
movq %r11, %rax
movq %r11, -1040(%rbp)
movq -1032(%rbp), %r13
movq -1040(%rbp), %r10
addq %r10, %r11
movq %r11, -1032(%rbp)
movq -1032(%rbp), %r10
movq -1112(%rbp), %r10
movq 16(%rbp), %r12
movq %r12, -1024(%rbp)
movq 8(%rbp), %r12
movq %r12, -1016(%rbp)
movq -1016(%rbp), %r10
movq -1024(%rbp), %r13
cmpq %r10, %r13
jl L25
L26:
jmp L39
L25:
L6:
movq -8(%rbp), %r11
movq %r11, -1008(%rbp)
movq -24(%rbp), %r11
movq %r11, -1000(%rbp)
movq -1000(%rbp), %r10
movq -1008(%rbp), %r13
cmpq %r10, %r13
jl L7
L8:
movq 24(%rbp), %r12
movq %r12, -992(%rbp)
movq -992(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -984(%rbp)
movq -984(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -976(%rbp)
movq -976(%rbp), %r13
movq %r13, %r12
movq %r12, -968(%rbp)
movq -968(%rbp), %r13
movq %r13, %r11
movq %r11, -960(%rbp)
movq -968(%rbp), %r13
movq -24(%r13), %r12
movq %r12, -952(%rbp)
movq -8(%rbp), %r12
movq %r12, -944(%rbp)
movq -944(%rbp), %r13
movq %rax, %r13
movq -936(%rbp), %r10
imulq %r10
movq %r12, %rax
movq %r12, -928(%rbp)
movq -920(%rbp), %r13
movq -928(%rbp), %r13
addq %r13, %r12
movq %r12, -920(%rbp)
movq -904(%rbp), %r13
movq -912(%rbp), %r13
addq %r13, %r11
movq %r11, -912(%rbp)
movq -912(%rbp), %r10
movq -920(%rbp), %r10
movq -8(%rbp), %r12
movq %r12, -896(%rbp)
movq -880(%rbp), %r13
movq -888(%rbp), %r13
subq %r13, %r11
movq %r11, -888(%rbp)
movq 16(%rbp), %r12
movq %r12, -872(%rbp)
callq quicksort
movq 8(%rbp), %r12
movq %r12, -864(%rbp)
movq -8(%rbp), %r11
movq %r11, -856(%rbp)
movq -840(%rbp), %r10
movq -848(%rbp), %r10
addq %r10, %r12
movq %r12, -848(%rbp)
callq quicksort
jmp L26
L7:
jmp L6
L14:
movq -824(%rbp), %r10
movq (%r10), %r12
movq %r12, -832(%rbp)
movq -816(%rbp), %r10
movq -832(%rbp), %r13
cmpq %r10, %r13
jne L15
L16:
movq 24(%rbp), %r11
movq %r11, -808(%rbp)
movq -808(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -800(%rbp)
movq -800(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -792(%rbp)
movq -792(%rbp), %r10
movq %r10, %r12
movq %r12, -784(%rbp)
movq -784(%rbp), %r13
movq %r13, %r12
movq %r12, -776(%rbp)
movq -784(%rbp), %r13
movq -24(%r13), %r12
movq %r12, -768(%rbp)
movq -8(%rbp), %r11
movq %r11, -760(%rbp)
movq -760(%rbp), %r10
movq %rax, %r10
movq -752(%rbp), %r10
imulq %r10
movq %r11, %rax
movq %r11, -744(%rbp)
movq -736(%rbp), %r10
movq -744(%rbp), %r10
addq %r10, %r12
movq %r12, -736(%rbp)
movq -736(%rbp), %r10
movq %r10, %r12
movq %r12, -728(%rbp)
movq 24(%rbp), %r11
movq %r11, -720(%rbp)
movq -720(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -712(%rbp)
movq -712(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -704(%rbp)
movq -704(%rbp), %r13
movq %r13, %r11
movq %r11, -696(%rbp)
movq -696(%rbp), %r13
movq %r13, %r12
movq %r12, -688(%rbp)
movq -696(%rbp), %r13
movq -24(%r13), %r11
movq %r11, -680(%rbp)
movq -24(%rbp), %r11
movq %r11, -672(%rbp)
movq -672(%rbp), %r13
movq %rax, %r13
movq -664(%rbp), %r10
imulq %r10
movq %r11, %rax
movq %r11, -656(%rbp)
movq -648(%rbp), %r10
movq -656(%rbp), %r13
addq %r13, %r11
movq %r11, -648(%rbp)
movq -648(%rbp), %r13
movq -728(%rbp), %r13
L22:
movq -8(%rbp), %r12
movq %r12, -640(%rbp)
movq -24(%rbp), %r12
movq %r12, -632(%rbp)
movq -632(%rbp), %r13
movq -640(%rbp), %r10
cmpq %r13, %r10
jl L17
L18:
movq -616(%rbp), %r10
movq -624(%rbp), %r13
movq %r10, (%r13)
L19:
movq -624(%rbp), %r13
movq (%r13), %r11
movq %r11, -608(%rbp)
movq -600(%rbp), %r13
movq -608(%rbp), %r10
cmpq %r13, %r10
jne L23
L24:
movq 24(%rbp), %r12
movq %r12, -592(%rbp)
movq -592(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -584(%rbp)
movq -584(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -576(%rbp)
movq -576(%rbp), %r10
movq %r10, %r12
movq %r12, -568(%rbp)
movq -568(%rbp), %r10
movq %r10, %r11
movq %r11, -560(%rbp)
movq -568(%rbp), %r10
movq -24(%r10), %r12
movq %r12, -552(%rbp)
movq -24(%rbp), %r12
movq %r12, -544(%rbp)
movq -544(%rbp), %r10
movq %rax, %r10
movq -536(%rbp), %r13
imulq %r13
movq %r12, %rax
movq %r12, -528(%rbp)
movq -520(%rbp), %r13
movq -528(%rbp), %r10
addq %r10, %r12
movq %r12, -520(%rbp)
movq -520(%rbp), %r13
movq %r13, %r11
movq %r11, -512(%rbp)
movq 24(%rbp), %r11
movq %r11, -504(%rbp)
movq -504(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -496(%rbp)
movq -496(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -488(%rbp)
movq -488(%rbp), %r10
movq %r10, %r12
movq %r12, -480(%rbp)
movq -480(%rbp), %r13
movq %r13, %r12
movq %r12, -472(%rbp)
movq -480(%rbp), %r13
movq -24(%r13), %r12
movq %r12, -464(%rbp)
movq -8(%rbp), %r11
movq %r11, -456(%rbp)
movq -456(%rbp), %r10
movq %rax, %r10
movq -448(%rbp), %r10
imulq %r10
movq %r11, %rax
movq %r11, -440(%rbp)
movq -432(%rbp), %r10
movq -440(%rbp), %r10
addq %r10, %r12
movq %r12, -432(%rbp)
movq -432(%rbp), %r13
movq -512(%rbp), %r13
jmp L6
L15:
movq -24(%rbp), %r11
movq %r11, -424(%rbp)
movq -408(%rbp), %r10
movq -416(%rbp), %r13
subq %r10, %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r10
movq %r10, -24(%rbp)
jmp L14
L9:
movq -392(%rbp), %r13
movq -400(%rbp), %r13
addq %r13, %r11
movq %r11, -400(%rbp)
movq -400(%rbp), %r13
movq %r13, %r11
movq %r11, -824(%rbp)
movq -376(%rbp), %r10
movq %r10, %r12
movq %r12, -384(%rbp)
movq -40(%rbp), %r12
movq %r12, -368(%rbp)
movq -368(%rbp), %r13
movq %r13, %r11
movq %r11, -360(%rbp)
movq 24(%rbp), %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r10
movq %r10, %r12
movq %r12, -328(%rbp)
movq -328(%rbp), %r13
movq %r13, %r12
movq %r12, -320(%rbp)
movq -328(%rbp), %r13
movq -24(%r13), %r12
movq %r12, -312(%rbp)
movq -24(%rbp), %r11
movq %r11, -304(%rbp)
movq -304(%rbp), %r10
movq %rax, %r10
movq -296(%rbp), %r10
imulq %r10
movq %r11, %rax
movq %r11, -288(%rbp)
movq -280(%rbp), %r10
movq -288(%rbp), %r10
addq %r10, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r10
movq (%r10), %r12
movq %r12, -272(%rbp)
movq -272(%rbp), %r13
movq -360(%rbp), %r13
cmpq %r13, %r13
jle L12
L13:
movq -264(%rbp), %r10
movq %r10, %r11
movq %r11, -384(%rbp)
L12:
movq -384(%rbp), %r13
movq -824(%rbp), %r10
movq %r13, (%r10)
L11:
movq -824(%rbp), %r10
movq (%r10), %r12
movq %r12, -256(%rbp)
movq -248(%rbp), %r13
movq -256(%rbp), %r13
cmpq %r13, %r13
jne L15
L41:
jmp L16
L10:
movq -240(%rbp), %r10
movq -824(%rbp), %r13
movq %r10, (%r13)
jmp L11
L17:
movq -224(%rbp), %r13
movq -232(%rbp), %r13
addq %r13, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r13
movq %r13, %r12
movq %r12, -624(%rbp)
movq -208(%rbp), %r10
movq %r10, %r11
movq %r11, -216(%rbp)
movq -40(%rbp), %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r13
movq %r13, %r12
movq %r12, -192(%rbp)
movq 24(%rbp), %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -176(%rbp)
movq -176(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -168(%rbp)
movq -168(%rbp), %r10
movq %r10, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq %r13, %r11
movq %r11, -152(%rbp)
movq -160(%rbp), %r13
movq -24(%r13), %r11
movq %r11, -144(%rbp)
movq -8(%rbp), %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r10
movq %rax, %r10
movq -128(%rbp), %r10
imulq %r10
movq %r12, %rax
movq %r12, -120(%rbp)
movq -112(%rbp), %r10
movq -120(%rbp), %r10
addq %r10, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r10
movq (%r10), %r11
movq %r11, -104(%rbp)
movq -104(%rbp), %r13
movq -192(%rbp), %r13
cmpq %r13, %r13
jge L20
L21:
movq -96(%rbp), %r10
movq %r10, %r12
movq %r12, -216(%rbp)
L20:
movq -216(%rbp), %r13
movq -624(%rbp), %r13
movq %r13, (%r13)
jmp L19
L23:
movq -8(%rbp), %r12
movq %r12, -88(%rbp)
movq -72(%rbp), %r13
movq -80(%rbp), %r10
addq %r13, %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r13
movq %r13, -8(%rbp)
jmp L22
L39:
addq $1144, %rsp
popq %rbp
ret


.size quicksort, .-quicksort
.globl dosort
.type dosort, @function

dosort:
pushq %rbp
movq %rsp, %rbp
subq $360, %rsp
L43:
callq init
callq init
movq 8(%rbp), %r12
movq %r12, -360(%rbp)
movq -360(%rbp), %r10
movq 24(%r10), %r12
movq %r12, -352(%rbp)
movq -352(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -344(%rbp)
movq -344(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -336(%rbp)
movq -336(%rbp), %r13
movq %r13, %r11
movq %r11, -328(%rbp)
movq -328(%rbp), %r10
movq %r10, %r11
movq %r11, -320(%rbp)
movq -328(%rbp), %r10
movq -8(%r10), %r11
movq %r11, -312(%rbp)
movq -296(%rbp), %r13
movq -304(%rbp), %r10
subq %r13, %r11
movq %r11, -304(%rbp)
callq quicksort
movq -280(%rbp), %r13
movq -288(%rbp), %r13
addq %r13, %r12
movq %r12, -288(%rbp)
movq -288(%rbp), %r13
movq %r13, %r12
movq %r12, -272(%rbp)
movq 8(%rbp), %r11
movq %r11, -264(%rbp)
movq -264(%rbp), %r10
movq 24(%r10), %r11
movq %r11, -256(%rbp)
movq -256(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -248(%rbp)
movq -248(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r13
movq %r13, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r10
movq %r10, %r12
movq %r12, -224(%rbp)
movq -232(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -216(%rbp)
movq -200(%rbp), %r10
movq -208(%rbp), %r10
subq %r10, %r11
movq %r11, -208(%rbp)
movq -208(%rbp), %r13
movq -272(%rbp), %r13
movq %r13, (%r13)
movq -192(%rbp), %r13
movq %r13, -8(%rbp)
movq -8(%rbp), %r12
movq %r12, -184(%rbp)
movq -272(%rbp), %r13
movq (%r13), %r12
movq %r12, -176(%rbp)
movq -176(%rbp), %r13
movq -184(%rbp), %r10
cmpq %r13, %r10
jle L29
L28:
movq L34(%rip), %r12
movq %r12, -168(%rbp)
callq print
jmp L42
L29:
movq 8(%rbp), %r12
movq %r12, -160(%rbp)
movq -160(%rbp), %r10
movq 24(%r10), %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r13
movq %r13, %r11
movq %r11, -128(%rbp)
movq -128(%rbp), %r10
movq %r10, %r11
movq %r11, -120(%rbp)
movq -128(%rbp), %r10
movq -24(%r10), %r11
movq %r11, -112(%rbp)
movq -8(%rbp), %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r13
movq %rax, %r13
movq -96(%rbp), %r13
imulq %r13
movq %r12, %rax
movq %r12, -88(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r13
addq %r13, %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq (%r13), %r12
movq %r12, -72(%rbp)
callq printi
movq L32(%rip), %r12
movq %r12, -64(%rbp)
callq print
movq -8(%rbp), %r11
movq %r11, -56(%rbp)
movq -272(%rbp), %r10
movq (%r10), %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r13
movq -56(%rbp), %r13
cmpq %r13, %r13
jge L28
L30:
movq -8(%rbp), %r11
movq %r11, -40(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r13
addq %r10, %r11
movq %r11, -32(%rbp)
movq -32(%rbp), %r10
movq %r10, -8(%rbp)
jmp L29
L42:
addq $360, %rsp
popq %rbp
ret


.size dosort, .-dosort
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $88, %rsp
L45:
movq -88(%rbp), %r13
movq %r13, -16(%rbp)
movq -72(%rbp), %r10
movq -80(%rbp), %r13
addq %r10, %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq %r13, %r11
movq %r11, -64(%rbp)
movq -8(%rbp), %r11
movq %r11, -56(%rbp)
movq -8(%rbp), %r11
movq %r11, -48(%rbp)
callq initArray
movq %rax, %r11
movq %r11, -40(%rbp)
movq -40(%rbp), %r13
movq -64(%rbp), %r10
movq %r13, (%r10)
callq dosort
jmp L44
L44:
addq $88, %rsp
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
.globl L31
.type L31, @object
.size L31, 1
L31:
.string " "
.globl L32
.type L32, @object
.size L32, 1
L32:
.string " "
.globl L33
.type L33, @object
.size L33, 1
L33:
.string "\n"
.globl L34
.type L34, @object
.size L34, 1
L34:
.string "\n"
