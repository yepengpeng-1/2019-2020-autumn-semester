.text
.globl L1
.type L1, @function

pushq t100
movq t198, t100
subq $0, t198
L69:
addq t196, t197
movq t197, t195
callq t198

movq t110, t194
movq t194, (t195)
movq t199, $-16(t100)
movq $16(t100), t201
movq $16(t201), t200
movq t200, t104
movq t104, t103
movq $-8(t104), t202
callq t198

movq t110, t191
movq t191, t193
movl $.L3, t203
callq t198

movq t110, t192
cmpq t192, t193
jge
L7:
movq t204, (t190)
L8:
movq (t190), t205
movq t205, t110
L18:
movq $8(t100), t207
movq $16(t207), t206
movq t206, t112
movq t112, t111
movq $-8(t112), t208
movl $.L11, t209
cmpq t209, t208
je
L14:
addq t210, t211
movq t211, t186
movq t212, t115
movq $8(t100), t214
movq $16(t214), t213
movq t213, t114
movq t114, t113
movq $-8(t114), t215
movl $.L12, t216
cmpq t216, t215
je
L17:
movq t217, t115
L16:
movq t115, (t186)
L15:
movq (t186), t218
cmpq t219, t218
jne
L20:
callq t198

callq t198

movq $8(t100), t220
addq t221, t222
movq t222, t183
movq $16(t100), t223
movq t223, t121
movq t121, t120
movq $-8(t121), t224
callq t198

movq t110, t182
movq t182, (t183)
L21:
movq $16(t100), t225
movq t225, t129
movq t129, t128
movq $-8(t129), t226
callq t198

movq t110, t181
cmpq t227, t181
jne
L23:
movq $-8(t100), t228
movq t228, t110
addq t229, t230
movq t230, t173
addq t231, t232
movq t232, t172
callq t198

movq t110, t171
movq t171, (t172)
movq (t172), t234
movq t235, $0(t234)
movq (t172), (t173)
addq t236, t237
movq t237, t170
movq $-8(t100), t238
callq t198

movq t110, t169
movq t169, (t170)
movq $-8(t100), t240
movq $0(t240), t239
cmpq t241, t239
jne
L29:
movq t242, (t168)
L30:
movq (t168), t243
movq t243, t110
movq $16(t100), t244
cmpq t245, t244
je
L38:
addq t246, t247
movq t247, t165
movq $8(t100), t248
cmpq t249, t248
je
L35:
addq t250, t251
movq t251, t164
movq $16(t100), t253
movq $0(t253), t252
movq $8(t100), t255
movq $0(t255), t254
cmpq t254, t252
jl
L32:
addq t256, t257
movq t257, t160
addq t258, t259
movq t259, t159
callq t198

movq t110, t158
movq t158, (t159)
movq (t159), t261
movq $8(t100), t263
movq $0(t263), t262
movq t262, $8(t261)
movq (t159), (t163)
L33:
movq (t163), (t164)
L36:
movq (t164), (t165)
L39:
movq (t165), t264
movq t264, t110
movq $8(t100), t265
cmpq t266, t265
jg
L49:
movq $8(t100), t267
cmpq t268, t267
jl
L59:
addq t269, t270
movq t270, t153
movq $8(t100), t271
cmpq t272, t271
jg
L56:
addq t273, t274
movq t274, t150
movl $.L54, t275
callq t198

movq t110, t149
movq t149, (t152)
L57:
movq (t152), (t154)
L60:
movq $8(t100), t276
cmpq t277, t276
je
L66:
addq t278, t279
movq t279, t146
movq $8(t100), t281
movq $0(t281), t280
callq t198

movq $8(t100), t283
movq $0(t283), t282
callq t198

movl $.L64, t284
callq t198

movq $8(t100), t286
movq $8(t286), t285
callq t198

movq t110, (t148)
L67:
addq t287, t288
movq t288, t145
callq t198

movq t110, t144
movq t144, (t145)
addq t289, t290
movq t290, t143
addq t291, t292
movq t292, t142
callq t198

