.text
.globl L1
.type L1, @function

pushq t100
movq t110, t100
subq $0, t110
L3:
movq $16(t100), t105
movq t105, t102
movq t102, t101
movq $8(t102), t106
movq $8(t100), t107
addq t107, t108
movq t108, t103
callq t110

movq t103, t103
callq t110

movq t103, t104
callq t110

jmp L2
L2:
addq $0, t110
ret


.size L1, .-L1
.section .rodata
