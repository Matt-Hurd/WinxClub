	non_word_aligned_thumb_func_start sub_8036D52
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x41
	bne %4
	movs r2, #3
	movs r1, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x6a
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x64
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x46
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x63
	movs r1, #0xa8
	strh r0, [r1, r4]
	movs r1, #0xff
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x8b
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r1, #0
	movs r2, #5
	lsls r2, r2, #0x12
	str r1, [r4, #0x70]
	str r2, [r5, #0x24]
	ldr r2, [r5, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080370FC
	adds r0, #0x32
	ands r0, r2
	movs r2, #9
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #0x1e
	adds r4, #0x70
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xc]
4
	add sp, #0x1c
	pop {r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8036D52

