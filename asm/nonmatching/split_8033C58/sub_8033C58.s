	thumb_func_start sub_8033C58
sub_8033C58
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x58
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08034050
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x40
	str r1, [r4, #0x48]
	ldrh r2, [r0, #0xc]
	movs r3, #0x3c
	bics r2, r3
	movs r3, #0xc0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	bics r2, r3
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	adds r0, r4, #0
	b %1

