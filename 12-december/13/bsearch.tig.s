.text
.globl L1
.type L1, @function

pushq t100
movq t130, t100
subq $0, t130
L16:
movq t125, $-16(t100)
addq t126, t127
movq t127, t124
movq $-8(t100), t129
movq $-8(t100), t128
callq t130

movq t107, t123
movq t123, (t124)
movl $.L3, t131
callq t130

addq t132, t133
movq t133, t122
movq $8(t100), t134
movq t134, t102
movq t102, t101
movq $-8(t102), t135
subq t136, t137
movq t137, (t122)
movq t138, $-8(t100)
L5:
movq $8(t100), t139
movq t139, t104
movq t104, t103
movq $-24(t104), t140
movq $-8(t100), t141
mulq t142, t143
addq t143, t144
movq $-8(t100), t145
mulq t146, t147
addq t148, t149
movq t149, (t144)
callq t130

movq $-8(t100), t150
movq (t122), t151
cmpq t151, t150
jl
L4:
movq $24(t100), t152
movq $16(t100), t153
cmpq t153, t152
je
L11:
addq t154, t155
movq t155, t121
movq $24(t100), t156
movq $16(t100), t157
addq t157, t158
divq t159, t160
movq t160, $-16(t100)
movq $32(t100), t161
movq t161, t106
movq t106, t105
movq $-24(t106), t163
movq $-8(t100), t164
mulq t165, t166
addq t166, t167
movq (t167), t162
movq $8(t100), t168
cmpq t168, t162
jl
L8:
addq t169, t170
movq t170, t118
movq $8(t100), t173
movq $-8(t100), t172
movq $24(t100), t171
callq t130

movq t107, t117
movq t117, (t120)
L9:
movq (t120), (t121)
L12:
movq (t121), t174
movq t174, t107
callq t130

callq t130

movq $8(t100), t175
movq t175, t115
movq t115, t114
movq $-8(t115), t177
subq t178, t179
callq t130

movq t107, t116
callq t130

movl $.L14, t181
callq t130

callq t130

jmp L15
L17:
jmp L5
L10:
addq t182, t183
movq (t183), (t121)
jmp L12
L7:
movq t118, t120
movq $8(t100), t188
movq $16(t100), t187
movq $-8(t100), t184
addq t185, t186
callq t130

movq t107, t119
movq t119, (t120)
jmp L9
L15:
addq $0, t130
ret


.size L1, .-L1
.section .rodata
L2:
.long 0
.string ""
L3:
.long 0
.string ""
L13:
.long 1
.string "\n"
L14:
.long 1
.string "\n"
