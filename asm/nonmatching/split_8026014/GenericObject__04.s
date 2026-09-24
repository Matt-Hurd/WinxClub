	non_word_aligned_thumb_func_start GenericObject__04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	cmp r2, #0x1c
	beq %20
	cmp r2, #0x1f
	beq %21
	cmp r2, #0x26
	bne %22
	ldrh r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
19
	pop {r4}
	pop {r3}
	bx r3
20
	adds r0, r4, #0
	bl sub_80260C8
	b %19
21
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne %19
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b %19
22
	adds r0, r4, #0
	bl m04__7DefaultFv
	b %19
	thumb_func_end GenericObject__04

