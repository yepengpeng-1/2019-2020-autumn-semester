


============================



L19:
movq $1, t114
movq t114, -24(t100)
movq -16(t100), t115
movq $2, t116
movq t115, t101
xorq %rdx, %rdx
idivq t116
movq t101, t117
movq t117, -40(t100)
movq $2, t118
movq t118, -32(t100)
movq -32(t100), t119
movq t119, t121
movq -40(t100), t120
movq t120, t122
cmpq t122, t121
jle L2
L1:
movq -24(t100), t123
movq t123, t101
jmp L18
L2:
movq -16(t100), t124
movq -32(t100), t125
movq t124, t101
xorq %rdx, %rdx
idivq t125
movq t101, t126
movq -32(t100), t127
movq t126, t101
imulq t127
movq t101, t128
movq t128, t130
movq -16(t100), t129
movq t129, t131
cmpq t131, t130
je L4
L5:
movq -32(t100), t132
movq t132, t134
movq -40(t100), t133
movq t133, t135
cmpq t135, t134
jge L1
L3:
movq -32(t100), t136
movq t136, t138
movq $1, t137
addq t137, t138
movq t138, -32(t100)
jmp L2
L4:
movq $0, t139
movq t139, -24(t100)
jmp L1
L18:
addq $40, t102
popq %rbp
ret




============================



L21:
movq -8(t100), t152
movq t152, %rsi
movq $56, t151
movq t151, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t150
movq -8(t100), t154
movq -8(t154), t153
movq t153, %rsi
movq t150, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t157
movq -8(t157), t156
movq t156, %rsi
leaq L7(%rip), t155
movq t155, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t159
movq t159, %rsi
movq $23, t158
movq t158, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t149
movq -8(t100), t161
movq -8(t161), t160
movq t160, %rsi
movq t149, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t164
movq -8(t164), t163
movq t163, %rsi
leaq L8(%rip), t162
movq t162, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t166
movq t166, %rsi
movq $71, t165
movq t165, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t148
movq -8(t100), t168
movq -8(t168), t167
movq t167, %rsi
movq t148, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t171
movq -8(t171), t170
movq t170, %rsi
leaq L9(%rip), t169
movq t169, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t173
movq t173, %rsi
movq $72, t172
movq t172, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t147
movq -8(t100), t175
movq -8(t175), t174
movq t174, %rsi
movq t147, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t178
movq -8(t178), t177
movq t177, %rsi
leaq L10(%rip), t176
movq t176, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t180
movq t180, %rsi
movq $173, t179
movq t179, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t146
movq -8(t100), t182
movq -8(t182), t181
movq t181, %rsi
movq t146, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t185
movq -8(t185), t184
movq t184, %rsi
leaq L11(%rip), t183
movq t183, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t187
movq t187, %rsi
movq $181, t186
movq t186, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t145
movq -8(t100), t189
movq -8(t189), t188
movq t188, %rsi
movq t145, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t192
movq -8(t192), t191
movq t191, %rsi
leaq L12(%rip), t190
movq t190, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t194
movq t194, %rsi
movq $281, t193
movq t193, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t144
movq -8(t100), t196
movq -8(t196), t195
movq t195, %rsi
movq t144, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t199
movq -8(t199), t198
movq t198, %rsi
leaq L13(%rip), t197
movq t197, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t201
movq t201, %rsi
movq $659, t200
movq t200, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t143
movq -8(t100), t203
movq -8(t203), t202
movq t202, %rsi
movq t143, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t206
movq -8(t206), t205
movq t205, %rsi
leaq L14(%rip), t204
movq t204, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t208
movq t208, %rsi
movq $729, t207
movq t207, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t142
movq -8(t100), t210
movq -8(t210), t209
movq t209, %rsi
movq t142, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t213
movq -8(t213), t212
movq t212, %rsi
leaq L15(%rip), t211
movq t211, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t215
movq t215, %rsi
movq $947, t214
movq t214, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t141
movq -8(t100), t217
movq -8(t217), t216
movq t216, %rsi
movq t141, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t220
movq -8(t220), t219
movq t219, %rsi
leaq L16(%rip), t218
movq t218, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
movq -8(t100), t222
movq t222, %rsi
movq $945, t221
movq t221, %rdi
pushq %r10
pushq %r11
callq check
popq %r11
popq %r10
movq t101, t140
movq -8(t100), t224
movq -8(t224), t223
movq t223, %rsi
movq t140, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t227
movq -8(t227), t226
movq t226, %rsi
leaq L17(%rip), t225
movq t225, %rdi
pushq %r10
pushq %r11
callq print
popq %r11
popq %r10
jmp L20
L20:
addq $8, t102
popq %rbp
ret




============================



L23:
movq t100, %rdi
pushq %r10
pushq %r11
callq try
popq %r11
popq %r10
jmp L22
L22:
addq $0, t102
popq %rbp
ret




============================



L8:
movq $10, t114
movq t114, -8(t100)
L1:
movq -8(t100), t115
movq t115, t117
movq $0, t116
movq t116, t118
cmpq t118, t117
jge L2
L3:
jmp L7
L2:
movq -8(t100), t120
movq t120, %rsi
movq -8(t100), t119
movq t119, %rdi
pushq %r10
pushq %r11
callq printi
popq %r11
popq %r10
movq -8(t100), t121
movq t121, t123
movq $1, t122
subq t122, t123
movq t123, -8(t100)
movq -8(t100), t124
movq t124, t126
movq $2, t125
movq t125, t127
cmpq t127, t126
je L4
L5:
jmp L1
L4:
jmp L3
L7:
addq $8, t101
popq %rbp
ret

