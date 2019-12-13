.text
.globl L1
.type L1, @function

pushq t100
movq t104, t100
subq $0, t104
L22:
movq $8(t100), t101
cmpq t102, t101
jg
L3:
callq t104

callq t104

movl $.L6, t107
callq t104

callq t104

movl $.L8, t109
callq t104

callq t104

movl $.L10, t111
callq t104

callq t104

movl $.L12, t113
callq t104

callq t104

movl $.L14, t115
callq t104

callq t104

movl $.L16, t117
callq t104

callq t104

movl $.L18, t119
callq t104

callq t104

movl $.L20, t121
callq t104

callq t104

jmp L21
L2:
movq $8(t100), t122
divq t123, t124
callq t104

movq $8(t100), t125
movq $8(t100), t126
divq t127, t128
mulq t129, t130
subq t130, t131
callq t104

jmp L3
L21:
addq $0, t104
ret


.size L1, .-L1
.section .rodata
L5:
.long 4
.string "\t->\t"
L6:
.long 4
.string "\t->\t"
L7:
.long 1
.string "\n"
L8:
.long 1
.string "\n"
L9:
.long 4
.string "\t->\t"
L10:
.long 4
.string "\t->\t"
L11:
.long 1
.string "\n"
L12:
.long 1
.string "\n"
L13:
.long 4
.string "\t->\t"
L14:
.long 4
.string "\t->\t"
L15:
.long 1
.string "\n"
L16:
.long 1
.string "\n"
L17:
.long 4
.string "\t->\t"
L18:
.long 4
.string "\t->\t"
L19:
.long 1
.string "\n"
L20:
.long 1
.string "\n"
