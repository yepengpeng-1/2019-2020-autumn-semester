.text
.globl printboard
.type printboard, @function

printboard:
pushq %rbp
movq %rsp, %rbp
subq $440, %rsp
L41:
movq -432(%rbp), %r13
movq -440(%rbp), %r13
addq %r13, %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r13
movq %r13, %r12
movq %r12, -424(%rbp)
movq 8(%rbp), %r11
movq %r11, -416(%rbp)
movq -416(%rbp), %r10
movq %r10, %r12
movq %r12, -408(%rbp)
movq -408(%rbp), %r10
movq %r10, %r11
movq %r11, -400(%rbp)
movq -408(%rbp), %r10
movq -8(%r10), %r12
movq %r12, -392(%rbp)
movq -376(%rbp), %r10
movq -384(%rbp), %r13
subq %r10, %r12
movq %r12, -384(%rbp)
movq -384(%rbp), %r10
movq -424(%rbp), %r13
movq %r10, (%r13)
movq -368(%rbp), %r10
movq %r10, -8(%rbp)
movq -8(%rbp), %r12
movq %r12, -360(%rbp)
movq -424(%rbp), %r13
movq (%r13), %r11
movq %r11, -352(%rbp)
movq -352(%rbp), %r10
movq -360(%rbp), %r10
cmpq %r10, %r10
jle L2
L1:
movq L20, %r12
movq %r12, -344(%rbp)
callq print
jmp L40
L2:
movq -328(%rbp), %r13
movq -336(%rbp), %r10
addq %r13, %r11
movq %r11, -336(%rbp)
movq -336(%rbp), %r10
movq %r10, %r11
movq %r11, -320(%rbp)
movq 8(%rbp), %r11
movq %r11, -312(%rbp)
movq -312(%rbp), %r10
movq %r10, %r11
movq %r11, -304(%rbp)
movq -304(%rbp), %r13
movq %r13, %r11
movq %r11, -296(%rbp)
movq -304(%rbp), %r13
movq -8(%r13), %r11
movq %r11, -288(%rbp)
movq -272(%rbp), %r13
movq -280(%rbp), %r13
subq %r13, %r12
movq %r12, -280(%rbp)
movq -280(%rbp), %r10
movq -320(%rbp), %r10
movq %r10, (%r10)
movq -264(%rbp), %r10
movq %r10, -24(%rbp)
movq -24(%rbp), %r11
movq %r11, -256(%rbp)
movq -320(%rbp), %r10
movq (%r10), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r13
cmpq %r10, %r13
jle L5
L4:
movq L18, %r11
movq %r11, -240(%rbp)
callq print
movq -8(%rbp), %r11
movq %r11, -232(%rbp)
movq -424(%rbp), %r13
movq (%r13), %r11
movq %r11, -224(%rbp)
movq -224(%rbp), %r13
movq -232(%rbp), %r10
cmpq %r13, %r10
jge L1
L3:
movq -8(%rbp), %r11
movq %r11, -216(%rbp)
movq -200(%rbp), %r13
movq -208(%rbp), %r13
addq %r13, %r12
movq %r12, -208(%rbp)
movq -208(%rbp), %r10
movq %r10, -8(%rbp)
jmp L2
L5:
movq 8(%rbp), %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r10
movq %r10, %r12
movq %r12, -184(%rbp)
movq -184(%rbp), %r13
movq %r13, %r12
movq %r12, -176(%rbp)
movq -184(%rbp), %r13
movq -40(%r13), %r12
movq %r12, -168(%rbp)
movq -8(%rbp), %r11
movq %r11, -160(%rbp)
movq -160(%rbp), %r10
movq %rax, %r10
movq -152(%rbp), %r10
mulq %r10
movq %r11, %rax
movq %r11, -144(%rbp)
movq -136(%rbp), %r10
movq -144(%rbp), %r10
addq %r10, %r12
movq %r12, -136(%rbp)
movq -136(%rbp), %r10
movq (%r10), %r12
movq %r12, -128(%rbp)
movq -24(%rbp), %r11
movq %r11, -120(%rbp)
movq -120(%rbp), %r13
movq -128(%rbp), %r13
cmpq %r13, %r13
je L14
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
movq -320(%rbp), %r13
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
L40:
addq $440, %rsp
ret


