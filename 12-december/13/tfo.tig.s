.text
.globl L1
.type L1, @function

pushq t100
movq t105, t100
subq $0, t105
L9:
movq t101, $-16(t100)
movq $-8(t100), t102
movq t102, $-24(t100)
movq t103, $-24(t100)
L3:
movq $-24(t100), t104
callq t105

movq $-24(t100), t107
cmpq t108, t107
je
L6:
movq $-24(t100), t109
movq $-24(t100), t110
cmpq t110, t109
jl
L2:
jmp L8
L5:
jmp L6
L10:
jmp L3
L8:
addq $0, t105
ret


.size L1, .-L1
.section .rodata
