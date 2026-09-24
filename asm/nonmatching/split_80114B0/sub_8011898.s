	thumb_func_start sub_8011898
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08011A40
	ldrh r2, [r0, #8]
	movs r1, #0
	strh r1, [r0, #8]
	ldr r1, _08011A14
	adds r1, #0x24
	ldrh r4, [r1, #0x10]
	lsls r0, r4, #0x1f
	bpl %50
	ldr r0, _08011A44
	ldr r3, [r0, #0x10]
	cmp r3, #0
	bge %47
	ldr r3, _08011A48
	str r3, [r0, #0x10]
	movs r3, #0x11
	lsls r3, r3, #6
	strh r3, [r0, #0x12]
47
	ldr r0, _08011A4C
	ldr r3, _08011A50
	strh r0, [r3, #2]
	ldr r0, _08011A54
	ldr r3, _08011A14
	str r0, [r3, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	beq %50
	ldr r5, _08011A28
48
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r6, r3, r5
	ldrh r3, [r6, #4]
	lsls r7, r3, #0x1f
	bmi %49
	movs r7, #0x10
	orrs r3, r7
	strh r3, [r6, #4]
49
	cmp r0, #0
	bne %48
50
	ldr r0, _08011A58
	ldr r3, _08011A14
	str r0, [r3, #0x10]
	ldr r0, _08011A5C
	str r0, [r3, #0x14]
	ldr r0, _08011A60
	str r0, [r3, #0x18]
	ldr r0, _08011A64
	str r0, [r3, #0xc]
	ldr r0, _08011A40
	strh r2, [r0, #8]
	movs r0, #0
	orrs r0, r4
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x1c]
	bl sub_80114FA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8011898

