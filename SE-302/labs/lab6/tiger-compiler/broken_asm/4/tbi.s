.text
.globl printb
.type printb, @function
printb:
pushq %rbp
movq %rsp, %rbp
subq $1496, %rsp
L22:
movq $-8, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r10
movq -64(%rbp), %r13
addq %r10, %r12
movq %r12, -64(%rbp)
movq -64(%rbp), %r10
movq %r10, %r11
movq %r11, -88(%rbp)
movq $8, %r12
movq %r12, -104(%rbp)
movq -104(%rbp), %r10
movq -112(%rbp), %r13
addq %r10, %r11
movq %r11, -112(%rbp)
movq -112(%rbp), %r10
movq (%r10), %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r13
movq %r13, %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %r12
movq %r12, -168(%rbp)
movq $-8, %r11
movq %r11, -184(%rbp)
movq -184(%rbp), %r13
movq -192(%rbp), %r10
addq %r13, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r13
movq (%r13), %r11
movq %r11, -216(%rbp)
movq $1, %r12
movq %r12, -232(%rbp)
movq -232(%rbp), %r10
movq -240(%rbp), %r13
subq %r10, %r11
movq %r11, -240(%rbp)
movq -88(%rbp), %r13
movq -240(%rbp), %r10
movq (%r13), %r10
movq $-8, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r13
movq -288(%rbp), %r10
addq %r13, %r11
movq %r11, -288(%rbp)
movq $0, %r12
movq %r12, -312(%rbp)
movq -288(%rbp), %r13
movq -312(%rbp), %r10
movq (%r13), %r10
movq $-8, %r11
movq %r11, -336(%rbp)
movq -336(%rbp), %r13
movq -344(%rbp), %r10
addq %r13, %r12
movq %r12, -344(%rbp)
movq -344(%rbp), %r13
movq (%r13), %r11
movq %r11, -368(%rbp)
movq -88(%rbp), %r10
movq (%r10), %r12
movq %r12, -384(%rbp)
movq -368(%rbp), %r10
movq -384(%rbp), %r13
cmpq %r13, %r10
jle L2
L1:
movq L20(%rip), %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r10
movq %r10, %rdi
callq print
jmp L21
L2:
movq $-24, %r12
movq %r12, -432(%rbp)
movq -432(%rbp), %r13
movq -440(%rbp), %r10
addq %r13, %r11
movq %r11, -440(%rbp)
movq -440(%rbp), %r13
movq %r13, %r12
movq %r12, -464(%rbp)
movq $8, %r11
movq %r11, -480(%rbp)
movq -480(%rbp), %r13
movq -488(%rbp), %r10
addq %r13, %r12
movq %r12, -488(%rbp)
movq -488(%rbp), %r13
movq (%r13), %r11
movq %r11, -512(%rbp)
movq -512(%rbp), %r10
movq %r10, %r12
movq %r12, -528(%rbp)
movq -528(%rbp), %r13
movq %r13, %r11
movq %r11, -544(%rbp)
movq $-8, %r12
movq %r12, -560(%rbp)
movq -560(%rbp), %r10
movq -568(%rbp), %r13
addq %r10, %r11
movq %r11, -568(%rbp)
movq -568(%rbp), %r10
movq (%r10), %r12
movq %r12, -592(%rbp)
movq $1, %r11
movq %r11, -608(%rbp)
movq -608(%rbp), %r13
movq -616(%rbp), %r10
subq %r13, %r12
movq %r12, -616(%rbp)
movq -464(%rbp), %r10
movq -616(%rbp), %r13
movq (%r10), %r13
movq $-24, %r11
movq %r11, -656(%rbp)
movq -656(%rbp), %r10
movq -664(%rbp), %r13
addq %r10, %r12
movq %r12, -664(%rbp)
movq $0, %r11
movq %r11, -688(%rbp)
movq -664(%rbp), %r10
movq -688(%rbp), %r13
movq (%r10), %r13
movq $-24, %r12
movq %r12, -712(%rbp)
movq -712(%rbp), %r10
movq -720(%rbp), %r13
addq %r10, %r11
movq %r11, -720(%rbp)
movq -720(%rbp), %r10
movq (%r10), %r12
movq %r12, -744(%rbp)
movq -464(%rbp), %r13
movq (%r13), %r11
movq %r11, -760(%rbp)
movq -744(%rbp), %r13
movq -760(%rbp), %r10
cmpq %r10, %r13
jle L5
L4:
movq L18(%rip), %r12
movq %r12, -792(%rbp)
movq -792(%rbp), %r13
movq %r13, %rdi
callq print
movq $-8, %r11
movq %r11, -808(%rbp)
movq -808(%rbp), %r10
movq -816(%rbp), %r13
addq %r10, %r12
movq %r12, -816(%rbp)
movq -816(%rbp), %r10
movq (%r10), %r11
movq %r11, -840(%rbp)
movq -88(%rbp), %r13
movq (%r13), %r12
movq %r12, -856(%rbp)
movq -840(%rbp), %r13
movq -856(%rbp), %r10
cmpq %r10, %r13
jge L1
L3:
movq $-8, %r11
movq %r11, -888(%rbp)
movq -888(%rbp), %r13
movq -896(%rbp), %r10
addq %r13, %r12
movq %r12, -896(%rbp)
movq $-8, %r11
movq %r11, -920(%rbp)
movq -920(%rbp), %r10
movq -928(%rbp), %r13
addq %r10, %r12
movq %r12, -928(%rbp)
movq -928(%rbp), %r10
movq (%r10), %r11
movq %r11, -952(%rbp)
movq $1, %r12
movq %r12, -968(%rbp)
movq -968(%rbp), %r13
movq -976(%rbp), %r10
addq %r13, %r11
movq %r11, -976(%rbp)
movq -896(%rbp), %r13
movq -976(%rbp), %r13
movq (%r13), %r13
jmp L2
L5:
movq $-8, %r12
movq %r12, -1016(%rbp)
movq -1016(%rbp), %r10
movq -1024(%rbp), %r13
addq %r10, %r11
movq %r11, -1024(%rbp)
movq -1024(%rbp), %r10
movq (%r10), %r12
movq %r12, -1048(%rbp)
movq $-24, %r11
movq %r11, -1064(%rbp)
movq -1064(%rbp), %r10
movq -1072(%rbp), %r13
addq %r10, %r12
movq %r12, -1072(%rbp)
movq -1072(%rbp), %r10
movq (%r10), %r11
movq %r11, -1096(%rbp)
movq -1048(%rbp), %r13
movq -1096(%rbp), %r13
cmpq %r13, %r13
jg L14
L15:
movq $-48, %r12
movq %r12, -1128(%rbp)
movq -1128(%rbp), %r10
movq -1136(%rbp), %r13
addq %r10, %r11
movq %r11, -1136(%rbp)
movq L13(%rip), %r12
movq %r12, -1160(%rbp)
movq -1136(%rbp), %r10
movq -1160(%rbp), %r13
movq (%r10), %r13
L16:
movq $-48, %r11
movq %r11, -1184(%rbp)
movq -1184(%rbp), %r10
movq -1192(%rbp), %r13
addq %r10, %r12
movq %r12, -1192(%rbp)
movq -1192(%rbp), %r10
movq (%r10), %r11
movq %r11, -1216(%rbp)
movq -1216(%rbp), %r13
movq %r13, %rdi
callq print
movq $-24, %r12
movq %r12, -1240(%rbp)
movq -1240(%rbp), %r10
movq -1248(%rbp), %r13
addq %r10, %r11
movq %r11, -1248(%rbp)
movq -1248(%rbp), %r10
movq (%r10), %r12
movq %r12, -1272(%rbp)
movq -464(%rbp), %r10
movq (%r10), %r11
movq %r11, -1288(%rbp)
movq -1272(%rbp), %r13
movq -1288(%rbp), %r10
cmpq %r10, %r13
jge L4
L6:
movq $-24, %r12
movq %r12, -1320(%rbp)
movq -1320(%rbp), %r13
movq -1328(%rbp), %r10
addq %r13, %r11
movq %r11, -1328(%rbp)
movq $-24, %r12
movq %r12, -1352(%rbp)
movq -1352(%rbp), %r10
movq -1360(%rbp), %r13
addq %r10, %r11
movq %r11, -1360(%rbp)
movq -1360(%rbp), %r10
movq (%r10), %r12
movq %r12, -1384(%rbp)
movq $1, %r11
movq %r11, -1400(%rbp)
movq -1400(%rbp), %r13
movq -1408(%rbp), %r10
addq %r13, %r12
movq %r12, -1408(%rbp)
movq -1328(%rbp), %r13
movq -1408(%rbp), %r13
movq (%r13), %r13
jmp L5
L14:
movq $-48, %r11
movq %r11, -1448(%rbp)
movq -1448(%rbp), %r10
movq -1456(%rbp), %r13
addq %r10, %r12
movq %r12, -1456(%rbp)
movq L12(%rip), %r11
movq %r11, -1480(%rbp)
movq -1456(%rbp), %r10
movq -1480(%rbp), %r13
movq (%r10), %r13
jmp L16
L21:
addq $1496, %rsp
popq %rbp
ret


.size printb, .-printb
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $72, %rsp
L24:
movq $-16, %r12
movq %r12, -24(%rbp)
movq -24(%rbp), %r10
movq -32(%rbp), %r13
addq %r10, %r11
movq %r11, -32(%rbp)
movq $8, %r12
movq %r12, -56(%rbp)
movq -32(%rbp), %r10
movq -56(%rbp), %r13
movq (%r10), %r13
callq printb
jmp L23
L23:
addq $72, %rsp
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
