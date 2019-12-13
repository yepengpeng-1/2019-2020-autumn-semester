.text
.globl L1
.type L1, @function

pushq t100
movq t105, t100
subq $0, t105
L9:
movq t101, $-16(t100)
L2:
movq $-8(t100), t102
cmpq t103, t102
jge
L4:
jmp L8
L3:
movq $-8(t100), t104
callq t105

movq $-8(t100), t107
callq t105

movq $-8(t100), t108
subq t109, t110
movq t110, $-8(t100)
movq $-8(t100), t111
cmpq t112, t111
je
L6:
jmp L2
L5:
jmp L6
L8:
addq $0, t105
ret


.size L1, .-L1
.section .rodata
