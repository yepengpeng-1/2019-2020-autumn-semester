.text
.globl printboard
.type printboard, @function
printboard:
pushq %rbp
movq %rsp, %rbp
subq $1696, %rsp
L41:
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
jmp L40
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
movq $8, %r12
movq %r12, -1016(%rbp)
movq -1016(%rbp), %r10
movq -1024(%rbp), %r13
addq %r10, %r11
movq %r11, -1024(%rbp)
movq -1024(%rbp), %r10
movq (%r10), %r12
movq %r12, -1048(%rbp)
movq -1048(%rbp), %r13
movq %r13, %r11
movq %r11, -1064(%rbp)
movq -1064(%rbp), %r10
movq %r10, %r12
movq %r12, -1080(%rbp)
movq $-40, %r11
movq %r11, -1096(%rbp)
movq -1096(%rbp), %r13
movq -1104(%rbp), %r10
addq %r13, %r12
movq %r12, -1104(%rbp)
movq -1104(%rbp), %r13
movq (%r13), %r11
movq %r11, -1128(%rbp)
movq $-8, %r12
movq %r12, -1144(%rbp)
movq -1144(%rbp), %r10
movq -1152(%rbp), %r13
addq %r10, %r11
movq %r11, -1152(%rbp)
movq -1152(%rbp), %r10
movq (%r10), %r12
movq %r12, -1176(%rbp)
movq $8, %r11
movq %r11, -1192(%rbp)
movq -1176(%rbp), %r13
movq %r13, %rax
movq -1192(%rbp), %r10
imulq %r10
movq %rax, %r12
movq %r12, -1216(%rbp)
movq -1216(%rbp), %r13
movq -1224(%rbp), %r10
addq %r13, %r11
movq %r11, -1224(%rbp)
movq -1224(%rbp), %r13
movq (%r13), %r12
movq %r12, -1248(%rbp)
movq $-24, %r11
movq %r11, -1264(%rbp)
movq -1264(%rbp), %r13
movq -1272(%rbp), %r10
addq %r13, %r12
movq %r12, -1272(%rbp)
movq -1272(%rbp), %r13
movq (%r13), %r11
movq %r11, -1296(%rbp)
movq -1248(%rbp), %r10
movq -1296(%rbp), %r10
cmpq %r10, %r10
je L14
L15:
movq $-48, %r12
movq %r12, -1328(%rbp)
movq -1328(%rbp), %r13
movq -1336(%rbp), %r10
addq %r13, %r11
movq %r11, -1336(%rbp)
movq L13(%rip), %r12
movq %r12, -1360(%rbp)
movq -1336(%rbp), %r13
movq -1360(%rbp), %r10
movq (%r13), %r10
L16:
movq $-48, %r11
movq %r11, -1384(%rbp)
movq -1384(%rbp), %r13
movq -1392(%rbp), %r10
addq %r13, %r12
movq %r12, -1392(%rbp)
movq -1392(%rbp), %r13
movq (%r13), %r11
movq %r11, -1416(%rbp)
movq -1416(%rbp), %r10
movq %r10, %rdi
callq print
movq $-24, %r12
movq %r12, -1440(%rbp)
movq -1440(%rbp), %r13
movq -1448(%rbp), %r10
addq %r13, %r11
movq %r11, -1448(%rbp)
movq -1448(%rbp), %r13
movq (%r13), %r12
movq %r12, -1472(%rbp)
movq -464(%rbp), %r10
movq (%r10), %r11
movq %r11, -1488(%rbp)
movq -1472(%rbp), %r10
movq -1488(%rbp), %r13
cmpq %r13, %r10
jge L4
L6:
movq $-24, %r12
movq %r12, -1520(%rbp)
movq -1520(%rbp), %r10
movq -1528(%rbp), %r13
addq %r10, %r11
movq %r11, -1528(%rbp)
movq $-24, %r12
movq %r12, -1552(%rbp)
movq -1552(%rbp), %r13
movq -1560(%rbp), %r10
addq %r13, %r11
movq %r11, -1560(%rbp)
movq -1560(%rbp), %r13
movq (%r13), %r12
movq %r12, -1584(%rbp)
movq $1, %r11
movq %r11, -1600(%rbp)
movq -1600(%rbp), %r10
movq -1608(%rbp), %r13
addq %r10, %r12
movq %r12, -1608(%rbp)
movq -1528(%rbp), %r10
movq -1608(%rbp), %r10
movq (%r10), %r10
jmp L5
L14:
movq $-48, %r11
movq %r11, -1648(%rbp)
movq -1648(%rbp), %r13
movq -1656(%rbp), %r10
addq %r13, %r12
movq %r12, -1656(%rbp)
movq L12(%rip), %r11
movq %r11, -1680(%rbp)
movq -1656(%rbp), %r13
movq -1680(%rbp), %r10
movq (%r13), %r10
jmp L16
L40:
addq $1696, %rsp
popq %rbp
ret


