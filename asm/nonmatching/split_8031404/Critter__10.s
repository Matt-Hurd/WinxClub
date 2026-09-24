	thumb_func_start Critter__10
Critter__10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x28]
	sub sp, #8
	adds r1, r0, #0
	beq %3
	movs r0, #0x5a
	asrs r1, r1, #0x10
	cmp r1, #0x5a
	bge %1
	adds r0, r1, #0
1
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0xb2
	ldrsh r0, [r0, r4]
	ldr r6, [r5, #0x28]
	muls r0, r6
	bl sub_8040528
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x5c]
	ldr r0, [r5, #0x2c]
	adds r1, r6, r0
	str r1, [r5, #0x28]
	movs r1, #5
	lsls r1, r1, #0xe
	cmp r0, r1
	bge %2
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x2c]
2
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq %4
	movs r2, #0
	str r2, [r4, #0x58]
	str r2, [r4, #0x5c]
	str r2, [r5, #0x28]
	ldr r3, [r1, #0x2c]
	ldr r6, [r1, #0x30]
	subs r3, r2, r3
	subs r2, r2, r6
	ldr r6, [r1, #0x34]
	adds r0, r1, #0
	adds r6, r6, r3
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	adds r0, #0x34
	adds r6, r6, r2
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r3, r6, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b %4
3
	adds r0, r4, #0
	bl m10__7DefaultFv
4
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne %5
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r1, r0, #0x1f
	beq %5
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %5
	bl rand
	lsls r0, r0, #0x19
	bne %5
	ldr r0, _0803156C
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl __16_ll_shift_l
	add r2, pc, #0x7C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	bl sub_8000914
5
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

