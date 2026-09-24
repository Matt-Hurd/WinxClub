	thumb_func_start sub_800088C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08000900
	adds r4, r0, #0
	ldr r0, [r6]
	adds r7, r2, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r2, [r4, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %10
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
10
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %11
	adds r2, r7, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80007A0
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_shift_l
	add r2, pc, #0x28
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
11
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800088C