.size printboard, .-printboard
.globl try
.type try, @function
try:
movq %rdi, 8(%rbp)
pushq %rbp
movq %rsp, %rbp
subq $5280, %rsp
L43:
movq $8, %r12
movq %r12, -48(%rbp)
movq -48(%rbp), %r13
movq -56(%rbp), %r10
addq %r13, %r11
movq %r11, -56(%rbp)
movq -56(%rbp), %r13
movq (%r13), %r12
movq %r12, -80(%rbp)
movq -80(%rbp), %r10
movq %r10, %r11
movq %r11, -96(%rbp)
movq $16, %r12
movq %r12, -112(%rbp)
movq -112(%rbp), %r10
movq -120(%rbp), %r13
addq %r10, %r11
movq %r11, -120(%rbp)
movq -120(%rbp), %r10
movq (%r10), %r12
movq %r12, -144(%rbp)
movq $8, %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r13
movq -168(%rbp), %r10
addq %r13, %r12
movq %r12, -168(%rbp)
movq -168(%rbp), %r13
movq (%r13), %r11
movq %r11, -192(%rbp)
movq -192(%rbp), %r10
movq %r10, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r13
movq %r13, %r11
movq %r11, -224(%rbp)
movq $-8, %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r10
movq -248(%rbp), %r13
addq %r10, %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq (%r10), %r12
movq %r12, -272(%rbp)
movq -96(%rbp), %r13
movq -272(%rbp), %r13
cmpq %r13, %r13
je L37
L38:
movq $-40, %r11
movq %r11, -304(%rbp)
movq -304(%rbp), %r10
movq -312(%rbp), %r13
addq %r10, %r12
movq %r12, -312(%rbp)
movq -312(%rbp), %r10
movq %r10, %r11
movq %r11, -336(%rbp)
movq $-8, %r12
movq %r12, -352(%rbp)
movq -352(%rbp), %r10
movq -360(%rbp), %r13
addq %r10, %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r10
movq %r10, %r12
movq %r12, -384(%rbp)
movq $16, %r11
movq %r11, -400(%rbp)
movq -400(%rbp), %r10
movq -408(%rbp), %r13
addq %r10, %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r10
movq (%r10), %r11
movq %r11, -432(%rbp)
movq $8, %r12
movq %r12, -448(%rbp)
movq -448(%rbp), %r13
movq -456(%rbp), %r10
addq %r13, %r11
movq %r11, -456(%rbp)
movq -456(%rbp), %r13
movq (%r13), %r12
movq %r12, -480(%rbp)
movq -480(%rbp), %r10
movq %r10, %r11
movq %r11, -496(%rbp)
movq -496(%rbp), %r13
movq %r13, %r12
movq %r12, -512(%rbp)
movq $-8, %r11
movq %r11, -528(%rbp)
movq -528(%rbp), %r10
movq -536(%rbp), %r13
addq %r10, %r12
movq %r12, -536(%rbp)
movq -536(%rbp), %r10
movq (%r10), %r11
movq %r11, -560(%rbp)
movq $1, %r12
movq %r12, -576(%rbp)
movq -576(%rbp), %r13
movq -584(%rbp), %r10
subq %r13, %r11
movq %r11, -584(%rbp)
movq -384(%rbp), %r13
movq -584(%rbp), %r13
movq (%r13), %r13
movq $-8, %r12
movq %r12, -624(%rbp)
movq -624(%rbp), %r10
movq -632(%rbp), %r13
addq %r10, %r11
movq %r11, -632(%rbp)
movq $0, %r12
movq %r12, -656(%rbp)
movq -632(%rbp), %r10
movq -656(%rbp), %r13
movq (%r10), %r13
movq $-8, %r11
movq %r11, -680(%rbp)
movq -680(%rbp), %r10
movq -688(%rbp), %r13
addq %r10, %r12
movq %r12, -688(%rbp)
movq -688(%rbp), %r10
movq (%r10), %r11
movq %r11, -712(%rbp)
movq -384(%rbp), %r10
movq (%r10), %r12
movq %r12, -728(%rbp)
movq -712(%rbp), %r13
movq -728(%rbp), %r10
cmpq %r10, %r13
jle L22
L21:
movq $0, %r11
movq %r11, -760(%rbp)
movq -760(%rbp), %r13
movq -768(%rbp), %r10
movq (%r10), %r13
L39:
jmp L42
L37:
movq -336(%rbp), %r13
movq %r13, %r12
movq %r12, -768(%rbp)
callq printboard
movq %rax, %r11
movq %r11, -800(%rbp)
movq -768(%rbp), %r13
movq -800(%rbp), %r10
movq (%r13), %r10
jmp L39
L22:
movq $16, %r12
movq %r12, -824(%rbp)
movq -824(%rbp), %r13
movq -832(%rbp), %r10
addq %r13, %r11
movq %r11, -832(%rbp)
movq -832(%rbp), %r13
movq (%r13), %r12
movq %r12, -856(%rbp)
movq $8, %r11
movq %r11, -872(%rbp)
movq -872(%rbp), %r10
movq -880(%rbp), %r13
addq %r10, %r12
movq %r12, -880(%rbp)
movq -880(%rbp), %r10
movq (%r10), %r11
movq %r11, -904(%rbp)
movq -904(%rbp), %r13
movq %r13, %r12
movq %r12, -920(%rbp)
movq -920(%rbp), %r10
movq %r10, %r11
movq %r11, -936(%rbp)
movq $-24, %r12
movq %r12, -952(%rbp)
movq -952(%rbp), %r13
movq -960(%rbp), %r10
addq %r13, %r11
movq %r11, -960(%rbp)
movq -960(%rbp), %r13
movq (%r13), %r12
movq %r12, -984(%rbp)
movq $-8, %r11
movq %r11, -1000(%rbp)
movq -1000(%rbp), %r10
movq -1008(%rbp), %r13
addq %r10, %r12
movq %r12, -1008(%rbp)
movq -1008(%rbp), %r10
movq (%r10), %r11
movq %r11, -1032(%rbp)
movq $8, %r12
movq %r12, -1048(%rbp)
movq -1032(%rbp), %r13
movq %r13, %rax
movq -1048(%rbp), %r10
imulq %r10
movq %rax, %r11
movq %r11, -1072(%rbp)
movq -1072(%rbp), %r13
movq -1080(%rbp), %r10
addq %r13, %r12
movq %r12, -1080(%rbp)
movq -1080(%rbp), %r13
movq (%r13), %r11
movq %r11, -1104(%rbp)
movq $0, %r12
movq %r12, -1120(%rbp)
movq -1104(%rbp), %r10
movq -1120(%rbp), %r13
cmpq %r13, %r10
je L24
L25:
movq $0, %r11
movq %r11, -1144(%rbp)
movq -1144(%rbp), %r10
movq -1152(%rbp), %r13
movq (%r13), %r10
L26:
movq -1152(%rbp), %r10
movq (%r10), %r11
movq %r11, -1168(%rbp)
movq $0, %r12
movq %r12, -1184(%rbp)
movq -1168(%rbp), %r10
movq -1184(%rbp), %r13
cmpq %r13, %r10
jne L29
L30:
movq $0, %r11
movq %r11, -1208(%rbp)
movq -1208(%rbp), %r10
movq -1216(%rbp), %r13
movq (%r13), %r10
L31:
movq -1216(%rbp), %r10
movq (%r10), %r11
movq %r11, -1232(%rbp)
movq $0, %r12
movq %r12, -1248(%rbp)
movq -1232(%rbp), %r10
movq -1248(%rbp), %r13
cmpq %r13, %r10
jne L34
L35:
movq $-8, %r11
movq %r11, -1272(%rbp)
movq -1272(%rbp), %r10
movq -1280(%rbp), %r13
addq %r10, %r12
movq %r12, -1280(%rbp)
movq -1280(%rbp), %r10
movq (%r10), %r11
movq %r11, -1304(%rbp)
movq -384(%rbp), %r13
movq (%r13), %r12
movq %r12, -1320(%rbp)
movq -1304(%rbp), %r13
movq -1320(%rbp), %r10
cmpq %r10, %r13
jge L21
L23:
movq $-8, %r11
movq %r11, -1352(%rbp)
movq -1352(%rbp), %r13
movq -1360(%rbp), %r10
addq %r13, %r12
movq %r12, -1360(%rbp)
movq $-8, %r11
movq %r11, -1384(%rbp)
movq -1384(%rbp), %r10
movq -1392(%rbp), %r13
addq %r10, %r12
movq %r12, -1392(%rbp)
movq -1392(%rbp), %r10
movq (%r10), %r11
movq %r11, -1416(%rbp)
movq $1, %r12
movq %r12, -1432(%rbp)
movq -1432(%rbp), %r13
movq -1440(%rbp), %r10
addq %r13, %r11
movq %r11, -1440(%rbp)
movq -1360(%rbp), %r13
movq -1440(%rbp), %r13
movq (%r13), %r13
jmp L22
L24:
movq $-24, %r12
movq %r12, -1480(%rbp)
movq -1480(%rbp), %r10
movq -1488(%rbp), %r13
addq %r10, %r11
movq %r11, -1488(%rbp)
movq -1488(%rbp), %r10
movq %r10, %r12
movq %r12, -1152(%rbp)
movq $1, %r12
movq %r12, -1528(%rbp)
movq -1528(%rbp), %r13
movq %r13, %r11
movq %r11, -1536(%rbp)
movq $16, %r11
movq %r11, -1552(%rbp)
movq -1552(%rbp), %r13
movq -1560(%rbp), %r10
addq %r13, %r12
movq %r12, -1560(%rbp)
movq -1560(%rbp), %r13
movq (%r13), %r11
movq %r11, -1584(%rbp)
movq $8, %r12
movq %r12, -1600(%rbp)
movq -1600(%rbp), %r10
movq -1608(%rbp), %r13
addq %r10, %r11
movq %r11, -1608(%rbp)
movq -1608(%rbp), %r10
movq (%r10), %r12
movq %r12, -1632(%rbp)
movq -1632(%rbp), %r13
movq %r13, %r11
movq %r11, -1648(%rbp)
movq -1648(%rbp), %r10
movq %r10, %r12
movq %r12, -1664(%rbp)
movq $-56, %r11
movq %r11, -1680(%rbp)
movq -1680(%rbp), %r13
movq -1688(%rbp), %r10
addq %r13, %r12
movq %r12, -1688(%rbp)
movq -1688(%rbp), %r13
movq (%r13), %r11
movq %r11, -1712(%rbp)
movq $-8, %r12
movq %r12, -1728(%rbp)
movq -1728(%rbp), %r10
movq -1736(%rbp), %r13
addq %r10, %r11
movq %r11, -1736(%rbp)
movq -1736(%rbp), %r10
movq (%r10), %r12
movq %r12, -1760(%rbp)
movq $8, %r11
movq %r11, -1776(%rbp)
movq -1776(%rbp), %r13
movq -1784(%rbp), %r10
addq %r13, %r12
movq %r12, -1784(%rbp)
movq -1784(%rbp), %r13
movq (%r13), %r11
movq %r11, -1808(%rbp)
movq -1808(%rbp), %r10
movq -1824(%rbp), %r13
addq %r10, %r12
movq %r12, -1824(%rbp)
movq $8, %r11
movq %r11, -1848(%rbp)
movq -1824(%rbp), %r10
movq %r10, %rax
movq -1848(%rbp), %r13
imulq %r13
movq %rax, %r12
movq %r12, -1872(%rbp)
movq -1872(%rbp), %r10
movq -1880(%rbp), %r13
addq %r10, %r11
movq %r11, -1880(%rbp)
movq -1880(%rbp), %r10
movq (%r10), %r12
movq %r12, -1904(%rbp)
movq $0, %r11
movq %r11, -1920(%rbp)
movq -1904(%rbp), %r13
movq -1920(%rbp), %r10
cmpq %r10, %r13
je L27
L28:
movq $0, %r12
movq %r12, -1944(%rbp)
movq -1944(%rbp), %r13
movq %r13, %r12
movq %r12, -1536(%rbp)
L27:
movq -1152(%rbp), %r13
movq -1536(%rbp), %r10
movq (%r13), %r10
jmp L26
L29:
movq $-32, %r11
movq %r11, -1984(%rbp)
movq -1984(%rbp), %r10
movq -1992(%rbp), %r13
addq %r10, %r12
movq %r12, -1992(%rbp)
movq -1992(%rbp), %r10
movq %r10, %r12
movq %r12, -1216(%rbp)
movq $1, %r11
movq %r11, -2032(%rbp)
movq -2032(%rbp), %r13
movq %r13, %r12
movq %r12, -2040(%rbp)
movq $16, %r12
movq %r12, -2056(%rbp)
movq -2056(%rbp), %r13
movq -2064(%rbp), %r10
addq %r13, %r11
movq %r11, -2064(%rbp)
movq -2064(%rbp), %r13
movq (%r13), %r12
movq %r12, -2088(%rbp)
movq $8, %r11
movq %r11, -2104(%rbp)
movq -2104(%rbp), %r10
movq -2112(%rbp), %r13
addq %r10, %r12
movq %r12, -2112(%rbp)
movq -2112(%rbp), %r10
movq (%r10), %r11
movq %r11, -2136(%rbp)
movq -2136(%rbp), %r13
movq %r13, %r12
movq %r12, -2152(%rbp)
movq -2152(%rbp), %r10
movq %r10, %r11
movq %r11, -2168(%rbp)
movq $-72, %r12
movq %r12, -2184(%rbp)
movq -2184(%rbp), %r13
movq -2192(%rbp), %r10
addq %r13, %r11
movq %r11, -2192(%rbp)
movq -2192(%rbp), %r13
movq (%r13), %r12
movq %r12, -2216(%rbp)
movq $-8, %r11
movq %r11, -2232(%rbp)
movq -2232(%rbp), %r10
movq -2240(%rbp), %r13
addq %r10, %r12
movq %r12, -2240(%rbp)
movq -2240(%rbp), %r10
movq (%r10), %r11
movq %r11, -2264(%rbp)
movq $7, %r12
movq %r12, -2280(%rbp)
movq -2280(%rbp), %r13
movq -2288(%rbp), %r10
addq %r13, %r11
movq %r11, -2288(%rbp)
movq $8, %r12
movq %r12, -2312(%rbp)
movq -2312(%rbp), %r13
movq -2320(%rbp), %r10
addq %r13, %r11
movq %r11, -2320(%rbp)
movq -2320(%rbp), %r13
movq (%r13), %r12
movq %r12, -2344(%rbp)
movq -2344(%rbp), %r10
movq -2360(%rbp), %r13
subq %r10, %r11
movq %r11, -2360(%rbp)
movq $8, %r12
movq %r12, -2384(%rbp)
movq -2360(%rbp), %r10
movq %r10, %rax
movq -2384(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -2408(%rbp)
movq -2408(%rbp), %r10
movq -2416(%rbp), %r13
addq %r10, %r12
movq %r12, -2416(%rbp)
movq -2416(%rbp), %r10
movq (%r10), %r11
movq %r11, -2440(%rbp)
movq $0, %r12
movq %r12, -2456(%rbp)
movq -2440(%rbp), %r13
movq -2456(%rbp), %r10
cmpq %r10, %r13
je L32
L33:
movq $0, %r11
movq %r11, -2480(%rbp)
movq -2480(%rbp), %r13
movq %r13, %r11
movq %r11, -2040(%rbp)
L32:
movq -1216(%rbp), %r13
movq -2040(%rbp), %r10
movq (%r13), %r10
jmp L31
L34:
movq $-24, %r12
movq %r12, -2520(%rbp)
movq -2520(%rbp), %r10
movq -2528(%rbp), %r13
addq %r10, %r11
movq %r11, -2528(%rbp)
movq -2528(%rbp), %r10
movq (%r10), %r12
movq %r12, -2552(%rbp)
movq $-8, %r11
movq %r11, -2568(%rbp)
movq -2568(%rbp), %r13
movq -2576(%rbp), %r10
addq %r13, %r12
movq %r12, -2576(%rbp)
movq -2576(%rbp), %r13
movq (%r13), %r11
movq %r11, -2600(%rbp)
movq $8, %r12
movq %r12, -2616(%rbp)
movq -2600(%rbp), %r10
movq %r10, %rax
movq -2616(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -2640(%rbp)
movq -2640(%rbp), %r10
movq -2648(%rbp), %r13
addq %r10, %r12
movq %r12, -2648(%rbp)
movq $1, %r11
movq %r11, -2672(%rbp)
movq -2648(%rbp), %r10
movq -2672(%rbp), %r13
movq (%r10), %r13
movq $16, %r12
movq %r12, -2696(%rbp)
movq -2696(%rbp), %r10
movq -2704(%rbp), %r13
addq %r10, %r11
movq %r11, -2704(%rbp)
movq -2704(%rbp), %r10
movq (%r10), %r12
movq %r12, -2728(%rbp)
movq $8, %r11
movq %r11, -2744(%rbp)
movq -2744(%rbp), %r13
movq -2752(%rbp), %r10
addq %r13, %r12
movq %r12, -2752(%rbp)
movq -2752(%rbp), %r13
movq (%r13), %r11
movq %r11, -2776(%rbp)
movq -2776(%rbp), %r10
movq %r10, %r12
movq %r12, -2792(%rbp)
movq -2792(%rbp), %r13
movq %r13, %r11
movq %r11, -2808(%rbp)
movq $-24, %r12
movq %r12, -2824(%rbp)
movq -2824(%rbp), %r10
movq -2832(%rbp), %r13
addq %r10, %r11
movq %r11, -2832(%rbp)
movq -2832(%rbp), %r10
movq (%r10), %r12
movq %r12, -2856(%rbp)
movq $-8, %r11
movq %r11, -2872(%rbp)
movq -2872(%rbp), %r13
movq -2880(%rbp), %r10
addq %r13, %r12
movq %r12, -2880(%rbp)
movq -2880(%rbp), %r13
movq (%r13), %r11
movq %r11, -2904(%rbp)
movq $8, %r12
movq %r12, -2920(%rbp)
movq -2904(%rbp), %r10
movq %r10, %rax
movq -2920(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -2944(%rbp)
movq -2944(%rbp), %r10
movq -2952(%rbp), %r13
addq %r10, %r12
movq %r12, -2952(%rbp)
movq $1, %r11
movq %r11, -2976(%rbp)
movq -2952(%rbp), %r10
movq -2976(%rbp), %r13
movq (%r10), %r13
movq $16, %r12
movq %r12, -3000(%rbp)
movq -3000(%rbp), %r10
movq -3008(%rbp), %r13
addq %r10, %r11
movq %r11, -3008(%rbp)
movq -3008(%rbp), %r10
movq (%r10), %r12
movq %r12, -3032(%rbp)
movq $8, %r11
movq %r11, -3048(%rbp)
movq -3048(%rbp), %r13
movq -3056(%rbp), %r10
addq %r13, %r12
movq %r12, -3056(%rbp)
movq -3056(%rbp), %r13
movq (%r13), %r11
movq %r11, -3080(%rbp)
movq -3080(%rbp), %r10
movq %r10, %r12
movq %r12, -3096(%rbp)
movq -3096(%rbp), %r13
movq %r13, %r11
movq %r11, -3112(%rbp)
movq $-56, %r12
movq %r12, -3128(%rbp)
movq -3128(%rbp), %r10
movq -3136(%rbp), %r13
addq %r10, %r11
movq %r11, -3136(%rbp)
movq -3136(%rbp), %r10
movq (%r10), %r12
movq %r12, -3160(%rbp)
movq $-8, %r11
movq %r11, -3176(%rbp)
movq -3176(%rbp), %r13
movq -3184(%rbp), %r10
addq %r13, %r12
movq %r12, -3184(%rbp)
movq -3184(%rbp), %r13
movq (%r13), %r11
movq %r11, -3208(%rbp)
movq $8, %r12
movq %r12, -3224(%rbp)
movq -3224(%rbp), %r10
movq -3232(%rbp), %r13
addq %r10, %r11
movq %r11, -3232(%rbp)
movq -3232(%rbp), %r10
movq (%r10), %r12
movq %r12, -3256(%rbp)
movq -3256(%rbp), %r13
movq -3272(%rbp), %r10
addq %r13, %r11
movq %r11, -3272(%rbp)
movq $8, %r12
movq %r12, -3296(%rbp)
movq -3272(%rbp), %r13
movq %r13, %rax
movq -3296(%rbp), %r10
imulq %r10
movq %rax, %r11
movq %r11, -3320(%rbp)
movq -3320(%rbp), %r13
movq -3328(%rbp), %r10
addq %r13, %r12
movq %r12, -3328(%rbp)
movq $1, %r11
movq %r11, -3352(%rbp)
movq -3328(%rbp), %r13
movq -3352(%rbp), %r10
movq (%r13), %r10
movq $16, %r12
movq %r12, -3376(%rbp)
movq -3376(%rbp), %r13
movq -3384(%rbp), %r10
addq %r13, %r11
movq %r11, -3384(%rbp)
movq -3384(%rbp), %r13
movq (%r13), %r12
movq %r12, -3408(%rbp)
movq $8, %r11
movq %r11, -3424(%rbp)
movq -3424(%rbp), %r10
movq -3432(%rbp), %r13
addq %r10, %r12
movq %r12, -3432(%rbp)
movq -3432(%rbp), %r10
movq (%r10), %r11
movq %r11, -3456(%rbp)
movq -3456(%rbp), %r13
movq %r13, %r12
movq %r12, -3472(%rbp)
movq -3472(%rbp), %r10
movq %r10, %r11
movq %r11, -3488(%rbp)
movq $-72, %r12
movq %r12, -3504(%rbp)
movq -3504(%rbp), %r13
movq -3512(%rbp), %r10
addq %r13, %r11
movq %r11, -3512(%rbp)
movq -3512(%rbp), %r13
movq (%r13), %r12
movq %r12, -3536(%rbp)
movq $-8, %r11
movq %r11, -3552(%rbp)
movq -3552(%rbp), %r10
movq -3560(%rbp), %r13
addq %r10, %r12
movq %r12, -3560(%rbp)
movq -3560(%rbp), %r10
movq (%r10), %r11
movq %r11, -3584(%rbp)
movq $7, %r12
movq %r12, -3600(%rbp)
movq -3600(%rbp), %r13
movq -3608(%rbp), %r10
addq %r13, %r11
movq %r11, -3608(%rbp)
movq $8, %r12
movq %r12, -3632(%rbp)
movq -3632(%rbp), %r13
movq -3640(%rbp), %r10
addq %r13, %r11
movq %r11, -3640(%rbp)
movq -3640(%rbp), %r13
movq (%r13), %r12
movq %r12, -3664(%rbp)
movq -3664(%rbp), %r10
movq -3680(%rbp), %r13
subq %r10, %r11
movq %r11, -3680(%rbp)
movq $8, %r12
movq %r12, -3704(%rbp)
movq -3680(%rbp), %r10
movq %r10, %rax
movq -3704(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -3728(%rbp)
movq -3728(%rbp), %r10
movq -3736(%rbp), %r13
addq %r10, %r12
movq %r12, -3736(%rbp)
movq $1, %r11
movq %r11, -3760(%rbp)
movq -3736(%rbp), %r10
movq -3760(%rbp), %r13
movq (%r10), %r13
movq $16, %r12
movq %r12, -3784(%rbp)
movq -3784(%rbp), %r10
movq -3792(%rbp), %r13
addq %r10, %r11
movq %r11, -3792(%rbp)
movq -3792(%rbp), %r10
movq (%r10), %r12
movq %r12, -3816(%rbp)
movq $8, %r11
movq %r11, -3832(%rbp)
movq -3832(%rbp), %r13
movq -3840(%rbp), %r10
addq %r13, %r12
movq %r12, -3840(%rbp)
movq -3840(%rbp), %r13
movq (%r13), %r11
movq %r11, -3864(%rbp)
movq -3864(%rbp), %r10
movq %r10, %r12
movq %r12, -3880(%rbp)
movq -3880(%rbp), %r13
movq %r13, %r11
movq %r11, -3896(%rbp)
movq $-40, %r12
movq %r12, -3912(%rbp)
movq -3912(%rbp), %r10
movq -3920(%rbp), %r13
addq %r10, %r11
movq %r11, -3920(%rbp)
movq -3920(%rbp), %r10
movq (%r10), %r12
movq %r12, -3944(%rbp)
movq $8, %r11
movq %r11, -3960(%rbp)
movq -3960(%rbp), %r13
movq -3968(%rbp), %r10
addq %r13, %r12
movq %r12, -3968(%rbp)
movq -3968(%rbp), %r13
movq (%r13), %r11
movq %r11, -3992(%rbp)
movq $8, %r12
movq %r12, -4008(%rbp)
movq -3992(%rbp), %r10
movq %r10, %rax
movq -4008(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -4032(%rbp)
movq -4032(%rbp), %r10
movq -4040(%rbp), %r13
addq %r10, %r12
movq %r12, -4040(%rbp)
movq $-8, %r11
movq %r11, -4064(%rbp)
movq -4064(%rbp), %r13
movq -4072(%rbp), %r10
addq %r13, %r12
movq %r12, -4072(%rbp)
movq -4040(%rbp), %r10
movq -4072(%rbp), %r13
movq (%r10), %r14
movq %r14, (%r13)
movq $8, %r11
movq %r11, -4112(%rbp)
movq -4112(%rbp), %r10
movq -4120(%rbp), %r13
addq %r10, %r12
movq %r12, -4120(%rbp)
movq -4120(%rbp), %r10
movq (%r10), %r11
movq %r11, -4144(%rbp)
movq $1, %r12
movq %r12, -4160(%rbp)
movq -4160(%rbp), %r13
movq -4168(%rbp), %r10
addq %r13, %r11
movq %r11, -4168(%rbp)
movq -4168(%rbp), %r13
movq %r13, %rdi
callq try
movq $16, %r12
movq %r12, -4200(%rbp)
movq -4200(%rbp), %r10
movq -4208(%rbp), %r13
addq %r10, %r11
movq %r11, -4208(%rbp)
movq -4208(%rbp), %r10
movq (%r10), %r12
movq %r12, -4232(%rbp)
movq $8, %r11
movq %r11, -4248(%rbp)
movq -4248(%rbp), %r13
movq -4256(%rbp), %r10
addq %r13, %r12
movq %r12, -4256(%rbp)
movq -4256(%rbp), %r13
movq (%r13), %r11
movq %r11, -4280(%rbp)
movq -4280(%rbp), %r10
movq %r10, %r12
movq %r12, -4296(%rbp)
movq -4296(%rbp), %r13
movq %r13, %r11
movq %r11, -4312(%rbp)
movq $-24, %r12
movq %r12, -4328(%rbp)
movq -4328(%rbp), %r10
movq -4336(%rbp), %r13
addq %r10, %r11
movq %r11, -4336(%rbp)
movq -4336(%rbp), %r10
movq (%r10), %r12
movq %r12, -4360(%rbp)
movq $-8, %r11
movq %r11, -4376(%rbp)
movq -4376(%rbp), %r13
movq -4384(%rbp), %r10
addq %r13, %r12
movq %r12, -4384(%rbp)
movq -4384(%rbp), %r13
movq (%r13), %r11
movq %r11, -4408(%rbp)
movq $8, %r12
movq %r12, -4424(%rbp)
movq -4408(%rbp), %r10
movq %r10, %rax
movq -4424(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -4448(%rbp)
movq -4448(%rbp), %r10
movq -4456(%rbp), %r13
addq %r10, %r12
movq %r12, -4456(%rbp)
movq $0, %r11
movq %r11, -4480(%rbp)
movq -4456(%rbp), %r10
movq -4480(%rbp), %r13
movq (%r10), %r13
movq $16, %r12
movq %r12, -4504(%rbp)
movq -4504(%rbp), %r10
movq -4512(%rbp), %r13
addq %r10, %r11
movq %r11, -4512(%rbp)
movq -4512(%rbp), %r10
movq (%r10), %r12
movq %r12, -4536(%rbp)
movq $8, %r11
movq %r11, -4552(%rbp)
movq -4552(%rbp), %r13
movq -4560(%rbp), %r10
addq %r13, %r12
movq %r12, -4560(%rbp)
movq -4560(%rbp), %r13
movq (%r13), %r11
movq %r11, -4584(%rbp)
movq -4584(%rbp), %r10
movq %r10, %r12
movq %r12, -4600(%rbp)
movq -4600(%rbp), %r13
movq %r13, %r11
movq %r11, -4616(%rbp)
movq $-56, %r12
movq %r12, -4632(%rbp)
movq -4632(%rbp), %r10
movq -4640(%rbp), %r13
addq %r10, %r11
movq %r11, -4640(%rbp)
movq -4640(%rbp), %r10
movq (%r10), %r12
movq %r12, -4664(%rbp)
movq $-8, %r11
movq %r11, -4680(%rbp)
movq -4680(%rbp), %r13
movq -4688(%rbp), %r10
addq %r13, %r12
movq %r12, -4688(%rbp)
movq -4688(%rbp), %r13
movq (%r13), %r11
movq %r11, -4712(%rbp)
movq $8, %r12
movq %r12, -4728(%rbp)
movq -4728(%rbp), %r10
movq -4736(%rbp), %r13
addq %r10, %r11
movq %r11, -4736(%rbp)
movq -4736(%rbp), %r10
movq (%r10), %r12
movq %r12, -4760(%rbp)
movq -4760(%rbp), %r13
movq -4776(%rbp), %r10
addq %r13, %r11
movq %r11, -4776(%rbp)
movq $8, %r12
movq %r12, -4800(%rbp)
movq -4776(%rbp), %r13
movq %r13, %rax
movq -4800(%rbp), %r10
imulq %r10
movq %rax, %r11
movq %r11, -4824(%rbp)
movq -4824(%rbp), %r13
movq -4832(%rbp), %r10
addq %r13, %r12
movq %r12, -4832(%rbp)
movq $0, %r11
movq %r11, -4856(%rbp)
movq -4832(%rbp), %r13
movq -4856(%rbp), %r10
movq (%r13), %r10
movq $16, %r12
movq %r12, -4880(%rbp)
movq -4880(%rbp), %r13
movq -4888(%rbp), %r10
addq %r13, %r11
movq %r11, -4888(%rbp)
movq -4888(%rbp), %r13
movq (%r13), %r12
movq %r12, -4912(%rbp)
movq $8, %r11
movq %r11, -4928(%rbp)
movq -4928(%rbp), %r10
movq -4936(%rbp), %r13
addq %r10, %r12
movq %r12, -4936(%rbp)
movq -4936(%rbp), %r10
movq (%r10), %r11
movq %r11, -4960(%rbp)
movq -4960(%rbp), %r13
movq %r13, %r12
movq %r12, -4976(%rbp)
movq -4976(%rbp), %r10
movq %r10, %r11
movq %r11, -4992(%rbp)
movq $-72, %r12
movq %r12, -5008(%rbp)
movq -5008(%rbp), %r13
movq -5016(%rbp), %r10
addq %r13, %r11
movq %r11, -5016(%rbp)
movq -5016(%rbp), %r13
movq (%r13), %r12
movq %r12, -5040(%rbp)
movq $-8, %r11
movq %r11, -5056(%rbp)
movq -5056(%rbp), %r10
movq -5064(%rbp), %r13
addq %r10, %r12
movq %r12, -5064(%rbp)
movq -5064(%rbp), %r10
movq (%r10), %r11
movq %r11, -5088(%rbp)
movq $7, %r12
movq %r12, -5104(%rbp)
movq -5104(%rbp), %r13
movq -5112(%rbp), %r10
addq %r13, %r11
movq %r11, -5112(%rbp)
movq $8, %r12
movq %r12, -5136(%rbp)
movq -5136(%rbp), %r13
movq -5144(%rbp), %r10
addq %r13, %r11
movq %r11, -5144(%rbp)
movq -5144(%rbp), %r13
movq (%r13), %r12
movq %r12, -5168(%rbp)
movq -5168(%rbp), %r10
movq -5184(%rbp), %r13
subq %r10, %r11
movq %r11, -5184(%rbp)
movq $8, %r12
movq %r12, -5208(%rbp)
movq -5184(%rbp), %r10
movq %r10, %rax
movq -5208(%rbp), %r13
imulq %r13
movq %rax, %r11
movq %r11, -5232(%rbp)
movq -5232(%rbp), %r10
movq -5240(%rbp), %r13
addq %r10, %r12
movq %r12, -5240(%rbp)
movq $0, %r11
movq %r11, -5264(%rbp)
movq -5240(%rbp), %r10
movq -5264(%rbp), %r13
movq (%r10), %r13
jmp L35
L42:
addq $5280, %rsp
popq %rbp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $1304, %rsp
L45:
movq $-16, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r10
movq -96(%rbp), %r13
addq %r10, %r11
movq %r11, -96(%rbp)
movq $8, %r12
movq %r12, -120(%rbp)
movq -96(%rbp), %r10
movq -120(%rbp), %r13
movq (%r10), %r13
movq $-32, %r11
movq %r11, -144(%rbp)
movq -144(%rbp), %r10
movq -152(%rbp), %r13
addq %r10, %r12
movq %r12, -152(%rbp)
movq -152(%rbp), %r10
movq %r10, %r11
movq %r11, -176(%rbp)
movq $-8, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r10
movq -200(%rbp), %r13
addq %r10, %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r10
movq (%r10), %r12
movq %r12, -224(%rbp)
movq -224(%rbp), %r13
movq %r13, %rsi
movq $-8, %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r13
addq %r10, %r12
movq %r12, -256(%rbp)
movq -256(%rbp), %r10
movq (%r10), %r11
movq %r11, -280(%rbp)
movq -280(%rbp), %r13
movq %r13, %rdi
callq initArray
movq %rax, %r12
movq %r12, -304(%rbp)
movq -176(%rbp), %r13
movq -304(%rbp), %r10
movq (%r13), %r10
movq $-48, %r11
movq %r11, -328(%rbp)
movq -328(%rbp), %r13
movq -336(%rbp), %r10
addq %r13, %r12
movq %r12, -336(%rbp)
movq -336(%rbp), %r13
movq %r13, %r11
movq %r11, -360(%rbp)
movq $-8, %r12
movq %r12, -376(%rbp)
movq -376(%rbp), %r13
movq -384(%rbp), %r10
addq %r13, %r11
movq %r11, -384(%rbp)
movq -384(%rbp), %r13
movq (%r13), %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r10
movq %r10, %rsi
movq $-8, %r11
movq %r11, -432(%rbp)
movq -432(%rbp), %r13
movq -440(%rbp), %r10
addq %r13, %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r13
movq (%r13), %r11
movq %r11, -464(%rbp)
movq -464(%rbp), %r10
movq %r10, %rdi
callq initArray
movq %rax, %r12
movq %r12, -488(%rbp)
movq -360(%rbp), %r10
movq -488(%rbp), %r13
movq (%r10), %r13
movq $-64, %r11
movq %r11, -512(%rbp)
movq -512(%rbp), %r10
movq -520(%rbp), %r13
addq %r10, %r12
movq %r12, -520(%rbp)
movq -520(%rbp), %r10
movq %r10, %r11
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
movq $-8, %r11
movq %r11, -608(%rbp)
movq -608(%rbp), %r13
movq -616(%rbp), %r10
addq %r13, %r12
movq %r12, -616(%rbp)
movq -616(%rbp), %r13
movq (%r13), %r11
movq %r11, -640(%rbp)
movq -640(%rbp), %r10
movq -656(%rbp), %r13
addq %r10, %r12
movq %r12, -656(%rbp)
movq $1, %r11
movq %r11, -680(%rbp)
movq -680(%rbp), %r10
movq -688(%rbp), %r13
subq %r10, %r12
movq %r12, -688(%rbp)
movq -688(%rbp), %r10
movq %r10, %rsi
movq $-8, %r11
movq %r11, -720(%rbp)
movq -720(%rbp), %r13
movq -728(%rbp), %r10
addq %r13, %r12
movq %r12, -728(%rbp)
movq -728(%rbp), %r13
movq (%r13), %r11
movq %r11, -752(%rbp)
movq $-8, %r12
movq %r12, -768(%rbp)
movq -768(%rbp), %r10
movq -776(%rbp), %r13
addq %r10, %r11
movq %r11, -776(%rbp)
movq -776(%rbp), %r10
movq (%r10), %r12
movq %r12, -800(%rbp)
movq -800(%rbp), %r13
movq -816(%rbp), %r10
addq %r13, %r11
movq %r11, -816(%rbp)
movq $1, %r12
movq %r12, -840(%rbp)
movq -840(%rbp), %r13
movq -848(%rbp), %r10
subq %r13, %r11
movq %r11, -848(%rbp)
movq -848(%rbp), %r13
movq %r13, %rdi
callq initArray
movq %rax, %r12
movq %r12, -880(%rbp)
movq -544(%rbp), %r13
movq -880(%rbp), %r10
movq (%r13), %r10
movq $-80, %r11
movq %r11, -904(%rbp)
movq -904(%rbp), %r13
movq -912(%rbp), %r10
addq %r13, %r12
movq %r12, -912(%rbp)
movq -912(%rbp), %r13
movq %r13, %r11
movq %r11, -936(%rbp)
movq $-8, %r12
movq %r12, -952(%rbp)
movq -952(%rbp), %r13
movq -960(%rbp), %r10
addq %r13, %r11
movq %r11, -960(%rbp)
movq -960(%rbp), %r13
movq (%r13), %r12
movq %r12, -984(%rbp)
movq $-8, %r11
movq %r11, -1000(%rbp)
movq -1000(%rbp), %r10
movq -1008(%rbp), %r13
addq %r10, %r12
movq %r12, -1008(%rbp)
movq -1008(%rbp), %r10
movq (%r10), %r11
movq %r11, -1032(%rbp)
movq -1032(%rbp), %r13
movq -1048(%rbp), %r10
addq %r13, %r12
movq %r12, -1048(%rbp)
movq $1, %r11
movq %r11, -1072(%rbp)
movq -1072(%rbp), %r13
movq -1080(%rbp), %r10
subq %r13, %r12
movq %r12, -1080(%rbp)
movq -1080(%rbp), %r13
movq %r13, %rsi
movq $-8, %r11
movq %r11, -1112(%rbp)
movq -1112(%rbp), %r10
movq -1120(%rbp), %r13
addq %r10, %r12
movq %r12, -1120(%rbp)
movq -1120(%rbp), %r10
movq (%r10), %r11
movq %r11, -1144(%rbp)
movq $-8, %r12
movq %r12, -1160(%rbp)
movq -1160(%rbp), %r13
movq -1168(%rbp), %r10
addq %r13, %r11
movq %r11, -1168(%rbp)
movq -1168(%rbp), %r13
movq (%r13), %r12
movq %r12, -1192(%rbp)
movq -1192(%rbp), %r10
movq -1208(%rbp), %r13
addq %r10, %r11
movq %r11, -1208(%rbp)
movq $1, %r12
movq %r12, -1232(%rbp)
movq -1232(%rbp), %r10
movq -1240(%rbp), %r13
subq %r10, %r11
movq %r11, -1240(%rbp)
movq -1240(%rbp), %r10
movq %r10, %rdi
callq initArray
movq %rax, %r12
movq %r12, -1272(%rbp)
movq -936(%rbp), %r10
movq -1272(%rbp), %r13
movq (%r10), %r13
movq $0, %r11
movq %r11, -1296(%rbp)
movq -1296(%rbp), %r10
movq %r10, %rdi
callq try
jmp L44
L44:
addq $1304, %rsp
popq %rbp
ret


.size tigermain, .-tigermain
.section .rodata
.globl L7
.type L7, @object
.size L7, 2
L7:
.string " O"
.globl L8
.type L8, @object
.size L8, 2
L8:
.string " ."
.globl L12
.type L12, @object
.size L12, 2
L12:
.string " O"
.globl L13
.type L13, @object
.size L13, 2
L13:
.string " ."
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
