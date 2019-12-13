.text
.globl L1
.type L1, @function

pushq t100
movq t158, t100
subq $0, t158
L37:
movq t153, $-16(t100)
addq t154, t155
movq t155, t152
movq $-8(t100), t157
movq $-8(t100), t156
callq t158

movq t159, t151
movq t151, (t152)
movl $.L3, t160
callq t158

addq t161, t162
movq t162, t150
movq $8(t100), t163
movq t163, t102
movq t102, t101
movq $-8(t102), t164
subq t165, t166
movq t166, (t150)
movq t167, $-8(t100)
L5:
movq $8(t100), t168
movq t168, t104
movq t104, t103
movq $-24(t104), t169
movq $-8(t100), t170
mulq t171, t172
addq t172, t173
movq t173, t149
movq $8(t100), t174
movq t174, t106
movq t106, t105
movq $-8(t106), t175
movq $-8(t100), t176
subq t176, t177
movq t177, (t149)
callq t158

movq $-8(t100), t178
movq (t150), t179
cmpq t179, t178
jl
L4:
movq $16(t100), t180
movq t180, $-16(t100)
movq $8(t100), t181
movq t181, $-32(t100)
addq t182, t183
movq t183, t148
movq $24(t100), t184
movq t184, t110
movq t110, t109
movq $-24(t110), t185
movq $16(t100), t186
mulq t187, t188
addq t188, t189
movq (t189), (t148)
movq $16(t100), t190
movq $8(t100), t191
cmpq t191, t190
jl
L27:
callq t158

callq t158

movq $8(t100), t192
movq t192, t134
movq t134, t133
movq $-8(t134), t194
subq t195, t196
callq t158

addq t197, t198
movq t198, t141
movq $8(t100), t199
movq t199, t136
movq t136, t135
movq $-8(t136), t200
subq t201, t202
movq t202, (t141)
movq t203, $-8(t100)
L30:
movq $8(t100), t204
movq t204, t140
movq t140, t139
movq $-24(t140), t206
movq $-8(t100), t207
mulq t208, t209
addq t209, t210
movq (t210), t205
callq t158

movl $.L33, t211
callq t158

movq $-8(t100), t212
movq (t141), t213
cmpq t213, t212
jl
L29:
movl $.L35, t214
callq t158

callq t158

jmp L36
L38:
jmp L5
L26:
L7:
movq $-8(t100), t215
movq $-24(t100), t216
cmpq t216, t215
jl
L9:
movq $24(t100), t217
movq t217, t130
movq t130, t129
movq $-24(t130), t218
movq $-8(t100), t219
mulq t220, t221
addq t221, t222
addq t223, t224
movq (t224), (t222)
movq $-8(t100), t226
subq t227, t228
movq $16(t100), t225
callq t158

movq $8(t100), t232
movq $-8(t100), t229
addq t230, t231
callq t158

jmp L27
L8:
jmp L7
L15:
movq (t147), t233
cmpq t234, t233
jne
L17:
movq $24(t100), t235
movq t235, t115
movq t115, t114
movq $-24(t115), t236
movq $-8(t100), t237
mulq t238, t239
addq t239, t240
movq t240, t145
movq $24(t100), t241
movq t241, t117
movq t117, t116
movq $-24(t117), t242
movq $-24(t100), t243
mulq t244, t245
addq t245, t246
movq (t246), (t145)
L23:
movq $-8(t100), t247
movq $-24(t100), t248
cmpq t248, t247
jl
L19:
movq t249, (t144)
L20:
movq (t144), t250
cmpq t251, t250
jne
L25:
movq $24(t100), t252
movq t252, t124
movq t124, t123
movq $-24(t124), t253
movq $-24(t100), t254
mulq t255, t256
addq t256, t257
movq t257, t142
movq $24(t100), t258
movq t258, t126
movq t126, t125
movq $-24(t126), t259
movq $-8(t100), t260
mulq t261, t262
addq t262, t263
movq (t263), (t142)
jmp L7
L16:
movq $-24(t100), t264
subq t265, t266
movq t266, $-24(t100)
jmp L15
L10:
addq t267, t268
movq t268, t147
movq t269, t113
movq $-40(t100), t270
movq t270, t146
movq $24(t100), t271
movq t271, t112
movq t112, t111
movq $-24(t112), t273
movq $-24(t100), t274
mulq t275, t276
addq t276, t277
movq (t277), t272
cmpq t272, t146
jle
L14:
movq t278, t113
L13:
movq t113, (t147)
L12:
movq (t147), t279
cmpq t280, t279
jne
L40:
jmp L17
L11:
movq t281, (t147)
jmp L12
L18:
addq t282, t283
movq t283, t144
movq t284, t122
movq $-40(t100), t285
movq t285, t143
movq $24(t100), t286
movq t286, t121
movq t121, t120
movq $-24(t121), t288
movq $-8(t100), t289
mulq t290, t291
addq t291, t292
movq (t292), t287
cmpq t287, t143
jge
L22:
movq t293, t122
L21:
movq t122, (t144)
jmp L20
L24:
movq $-8(t100), t294
addq t295, t296
movq t296, $-8(t100)
jmp L23
L39:
jmp L30
L36:
addq $0, t158
ret


.size L1, .-L1
.section .rodata
L2:
.long 0
.string ""
L3:
.long 0
.string ""
L32:
.long 1
.string " "
L33:
.long 1
.string " "
L34:
.long 1
.string "\n"
L35:
.long 1
.string "\n"
