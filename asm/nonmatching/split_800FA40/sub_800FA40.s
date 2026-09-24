	thumb_func_start sub_800FA40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #8
	bl sub_800FC76
	cmp r0, #0
	bne %2
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
2
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x74]
	adds r2, r0, #0
	str r1, [r4, #0x70]
	lsls r1, r1, #7
	adds r1, r1, r2
	lsls r2, r1, #2
	adds r0, r5, #0
	adds r2, r2, r1
	adds r0, #0x14
	lsls r2, r2, #5
	str r0, [r4, #0x78]
	adds r1, r4, #0
	movs r5, #0
	adds r1, #0x80
	str r2, [r4, #0x7c]
	strh r5, [r1, #4]
	str r0, [r1, #8]
	str r2, [r1]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #9
	ldr r0, [r4, #0x78]
	adds r2, r2, r1
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x6c]
	adds r0, r0, r1
	str r5, [r0, #0x1c]
	movs r0, #1
	b %1
	thumb_func_end sub_800FA40

