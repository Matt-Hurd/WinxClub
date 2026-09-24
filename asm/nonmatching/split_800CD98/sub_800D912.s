	non_word_aligned_thumb_func_start sub_800D912
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	sub sp, #4
	str r0, [r6, #0x3c]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	str r5, [sp]
	ldr r1, [r4, #8]
	movs r0, #0
	movs r7, #0
	cmp r1, #0
	beq %132
	ldrb r0, [r1]
132
	cmp r0, #0
	bls %136
133
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq %134
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r5, #0x30]
134
	ldr r1, [r4, #8]
	adds r7, #1
	adds r5, #0x58
	movs r0, #0
	cmp r1, #0
	beq %135
	ldrb r0, [r1]
135
	cmp r0, r7
	bhi %133
136
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq %137
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r6, #0x14]
137
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %138
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
138
	ldr r0, _0800DD64
	ldr r0, [r0]
	cmp r0, #0
	beq %139
	bl sub_80025D6
139
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %140
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #8]
140
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq %141
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #0xc]
141
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xff
	adds r1, #0x61
	ldr r0, [sp]
	bl __16__rt_memclr_w
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	str r5, [r0, #0x20]
	str r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r6, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800D912

