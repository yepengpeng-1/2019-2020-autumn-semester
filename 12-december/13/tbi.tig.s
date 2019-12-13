.text
.globl L1
.type L1, @function

pushq t100
movq t126, t100
subq $0, t126
L23:
movq t107, $-16(t100)
addq t108, t109
movq t109, t106
movq $8(t100), t110
movq t110, t102
movq t102, t101
movq $-8(t102), t111
subq t112, t113
movq t113, (t106)
movq t114, $-8(t100)
L3:
addq t115, t116
movq t116, t105
movq $8(t100), t117
movq t117, t104
movq t104, t103
movq $-8(t104), t118
subq t119, t120
movq t120, (t105)
movq t121, $-24(t100)
L6:
movq $-8(t100), t122
movq $-24(t100), t123
cmpq t123, t122
jg
L16:
movl $.L14, t124
movq t124, $-48(t100)
L17:
movq $-48(t100), t125
callq t126

movq $-24(t100), t128
movq (t105), t129
cmpq t129, t128
jl
L5:
movl $.L19, t130
callq t126

movq $-8(t100), t131
movq (t106), t132
cmpq t132, t131
jl
L2:
movl $.L21, t133
callq t126

callq t126

jmp L22
L15:
movl $.L13, t134
movq t134, $-48(t100)
jmp L17
L24:
jmp L6
L25:
jmp L3
L22:
addq $0, t126
ret


.size L1, .-L1
.section .rodata
L8:
.long 1
.string "x"
L9:
.long 1
.string "y"
L13:
.long 1
.string "x"
L14:
.long 1
.string "y"
L18:
.long 1
.string "\n"
L19:
.long 1
.string "\n"
L20:
.long 1
.string "\n"
L21:
.long 1
.string "\n"
