	non_word_aligned_thumb_func_start sub_8020AB6
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08020DAC
	ldrb r0, [r0]
	cmp r0, #0
	beq %138
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %139
138
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
139
	movs r0, #4
	movs r1, #0x9c
	str r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsrs r1, r1, #4
	lsls r1, r1, #4
	lsls r2, r2, #0x15
	bics r1, r2
	str r1, [r0, #0x3c]
	movs r0, #5
	lsls r0, r0, #0xe
	str r0, [r4, #0x70]
	movs r1, #0
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq %140
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %140
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08020DB4
	ldr r0, [r0]
	bl sub_8001432
	ldr r0, [r4, #0x30]
	bl sub_803FC14
140
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8020AB6

