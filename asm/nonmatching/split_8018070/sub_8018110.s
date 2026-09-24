	thumb_func_start sub_8018110
	push {r4, lr}
	adds r4, r0, #0
	bne %6
	movs r0, #0x14
	bl __nw__FUi
	adds r4, r0, #0
	bne %6
	adds r0, r4, #0
5
	pop {r4}
	pop {r3}
	bx r3
6
	movs r0, #0
	str r0, [r4, #0x10]
	movs r2, #0
	movs r1, #0
	ldr r0, _08018374
	bl sub_803D984
	movs r1, #1
	lsls r1, r1, #0xe
	str r0, [r4]
	adds r0, r0, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	str r0, [r4, #4]
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r1, r0
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0xff
	adds r0, #1
	bl sub_80108DA
	ldr r0, [r4, #0xc]
	bl sub_801047C
	adds r0, r4, #0
	b %5
	thumb_func_end sub_8018110

