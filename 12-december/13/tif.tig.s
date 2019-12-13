.text
.globl L1
.type L1, @function

pushq t100
movq t109, t100
subq $0, t109
L6:
movq $16(t100), t103
movq $8(t100), t104
cmpq t104, t103
jg
L3:
movq $8(t100), t105
movq t105, $-8(t100)
L4:
movq $-8(t100), t106
movq t106, t101
callq t109

movq t101, t102
callq t109

jmp L5
L2:
movq $16(t100), t110
movq t110, $-8(t100)
jmp L4
L5:
addq $0, t109
ret


.size L1, .-L1
.section .rodata
