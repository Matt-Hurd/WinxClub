	non_word_aligned_thumb_func_start sub_800B8CE
	movs r1, #0xbd
	lsls r1, r1, #4
	adds r2, r0, r1
	movs r1, #0x13
	lsls r1, r1, #8
	adds r1, r0, r1
	push {r4}
	str r2, [r1, #0x10]
	movs r2, #0xc5
	lsls r2, r2, #4
	adds r2, r0, r2
	str r2, [r1, #0x14]
	movs r1, #0xcd
	lsls r1, r1, #5
	adds r1, r0, r1
	ldrb r1, [r1, #0xd]
	movs r4, #0
	cmp r1, #0
	beq %14
	ldr r1, _0800BBB8
	adds r1, r0, r1
	movs r2, #0x1f
13
	strb r4, [r1, #0xb]
	adds r1, #0xc
	subs r2, #1
	bhs %13
14
	movs r1, #3
	lsls r1, r1, #0xb
	adds r1, r0, r1
	str r4, [r1, #0x18]
	movs r1, #0x33
	lsls r1, r1, #7
	adds r0, r0, r1
	str r4, [r0, #0x24]
	pop {r4}
	bx lr
	thumb_func_end sub_800B8CE

