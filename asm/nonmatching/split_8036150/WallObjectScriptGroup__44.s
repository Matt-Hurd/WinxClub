	thumb_func_start WallObjectScriptGroup__44
WallObjectScriptGroup__44
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080363C4
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, _080363C8
	ldr r0, [r0, #0x1c]
	ldr r3, [r2]
	movs r1, #0x20
	adds r5, r3, #0
	ands r3, r1
	adds r1, r4, #0
	adds r2, r4, #0
	adds r2, #0x70
	adds r1, #0xa0
	cmp r3, #0
	beq %1
	ldrh r5, [r0, #0x26]
	adds r3, r4, #0
	adds r3, #0xaa
	strh r5, [r3, #6]
	ldrh r5, [r0, #0x22]
	strh r5, [r3, #2]
	ldrh r5, [r0, #0x24]
	strh r5, [r3, #4]
	ldrh r5, [r0, #0x20]
	strh r5, [r3]
	ldrh r6, [r4, #0x26]
	ldrh r7, [r4, #0x22]
	ldrh r3, [r4, #0x24]
	ldrh r5, [r4, #0x20]
	strh r6, [r0, #0x26]
	strh r7, [r0, #0x22]
	strh r3, [r0, #0x24]
	strh r5, [r0, #0x20]
	ldrb r0, [r1, #8]
	NEGS r0, r0
	strb r0, [r2, #0xd]
	b %2
1
	movs r3, #0x40
	ands r5, r3
	beq %2
	ldrh r6, [r1, #0x10]
	ldrh r7, [r1, #0xc]
	ldrh r3, [r1, #0xe]
	ldrh r5, [r1, #0xa]
	strh r6, [r0, #0x26]
	strh r7, [r0, #0x22]
	strh r3, [r0, #0x24]
	strh r5, [r0, #0x20]
	ldrb r0, [r1, #8]
	strb r0, [r2, #0xd]
2
	ldr r2, _080363C8
	movs r5, #1
	ldr r1, [r2]
	lsls r0, r5, #8
	bics r1, r0
	str r1, [r2]
	movs r0, #0
	bl sub_803F110
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _080363C4
	adds r3, r5, #0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

