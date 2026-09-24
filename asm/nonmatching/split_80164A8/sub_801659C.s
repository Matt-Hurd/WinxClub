	thumb_func_start sub_801659C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r5, [r0, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r6, #8]
	movs r3, #0
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	str r0, [r6, #0x14]
	b %12
11
	ldrh r0, [r5]
	bl maybeGameObjFactory
	ldr r1, [r6, #0x14]
	lsls r2, r4, #2
	str r0, [r1, r2]
	strh r4, [r0, #6]
	adds r4, #1
	lsls r4, r4, #0x10
	ldr r5, [r5, #4]
	lsrs r4, r4, #0x10
12
	cmp r5, #0
	beq %13
	ldrb r0, [r6, #8]
	cmp r0, r4
	bhi %11
13
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq %15
14
	adds r0, r4, #0
	ldr r4, [r4, #4]
	bl sub_803DA18
	cmp r4, #0
	bne %14
15
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_801659C

