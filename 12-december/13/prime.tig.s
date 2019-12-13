.text
.globl L1
.type L1, @function

pushq t100
movq t127, t100
subq $0, t127
L31:
movq t113, $-16(t100)
movq $8(t100), t114
divq t115, t116
movq t116, $-24(t100)
movq t117, $-24(t100)
L3:
movq $8(t100), t118
movq $-24(t100), t119
divq t119, t120
movq $-24(t100), t121
mulq t121, t122
movq $8(t100), t123
cmpq t123, t122
je
L6:
movq $-24(t100), t124
movq $-24(t100), t125
cmpq t125, t124
jl
L2:
movq $-8(t100), t126
movq t126, t101
callq t127

callq t127

movq t101, t112
callq t127

movl $.L9, t129
callq t127

callq t127

movq t101, t111
callq t127

movl $.L11, t131
callq t127

callq t127

movq t101, t110
callq t127

movl $.L13, t133
callq t127

callq t127

movq t101, t109
callq t127

movl $.L15, t135
callq t127

callq t127

movq t101, t108
callq t127

movl $.L17, t137
callq t127

callq t127

movq t101, t107
callq t127

movl $.L19, t139
callq t127

callq t127

movq t101, t106
callq t127

movl $.L21, t141
callq t127

callq t127

movq t101, t105
callq t127

movl $.L23, t143
callq t127

callq t127

movq t101, t104
callq t127

movl $.L25, t145
callq t127

callq t127

movq t101, t103
callq t127

movl $.L27, t147
callq t127

callq t127

movq t101, t102
callq t127

movl $.L29, t149
callq t127

callq t127

jmp L30
L5:
movq t150, $-8(t100)
jmp L6
L32:
jmp L3
L30:
addq $0, t127
ret


.size L1, .-L1
.section .rodata
L8:
.long 1
.string "\n"
L9:
.long 1
.string "\n"
L10:
.long 1
.string "\n"
L11:
.long 1
.string "\n"
L12:
.long 1
.string "\n"
L13:
.long 1
.string "\n"
L14:
.long 1
.string "\n"
L15:
.long 1
.string "\n"
L16:
.long 1
.string "\n"
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
L21:
.long 1
.string "\n"
L22:
.long 1
.string "\n"
L23:
.long 1
.string "\n"
L24:
.long 1
.string "\n"
L25:
.long 1
.string "\n"
L26:
.long 1
.string "\n"
L27:
.long 1
.string "\n"
L28:
.long 1
.string "\n"
L29:
.long 1
.string "\n"