.size printboard, .-printboard
.globl try
.type try, @function

try:
pushq %rbp
movq %rsp, %rbp
subq $1480, %rsp
L43:
movq 8(%rbp), %r12
movq %r12, -1480(%rbp)
movq -1480(%rbp), %r10
movq %r10, %r11
movq %r11, -1472(%rbp)
movq 16(%rbp), %r11
movq %r11, -1464(%rbp)
movq -1464(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -1456(%rbp)
movq -1456(%rbp), %r10
movq %r10, %r11
movq %r11, -1448(%rbp)
movq -1448(%rbp), %r13
movq %r13, %r12
movq %r12, -1440(%rbp)
movq -1448(%rbp), %r13
movq -8(%r13), %r12
movq %r12, -1432(%rbp)
movq -1432(%rbp), %r10
movq -1472(%rbp), %r13
cmpq %r10, %r13
je L37
L38:
movq -1416(%rbp), %r13
movq -1424(%rbp), %r10
addq %r13, %r11
movq %r11, -1424(%rbp)
movq -1424(%rbp), %r10
movq %r10, %r11
movq %r11, -1408(%rbp)
movq -1392(%rbp), %r13
movq -1400(%rbp), %r10
addq %r13, %r12
movq %r12, -1400(%rbp)
movq -1400(%rbp), %r10
movq %r10, %r12
movq %r12, -1384(%rbp)
movq 16(%rbp), %r11
movq %r11, -1376(%rbp)
movq -1376(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -1368(%rbp)
movq -1368(%rbp), %r13
movq %r13, %r11
movq %r11, -1360(%rbp)
movq -1360(%rbp), %r13
movq %r13, %r11
movq %r11, -1352(%rbp)
movq -1360(%rbp), %r13
movq -8(%r13), %r11
movq %r11, -1344(%rbp)
movq -1328(%rbp), %r13
movq -1336(%rbp), %r10
subq %r13, %r12
movq %r12, -1336(%rbp)
movq -1336(%rbp), %r13
movq -1384(%rbp), %r10
movq %r13, (%r10)
movq -1320(%rbp), %r13
movq %r13, -8(%rbp)
movq -8(%rbp), %r11
movq %r11, -1312(%rbp)
movq -1384(%rbp), %r10
movq (%r10), %r11
movq %r11, -1304(%rbp)
movq -1304(%rbp), %r13
movq -1312(%rbp), %r13
cmpq %r13, %r13
jle L22
L21:
movq -1288(%rbp), %r13
movq -1296(%rbp), %r10
movq %r13, (%r10)
L39:
jmp L42
L37:
movq -1408(%rbp), %r10
movq %r10, %r12
movq %r12, -1296(%rbp)
callq printboard
movq %rax, %r11
movq %r11, -1280(%rbp)
movq -1280(%rbp), %r10
movq -1296(%rbp), %r10
movq %r10, (%r10)
jmp L39
L22:
movq 16(%rbp), %r12
movq %r12, -1272(%rbp)
movq -1272(%rbp), %r13
movq 8(%r13), %r12
movq %r12, -1264(%rbp)
movq -1264(%rbp), %r10
movq %r10, %r12
movq %r12, -1256(%rbp)
movq -1256(%rbp), %r10
movq %r10, %r12
movq %r12, -1248(%rbp)
movq -1256(%rbp), %r10
movq -24(%r10), %r12
movq %r12, -1240(%rbp)
movq -8(%rbp), %r11
movq %r11, -1232(%rbp)
movq -1232(%rbp), %r10
movq %rax, %r10
movq -1224(%rbp), %r13
mulq %r13
movq %r11, %rax
movq %r11, -1216(%rbp)
movq -1208(%rbp), %r13
movq -1216(%rbp), %r10
addq %r10, %r12
movq %r12, -1208(%rbp)
movq -1208(%rbp), %r13
movq (%r13), %r12
movq %r12, -1200(%rbp)
movq -1192(%rbp), %r13
movq -1200(%rbp), %r10
cmpq %r13, %r10
je L24
L25:
movq -1176(%rbp), %r10
movq -1184(%rbp), %r13
movq %r10, (%r13)
L26:
movq -1184(%rbp), %r13
movq (%r13), %r11
movq %r11, -1168(%rbp)
movq -1160(%rbp), %r13
movq -1168(%rbp), %r10
cmpq %r13, %r10
jne L29
L30:
movq -1144(%rbp), %r10
movq -1152(%rbp), %r13
movq %r10, (%r13)
L31:
movq -1152(%rbp), %r13
movq (%r13), %r12
movq %r12, -1136(%rbp)
movq -1128(%rbp), %r13
movq -1136(%rbp), %r10
cmpq %r13, %r10
jne L34
L35:
movq -8(%rbp), %r11
movq %r11, -1120(%rbp)
movq -1384(%rbp), %r13
movq (%r13), %r12
movq %r12, -1112(%rbp)
movq -1112(%rbp), %r13
movq -1120(%rbp), %r10
cmpq %r13, %r10
jge L21
L23:
movq -8(%rbp), %r11
movq %r11, -1104(%rbp)
movq -1088(%rbp), %r13
movq -1096(%rbp), %r13
addq %r13, %r11
movq %r11, -1096(%rbp)
movq -1096(%rbp), %r10
movq %r10, -8(%rbp)
jmp L22
L24:
movq -1072(%rbp), %r10
movq -1080(%rbp), %r13
addq %r10, %r11
movq %r11, -1080(%rbp)
movq -1080(%rbp), %r13
movq %r13, %r12
movq %r12, -1184(%rbp)
movq -1056(%rbp), %r13
movq %r13, %r12
movq %r12, -1064(%rbp)
movq 16(%rbp), %r12
movq %r12, -1048(%rbp)
movq -1048(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -1040(%rbp)
movq -1040(%rbp), %r13
movq %r13, %r12
movq %r12, -1032(%rbp)
movq -1032(%rbp), %r10
movq %r10, %r11
movq %r11, -1024(%rbp)
movq -1032(%rbp), %r10
movq -56(%r10), %r12
movq %r12, -1016(%rbp)
movq -8(%rbp), %r11
movq %r11, -1008(%rbp)
movq 8(%rbp), %r11
movq %r11, -1000(%rbp)
movq -992(%rbp), %r10
movq -1000(%rbp), %r10
addq %r10, %r11
movq %r11, -992(%rbp)
movq -992(%rbp), %r10
movq %rax, %r10
movq -984(%rbp), %r10
mulq %r10
movq %r11, %rax
movq %r11, -976(%rbp)
movq -968(%rbp), %r10
movq -976(%rbp), %r10
addq %r10, %r11
movq %r11, -968(%rbp)
movq -968(%rbp), %r10
movq (%r10), %r12
movq %r12, -960(%rbp)
movq -952(%rbp), %r10
movq -960(%rbp), %r10
cmpq %r10, %r10
je L27
L28:
movq -944(%rbp), %r10
movq %r10, %r12
movq %r12, -1064(%rbp)
L27:
movq -1064(%rbp), %r13
movq -1184(%rbp), %r10
movq %r13, (%r10)
jmp L26
L29:
movq -928(%rbp), %r13
movq -936(%rbp), %r13
addq %r13, %r12
movq %r12, -936(%rbp)
movq -936(%rbp), %r13
movq %r13, %r12
movq %r12, -1152(%rbp)
movq -912(%rbp), %r10
movq %r10, %r11
movq %r11, -920(%rbp)
movq 16(%rbp), %r11
movq %r11, -904(%rbp)
movq -904(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -896(%rbp)
movq -896(%rbp), %r10
movq %r10, %r11
movq %r11, -888(%rbp)
movq -888(%rbp), %r10
movq %r10, %r11
movq %r11, -880(%rbp)
movq -888(%rbp), %r10
movq -72(%r10), %r11
movq %r11, -872(%rbp)
movq -8(%rbp), %r11
movq %r11, -864(%rbp)
movq -848(%rbp), %r13
movq -856(%rbp), %r13
addq %r13, %r11
movq %r11, -856(%rbp)
movq 8(%rbp), %r11
movq %r11, -840(%rbp)
movq -832(%rbp), %r13
movq -840(%rbp), %r10
subq %r10, %r12
movq %r12, -832(%rbp)
movq -832(%rbp), %r13
movq %rax, %r13
movq -824(%rbp), %r10
mulq %r10
movq %r12, %rax
movq %r12, -816(%rbp)
movq -808(%rbp), %r10
movq -816(%rbp), %r13
addq %r13, %r11
movq %r11, -808(%rbp)
movq -808(%rbp), %r10
movq (%r10), %r11
movq %r11, -800(%rbp)
movq -792(%rbp), %r10
movq -800(%rbp), %r13
cmpq %r10, %r13
je L32
L33:
movq -784(%rbp), %r13
movq %r13, %r12
movq %r12, -920(%rbp)
L32:
movq -920(%rbp), %r13
movq -1152(%rbp), %r13
movq %r13, (%r13)
jmp L31
L34:
movq -768(%rbp), %r10
movq -24(%r10), %r12
movq %r12, -776(%rbp)
movq -8(%rbp), %r11
movq %r11, -760(%rbp)
movq -760(%rbp), %r10
movq %rax, %r10
movq -752(%rbp), %r10
mulq %r10
movq %r11, %rax
movq %r11, -744(%rbp)
movq -736(%rbp), %r13
movq -744(%rbp), %r10
addq %r10, %r11
movq %r11, -736(%rbp)
movq -728(%rbp), %r13
movq -736(%rbp), %r10
movq %r13, (%r10)
movq 16(%rbp), %r12
movq %r12, -720(%rbp)
movq -720(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -712(%rbp)
movq -712(%rbp), %r13
movq %r13, %r12
movq %r12, -768(%rbp)
movq -768(%rbp), %r13
movq %r13, %r11
movq %r11, -704(%rbp)
movq -768(%rbp), %r13
movq -24(%r13), %r12
movq %r12, -696(%rbp)
movq -8(%rbp), %r12
movq %r12, -688(%rbp)
movq -688(%rbp), %r13
movq %rax, %r13
movq -680(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -672(%rbp)
movq -664(%rbp), %r10
movq -672(%rbp), %r13
addq %r13, %r12
movq %r12, -664(%rbp)
movq -656(%rbp), %r10
movq -664(%rbp), %r13
movq %r10, (%r13)
movq 16(%rbp), %r11
movq %r11, -648(%rbp)
movq -648(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -640(%rbp)
movq -640(%rbp), %r10
movq %r10, %r11
movq %r11, -632(%rbp)
movq -632(%rbp), %r13
movq %r13, %r12
movq %r12, -624(%rbp)
movq -632(%rbp), %r13
movq -56(%r13), %r11
movq %r11, -616(%rbp)
movq -8(%rbp), %r12
movq %r12, -608(%rbp)
movq 8(%rbp), %r12
movq %r12, -600(%rbp)
movq -592(%rbp), %r13
movq -600(%rbp), %r13
addq %r13, %r12
movq %r12, -592(%rbp)
movq -592(%rbp), %r13
movq %rax, %r13
movq -584(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -576(%rbp)
movq -568(%rbp), %r10
movq -576(%rbp), %r13
addq %r13, %r12
movq %r12, -568(%rbp)
movq -560(%rbp), %r10
movq -568(%rbp), %r13
movq %r10, (%r13)
movq 16(%rbp), %r11
movq %r11, -552(%rbp)
movq -552(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -544(%rbp)
movq -544(%rbp), %r10
movq %r10, %r11
movq %r11, -536(%rbp)
movq -536(%rbp), %r13
movq %r13, %r12
movq %r12, -528(%rbp)
movq -536(%rbp), %r13
movq -72(%r13), %r11
movq %r11, -520(%rbp)
movq -8(%rbp), %r12
movq %r12, -512(%rbp)
movq -496(%rbp), %r13
movq -504(%rbp), %r10
addq %r13, %r11
movq %r11, -504(%rbp)
movq 8(%rbp), %r11
movq %r11, -488(%rbp)
movq -480(%rbp), %r13
movq -488(%rbp), %r13
subq %r13, %r11
movq %r11, -480(%rbp)
movq -480(%rbp), %r13
movq %rax, %r13
movq -472(%rbp), %r13
mulq %r13
movq %r11, %rax
movq %r11, -464(%rbp)
movq -456(%rbp), %r10
movq -464(%rbp), %r13
addq %r13, %r11
movq %r11, -456(%rbp)
movq -448(%rbp), %r10
movq -456(%rbp), %r13
movq %r10, (%r13)
movq 16(%rbp), %r12
movq %r12, -440(%rbp)
movq -440(%rbp), %r10
movq 8(%r10), %r11
movq %r11, -432(%rbp)
movq -432(%rbp), %r10
movq %r10, %r12
movq %r12, -424(%rbp)
movq -424(%rbp), %r13
movq %r13, %r11
movq %r11, -416(%rbp)
movq -424(%rbp), %r13
movq -40(%r13), %r12
movq %r12, -408(%rbp)
movq 8(%rbp), %r12
movq %r12, -400(%rbp)
movq -400(%rbp), %r10
movq %rax, %r10
movq -392(%rbp), %r10
mulq %r10
movq %r12, %rax
movq %r12, -384(%rbp)
movq -376(%rbp), %r13
movq -384(%rbp), %r10
addq %r10, %r12
movq %r12, -376(%rbp)
movq -360(%rbp), %r13
movq -368(%rbp), %r10
addq %r13, %r11
movq %r11, -368(%rbp)
movq -368(%rbp), %r13
movq -376(%rbp), %r10
movq (%r13), %r14
movq %r14, (%r10)
movq 8(%rbp), %r12
movq %r12, -352(%rbp)
movq -336(%rbp), %r10
movq -344(%rbp), %r13
addq %r10, %r11
movq %r11, -344(%rbp)
callq try
movq 16(%rbp), %r12
movq %r12, -328(%rbp)
movq -328(%rbp), %r13
movq 8(%r13), %r11
movq %r11, -320(%rbp)
movq -320(%rbp), %r13
movq %r13, %r12
movq %r12, -312(%rbp)
movq -312(%rbp), %r10
movq %r10, %r11
movq %r11, -304(%rbp)
movq -312(%rbp), %r10
movq -24(%r10), %r12
movq %r12, -296(%rbp)
movq -8(%rbp), %r12
movq %r12, -288(%rbp)
movq -288(%rbp), %r13
movq %rax, %r13
movq -280(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -272(%rbp)
movq -264(%rbp), %r10
movq -272(%rbp), %r13
addq %r13, %r12
movq %r12, -264(%rbp)
movq -256(%rbp), %r10
movq -264(%rbp), %r13
movq %r10, (%r13)
movq 16(%rbp), %r11
movq %r11, -248(%rbp)
movq -248(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -240(%rbp)
movq -240(%rbp), %r10
movq %r10, %r11
movq %r11, -232(%rbp)
movq -232(%rbp), %r13
movq %r13, %r12
movq %r12, -224(%rbp)
movq -232(%rbp), %r13
movq -56(%r13), %r11
movq %r11, -216(%rbp)
movq -8(%rbp), %r12
movq %r12, -208(%rbp)
movq 8(%rbp), %r12
movq %r12, -200(%rbp)
movq -192(%rbp), %r13
movq -200(%rbp), %r13
addq %r13, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r13
movq %rax, %r13
movq -184(%rbp), %r13
mulq %r13
movq %r12, %rax
movq %r12, -176(%rbp)
movq -168(%rbp), %r10
movq -176(%rbp), %r13
addq %r13, %r12
movq %r12, -168(%rbp)
movq -160(%rbp), %r10
movq -168(%rbp), %r13
movq %r10, (%r13)
movq 16(%rbp), %r11
movq %r11, -152(%rbp)
movq -152(%rbp), %r10
movq 8(%r10), %r12
movq %r12, -144(%rbp)
movq -144(%rbp), %r10
movq %r10, %r11
movq %r11, -136(%rbp)
movq -136(%rbp), %r13
movq %r13, %r12
movq %r12, -128(%rbp)
movq -136(%rbp), %r13
movq -72(%r13), %r11
movq %r11, -120(%rbp)
movq -8(%rbp), %r12
movq %r12, -112(%rbp)
movq -96(%rbp), %r13
movq -104(%rbp), %r10
addq %r13, %r11
movq %r11, -104(%rbp)
movq 8(%rbp), %r11
movq %r11, -88(%rbp)
movq -80(%rbp), %r13
movq -88(%rbp), %r13
subq %r13, %r11
movq %r11, -80(%rbp)
movq -80(%rbp), %r13
movq %rax, %r13
movq -72(%rbp), %r13
mulq %r13
movq %r11, %rax
movq %r11, -64(%rbp)
movq -56(%rbp), %r10
movq -64(%rbp), %r13
addq %r13, %r11
movq %r11, -56(%rbp)
movq -48(%rbp), %r10
movq -56(%rbp), %r13
movq %r10, (%r13)
jmp L35
L42:
addq $1480, %rsp
ret


.size try, .-try
.globl tigermain
.type tigermain, @function

tigermain:
pushq %rbp
movq %rsp, %rbp
subq $408, %rsp
L45:
movq -408(%rbp), %r10
movq %r10, -16(%rbp)
movq -392(%rbp), %r13
movq -400(%rbp), %r10
addq %r13, %r12
movq %r12, -400(%rbp)
movq -400(%rbp), %r10
movq %r10, %r12
movq %r12, -384(%rbp)
movq -8(%rbp), %r11
movq %r11, -376(%rbp)
movq -8(%rbp), %r12
movq %r12, -368(%rbp)
callq initArray
movq %rax, %r11
movq %r11, -360(%rbp)
movq -360(%rbp), %r10
movq -384(%rbp), %r13
movq %r10, (%r13)
movq -344(%rbp), %r13
movq -352(%rbp), %r13
addq %r13, %r12
movq %r12, -352(%rbp)
movq -352(%rbp), %r13
movq %r13, %r12
movq %r12, -336(%rbp)
movq -8(%rbp), %r12
movq %r12, -328(%rbp)
movq -8(%rbp), %r12
movq %r12, -320(%rbp)
callq initArray
movq %rax, %r12
movq %r12, -312(%rbp)
movq -312(%rbp), %r10
movq -336(%rbp), %r10
movq %r10, (%r10)
movq -296(%rbp), %r13
movq -304(%rbp), %r10
addq %r13, %r12
movq %r12, -304(%rbp)
movq -304(%rbp), %r10
movq %r10, %r12
movq %r12, -288(%rbp)
movq -8(%rbp), %r11
movq %r11, -280(%rbp)
movq -8(%rbp), %r11
movq %r11, -272(%rbp)
movq -264(%rbp), %r13
movq -272(%rbp), %r10
addq %r10, %r12
movq %r12, -264(%rbp)
movq -248(%rbp), %r10
movq -256(%rbp), %r10
subq %r10, %r11
movq %r11, -256(%rbp)
movq -8(%rbp), %r12
movq %r12, -240(%rbp)
movq -8(%rbp), %r12
movq %r12, -232(%rbp)
movq -224(%rbp), %r10
movq -232(%rbp), %r13
addq %r13, %r11
movq %r11, -224(%rbp)
movq -208(%rbp), %r13
movq -216(%rbp), %r13
subq %r13, %r12
movq %r12, -216(%rbp)
callq initArray
movq %rax, %r11
movq %r11, -200(%rbp)
movq -200(%rbp), %r10
movq -288(%rbp), %r13
movq %r10, (%r13)
movq -184(%rbp), %r13
movq -192(%rbp), %r13
addq %r13, %r12
movq %r12, -192(%rbp)
movq -192(%rbp), %r13
movq %r13, %r12
movq %r12, -176(%rbp)
movq -8(%rbp), %r12
movq %r12, -168(%rbp)
movq -8(%rbp), %r11
movq %r11, -160(%rbp)
movq -152(%rbp), %r13
movq -160(%rbp), %r13
addq %r13, %r11
movq %r11, -152(%rbp)
movq -136(%rbp), %r10
movq -144(%rbp), %r13
subq %r10, %r11
movq %r11, -144(%rbp)
movq -8(%rbp), %r12
movq %r12, -128(%rbp)
movq -8(%rbp), %r11
movq %r11, -120(%rbp)
movq -112(%rbp), %r13
movq -120(%rbp), %r13
addq %r13, %r11
movq %r11, -112(%rbp)
movq -96(%rbp), %r10
movq -104(%rbp), %r13
subq %r10, %r11
movq %r11, -104(%rbp)
callq initArray
movq %rax, %r12
movq %r12, -88(%rbp)
movq -88(%rbp), %r10
movq -176(%rbp), %r10
movq %r10, (%r10)
callq try
jmp L44
L44:
addq $408, %rsp
ret


.size tigermain, .-tigermain
.section .rodata
L7:
.long 2
.string " O"
L8:
.long 2
.string " ."
L12:
.long 2
.string " O"
L13:
.long 2
.string " ."
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
