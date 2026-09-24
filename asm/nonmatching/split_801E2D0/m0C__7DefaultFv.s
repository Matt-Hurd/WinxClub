	non_word_aligned_thumb_func_start m0C__7DefaultFv
m0C__7DefaultFv
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0
	adds r1, #0x60
	ldr r2, [r4, #0x70]
	str r1, [sp, #8]
	ldr r1, [r4, #0x6c]
	adds r5, r4, #0
	adds r6, r4, #0
	adds r6, #0x90
	adds r5, #0x80
	str r1, [sp, #4]
	ldr r7, [r4, #0x68]
	cmp r2, #0
	beq %89
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %89
	cmp r0, r2
	bge %78
	adds r2, r0, #0
78
	subs r0, r0, r2
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1c
	add r0, pc, #0x3A0
	beq %93
	cmp r1, #1
	beq %85
	cmp r1, #2
	beq %94
	cmp r1, #3
	bne %87
	NEGS r3, r2
	str r3, [r4, #0x64]
	ldrb r1, [r6, #8]
	cmp r1, #2
	bne %81
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %79
	cmp r1, #2
	bne %80
79
	movs r0, #0
	str r0, [r4, #0x64]
	str r3, [r4, #0x60]
	b %87
80
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	mov r2, pc
	subs r2, #0xac
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b %87
81
	cmp r1, #0
	bne %84
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %82
	cmp r1, #2
	bne %83
82
	movs r0, #0
	str r0, [r4, #0x64]
	str r2, [r4, #0x60]
	b %87
83
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	mov r2, pc
	subs r2, #0xda
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x60]
	NEGS r0, r0
	str r0, [r4, #0x64]
	b %87
84
	cmp r1, #3
	beq %87
	cmp r1, #1
	bne %87
	str r2, [r4, #0x64]
	b %87
85
	str r2, [r4, #0x64]
	ldrb r1, [r6, #8]
	cmp r1, #2
	bne %90
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %86
	cmp r1, #2
	bne %88
86
	NEGS r0, r2
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
87
	b %105
88
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x308
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x60]
	NEGS r0, r0
	str r0, [r4, #0x64]
	b %105
89
	b %127
90
	cmp r1, #0
	bne %95
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %91
	cmp r1, #2
	bne %92
91
	movs r0, #0
	str r0, [r4, #0x64]
	str r2, [r4, #0x60]
	b %105
92
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x2D8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b %105
93
	b %103
94
	b %96
95
	cmp r1, #3
	bne %105
	NEGS r0, r2
	str r0, [r4, #0x64]
	b %105
96
	NEGS r3, r2
	str r3, [r4, #0x60]
	ldrb r1, [r6, #8]
	cmp r1, #3
	bne %99
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %97
	cmp r1, #2
	bne %98
97
	movs r0, #0
	str r0, [r4, #0x60]
	str r3, [r4, #0x64]
	b %105
98
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x298
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	b %105
99
	cmp r1, #1
	bne %102
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %100
	cmp r1, #2
	bne %101
100
	movs r0, #0
	str r0, [r4, #0x60]
	str r2, [r4, #0x64]
	b %105
101
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x26C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x64]
	NEGS r0, r0
	str r0, [r4, #0x60]
	b %105
102
	cmp r1, #2
	beq %105
	cmp r1, #0
	bne %105
	str r2, [r4, #0x60]
	b %105
103
	str r2, [r4, #0x60]
	ldrb r1, [r6, #8]
	cmp r1, #3
	bne %107
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %104
	cmp r1, #2
	bne %106
104
	NEGS r0, r2
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x60]
105
	b %111
106
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x230
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x64]
	NEGS r0, r0
	str r0, [r4, #0x60]
	b %111
107
	cmp r1, #1
	bne %110
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %108
	cmp r1, #2
	bne %109
108
	movs r0, #0
	str r0, [r4, #0x60]
	str r2, [r4, #0x64]
	b %111
109
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x200
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	b %111
110
	cmp r1, #2
	bne %111
	NEGS r0, r2
	str r0, [r4, #0x60]
111
	ldr r0, [r5, #0x10]
	lsls r1, r0, #0x1a
	bpl %118
	lsls r1, r0, #0x18
	bpl %113
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %112
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
112
	cmp r0, #0
	bge %118
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
113
	lsls r1, r0, #0x17
	bpl %115
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %114
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
	b %118
114
	cmp r0, #0
	bge %118
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
	b %118
115
	lsls r1, r0, #0x16
	bpl %117
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %116
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
116
	cmp r0, #0
	bge %118
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
117
	lsls r0, r0, #0x15
	bpl %118
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %119
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
118
	b %120
119
	cmp r0, #0
	bge %120
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
120
	cmp r7, #0
	bne %121
	movs r0, #0
	b %123
121
	cmp r7, #0
	ble %122
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r7, r0
	bpl %123
	movs r0, #0
	b %123
122
	movs r0, #1
	lsls r0, r0, #0xe
	adds r0, r7, r0
	cmp r0, #0
	ble %123
	movs r0, #0
123
	str r0, [r4, #0x68]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne %124
	b %126
124
	cmp r1, #0
	ble %125
	movs r2, #1
	lsls r2, r2, #0xe
	subs r1, r1, r2
	bpl %126
	movs r1, #0
	b %126
125
	movs r2, #1
	lsls r2, r2, #0xe
	adds r1, r1, r2
	cmp r1, #0
	ble %126
	movs r1, #0
126
	str r1, [r4, #0x6c]
	ldr r1, [sp, #8]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_801E4D0
	b %135
127
	cmp r7, #0
	bne %128
	ldr r1, [sp, #4]
	cmp r1, #0
	beq %135
128
	cmp r7, #0
	bne %129
	movs r0, #0
	b %131
129
	cmp r7, #0
	ble %130
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r7, r0
	bpl %131
	movs r0, #0
	b %131
130
	movs r0, #1
	lsls r0, r0, #0xe
	adds r0, r7, r0
	cmp r0, #0
	ble %131
	movs r0, #0
131
	str r0, [r4, #0x68]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne %132
	b %134
132
	cmp r1, #0
	ble %133
	movs r2, #1
	lsls r2, r2, #0xe
	subs r1, r1, r2
	bpl %134
	movs r1, #0
	b %134
133
	movs r2, #1
	lsls r2, r2, #0xe
	adds r1, r1, r2
	cmp r1, #0
	ble %134
	movs r1, #0
134
	str r1, [r4, #0x6c]
	ldr r1, [sp, #8]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_801E4D0
135
	movs r7, #0
136
	lsls r0, r7, #2
	adds r0, r0, r4
	str r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %143
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne %143
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	blo %137
	ldr r0, _0801EB94
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r1, #0xff
	strb r1, [r0, #1]
	b %138
137
	ldr r0, _0801EB94
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0xff
	strb r1, [r0]
138
	ldrb r0, [r6, #0xa]
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r6, #0xa]
	bne %139
	movs r1, #1
	ldr r0, [r5, #0x14]
	lsls r1, r1, #0xb
	bics r0, r1
	str r0, [r5, #0x14]
139
	ldr r0, _0801EB98
	ldr r2, [r0]
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %142
	ldr r3, _0801EB9C
	movs r1, #3
	mvns r1, r1
	str r2, [r3]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne %140
	movs r3, #0
	movs r1, #0x3c
	ldr r2, _0801EBA0
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
	b %141
	ALIGN
_0801EB84 DCDU 0x0000B504
_0801EB88 DCDU 0x00000000
_0801EB8C DCDU 0x00010000
_0801EB90 DCDU 0x00000000
_0801EB94 DCDU gUnknown_03003458
_0801EB98 DCDU gUnknown_0300346C
_0801EB9C DCDU gUnknown_030033E8
_0801EBA0 DCDU sub_802E4AA
140
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
141
	ldr r0, _0801EF74
	movs r3, #0
	str r3, [r0]
142
	ldr r0, [sp]
	movs r3, #0
	str r3, [r0, #0x38]
143
	adds r7, #1
	cmp r7, #5
	blo %136
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


