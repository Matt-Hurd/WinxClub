	non_word_aligned_thumb_func_start WallObjectScriptGroup__48
	push {r3, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x14
	beq %21
	cmp r3, #0x1f
	bne %22
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge %19
	NEGS r1, r1
19
	adds r0, #0xa0
	strb r1, [r0, #8]
	movs r0, #0
	strb r0, [r2, #0xc]
20
	add sp, #4
	pop {r3}
	bx r3
21
	ldr r1, [r2, #4]
	strh r1, [r0, #0x1a]
	ldr r1, [r2, #4]
	strh r1, [r0, #0x18]
	b %20
22
	bl Dying__7DefaultFv
	b %20
	thumb_func_end WallObjectScriptGroup__48
