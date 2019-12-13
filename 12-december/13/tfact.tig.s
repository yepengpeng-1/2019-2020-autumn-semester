.text
.globl L1
.type L1, @function

pushq t100
movq t114, t100
subq $0, t114
L6:
movq $8(t100), t106
cmpq t107, t106
je
L3:
addq t108, t109
movq t109, t105
movq $8(t100), t110
movq t110, t104
movq $8(t100), t111
subq t112, t113
callq t114

movq t101, t103
mulq t103, t115
movq t115, (t105)
L4:
movq (t105), t116
movq t116, t101
callq t114

movq t101, t102
callq t114

jmp L5
L2:
movq t118, (t105)
jmp L4
L5:
addq $0, t114
ret


.size L1, .-L1
.section .rodata