movq t110, t141
movq t141, (t142)
callq t198

movq t110, (t143)
movq $-40(t100), t294
movq $-24(t100), t293
callq t198

movq t110, t140
callq t198

jmp L68
L6:
addq t295, t296
movq t296, t190
movq t297, t109
movq $16(t100), t299
movq $16(t299), t298
movq t298, t108
movq t108, t107
movq $-8(t108), t300
callq t198

movq t110, t187
movq t187, t189
movl $.L5, t301
callq t198

movq t110, t188
cmpq t188, t189
jle
L10:
movq t302, t109
L9:
movq t109, (t190)
jmp L8
L13:
movq t303, (t186)
jmp L15
L19:
movq $8(t100), t305
movq $16(t305), t304
movq t304, t117
movq t117, t116
addq t306, t307
movq t307, t185
callq t198

movq t110, t184
movq t184, (t185)
jmp L18
L22:
addq t308, t309
movq t309, t180
movq $-8(t100), t310
mulq t311, t312
movq t312, t177
movq $16(t100), t313
movq t313, t133
movq t133, t132
movq $-8(t133), t314
callq t198

movq t110, t176
addq t176, t315
movq t315, t179
movl $.L25, t316
callq t198

movq t110, t178
subq t178, t317
movq t317, (t180)
movq $16(t100), t318
movq t318, t139
movq t139, t138
addq t319, t320
movq t320, t175
callq t198

movq t110, t174
movq t174, (t175)
jmp L21
L28:
addq t321, t322
movq t322, t168
addq t323, t324
movq t324, t167
callq t198

movq t110, t166
movq t166, (t167)
movq (t167), t326
movq $-32(t100), t327
movq t327, $8(t326)
movq (t167), (t168)
jmp L30
L37:
addq t328, t329
movq (t329), (t165)
jmp L39
L34:
addq t330, t331
movq (t331), (t164)
jmp L36
L31:
movq t160, t163
addq t332, t333
movq t333, t162
callq t198

movq t110, t161
movq t161, (t162)
movq (t162), t335
movq $16(t100), t337
movq $0(t337), t336
movq t336, $8(t335)
movq (t162), (t163)
jmp L33
L48:
movq $8(t100), t338
divq t339, t340
callq t198

movq $8(t100), t341
movq $8(t100), t342
divq t343, t344
mulq t345, t346
subq t346, t347
movq t347, t157
movl $.L47, t348
callq t198

movq t110, t156
addq t156, t349
callq t198

movq t110, t155
callq t198

jmp L49
L58:
movq t153, t154
movl $.L52, t350
callq t198

movq $8(t100), t352
subq t352, t353
callq t198

movq t110, (t154)
jmp L60
L55:
movq t150, t152
movq $8(t100), t354
callq t198

movq t110, t151
movq t151, (t152)
jmp L57
L65:
movq t146, t148
movl $.L62, t355
callq t198

movq t110, t147
movq t147, (t148)
jmp L67
L68:
addq $0, t198
ret


.size L1, .-L1
.section .rodata
L2:
.long 1
.string "0"
L3:
.long 1
.string "0"
L4:
.long 1
.string "9"
L5:
.long 1
.string "9"
L11:
.long 1
.string " "
L12:
.long 1
.string "\n"
L24:
.long 1
.string "0"
L25:
.long 1
.string "0"
L26:
.long 1
.string "0"
L27:
.long 1
.string "0"
L40:
.long 1
.string "0"
L41:
.long 1
.string "0"
L42:
.long 1
.string "0"
L43:
.long 1
.string "0"
L44:
.long 1
.string "0"
L45:
.long 1
.string "0"
L46:
.long 1
.string "0"
L47:
.long 1
.string "0"
L51:
.long 1
.string "-"
L52:
.long 1
.string "-"
L53:
.long 1
.string "0"
L54:
.long 1
.string "0"
L61:
.long 1
.string "\n"
L62:
.long 1
.string "\n"
L63:
.long 1
.string " "
L64:
.long 1
.string " "
