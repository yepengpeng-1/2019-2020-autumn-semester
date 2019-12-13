.text
.globl L1
.type L1, @function

pushq t100
movq t157, t100
subq $0, t157
L42:
movq t152, $-16(t100)
addq t153, t154
movq t154, t151
movq $-8(t100), t156
movq $-8(t100), t155
callq t157

movq t158, t150
movq t150, (t151)
addq t159, t160
movq t160, t149
movq $-8(t100), t162
movq $-8(t100), t161
callq t157

movq t158, t148
movq t148, (t149)
addq t163, t164
movq t164, t147
movq $-8(t100), t170
movq $-8(t100), t171
addq t171, t172
subq t173, t174
movq $-8(t100), t165
movq $-8(t100), t166
addq t166, t167
subq t168, t169
callq t157

movq t158, t146
movq t146, (t147)
addq t175, t176
movq t176, t145
movq $-8(t100), t182
movq $-8(t100), t183
addq t183, t184
subq t185, t186
movq $-8(t100), t177
movq $-8(t100), t178
addq t178, t179
subq t180, t181
callq t157

movq t158, t144
movq t144, (t145)
addq t187, t188
movq t188, t143
movq $8(t100), t189
movq t189, t102
movq t102, t101
movq $-8(t102), t190
subq t191, t192
movq t192, (t143)
movq t193, $-8(t100)
L3:
addq t194, t195
movq t195, t142
movq $8(t100), t196
movq t196, t104
movq t104, t103
movq $-8(t104), t197
subq t198, t199
movq t199, (t142)
movq t200, $-24(t100)
L6:
movq $8(t100), t201
movq t201, t108
movq t108, t107
movq $-40(t108), t203
movq $-8(t100), t204
mulq t205, t206
addq t206, t207
movq (t207), t202
movq $-24(t100), t208
cmpq t208, t202
je
L16:
movl $.L14, t209
movq t209, $-48(t100)
L17:
movq $-48(t100), t210
callq t157

movq $-24(t100), t211
movq (t142), t212
cmpq t212, t211
jl
L5:
movl $.L19, t213
callq t157

movq $-8(t100), t214
movq (t143), t215
cmpq t215, t214
jl
L2:
movl $.L21, t216
callq t157

movq $8(t100), t217
movq t217, t141
movq $16(t100), t218
movq t218, t110
movq t110, t109
movq $-8(t110), t219
cmpq t219, t141
je
L39:
addq t220, t221
movq t221, t138
addq t222, t223
movq t223, t137
movq $16(t100), t224
movq t224, t112
movq t112, t111
movq $-8(t112), t225
subq t226, t227
movq t227, (t137)
movq t228, $-8(t100)
L23:
movq $16(t100), t229
movq t229, t114
movq t114, t113
movq $-24(t114), t231
movq $-8(t100), t232
mulq t233, t234
addq t234, t235
movq (t235), t230
cmpq t236, t230
je
L26:
movq t237, (t136)
L27:
movq (t136), t238
cmpq t239, t238
jne
L31:
movq t240, (t135)
L32:
movq (t135), t241
cmpq t242, t241
jne
L36:
movq $-8(t100), t243
movq (t137), t244
cmpq t244, t243
jl
L22:
movq t245, (t140)
L40:
callq t157

jmp L41
L15:
movl $.L13, t247
movq t247, $-48(t100)
jmp L17
L43:
jmp L6
L44:
jmp L3
L38:
movq t138, t140
callq t157

movq t158, t139
movq t139, (t140)
jmp L40
L25:
addq t248, t249
movq t249, t136
movq t250, t117
movq $16(t100), t251
movq t251, t116
movq t116, t115
movq $-56(t116), t253
movq $-8(t100), t254
movq $8(t100), t255
addq t255, t256
mulq t257, t258
addq t258, t259
movq (t259), t252
cmpq t260, t252
je
L29:
movq t261, t117
L28:
movq t117, (t136)
jmp L27
L30:
addq t262, t263
movq t263, t135
movq t264, t120
movq $16(t100), t265
movq t265, t119
movq t119, t118
movq $-72(t119), t267
movq $-8(t100), t268
addq t269, t270
movq $8(t100), t271
subq t271, t272
mulq t273, t274
addq t274, t275
movq (t275), t266
cmpq t276, t266
je
L34:
movq t277, t120
L33:
movq t120, (t135)
jmp L32
L35:
movq $-24(t122), t278
movq $-8(t100), t279
mulq t280, t281
addq t281, t282
movq t283, (t282)
movq $16(t100), t284
movq t284, t122
movq t122, t121
movq $-24(t122), t285
movq $-8(t100), t286
mulq t287, t288
addq t288, t289
movq t290, (t289)
movq $16(t100), t291
movq t291, t124
movq t124, t123
movq $-56(t124), t292
movq $-8(t100), t293
movq $8(t100), t294
addq t294, t295
mulq t296, t297
addq t297, t298
movq t299, (t298)
movq $16(t100), t300
movq t300, t126
movq t126, t125
movq $-72(t126), t301
movq $-8(t100), t302
addq t303, t304
movq $8(t100), t305
subq t305, t306
mulq t307, t308
addq t308, t309
movq t310, (t309)
movq $16(t100), t311
movq t311, t128
movq t128, t127
movq $-40(t128), t312
movq $8(t100), t313
mulq t314, t315
addq t315, t316
addq t317, t318
movq (t318), (t316)
movq $8(t100), t319
addq t320, t321
callq t157

movq $16(t100), t322
movq t322, t130
movq t130, t129
movq $-24(t130), t323
movq $-8(t100), t324
mulq t325, t326
addq t326, t327
movq t328, (t327)
movq $16(t100), t329
movq t329, t132
movq t132, t131
movq $-56(t132), t330
movq $-8(t100), t331
movq $8(t100), t332
addq t332, t333
mulq t334, t335
addq t335, t336
movq t337, (t336)
movq $16(t100), t338
movq t338, t134
movq t134, t133
movq $-72(t134), t339
movq $-8(t100), t340
addq t341, t342
movq $8(t100), t343
subq t343, t344
mulq t345, t346
addq t346, t347
movq t348, (t347)
jmp L36
L45:
jmp L23
L41:
addq $0, t157
ret


.size L1, .-L1
.section .rodata
L8:
.long 2
.string " O"
L9:
.long 2
.string " ."
L13:
.long 2
.string " O"
L14:
.long 2
.string " ."
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
