.text
.globl L1
.type L1, @function

pushq t100
movq t115, t100
subq $0, t115
L10:
movq t106, $-16(t100)
movq $8(t100), t107
cmpq t108, t107
jg
L5:
addq t109, t110
movq t110, t103
movq $16(t100), t111
movq t111, t102
movq t102, t101
movq t112, $-8(t102)
movq t113, (t105)
L6:
movq $-8(t100), t114
callq t115

movq $-8(t100), t117
callq t115

movl $.L8, t118
callq t115

callq t115

movq $-8(t100), t120
callq t115

jmp L9
L4:
movq t103, t105
movl $.L3, t121
callq t115

movq t116, t104
movq t104, (t105)
jmp L6
L9:
addq $0, t115
ret


.size L1, .-L1
.section .rodata
L2:
.long 20
.string "hey! Bigger than 3!\n"
L3:
.long 20
.string "hey! Bigger than 3!\n"
L7:
.long 1
.string "\n"
L8:
.long 1
.string "\n"
