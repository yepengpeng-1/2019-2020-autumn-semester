.text
.globl L1
.type L1, @function

pushq t100
movq t109, t100
subq $0, t109
L3:
addq t104, t105
movq t105, t103
addq t106, t107
movq t107, t102
callq t109

movq t110, t101
movq t101, (t102)
movq (t102), t111
movq t112, $8(t111)
movq (t102), (t103)
movq $-8(t100), t114
movq $0(t114), t113
callq t109

movq $-8(t100), t116
movq $8(t116), t115
callq t109

jmp L2
L2:
addq $0, t109
ret


.size L1, .-L1
.section .rodata
