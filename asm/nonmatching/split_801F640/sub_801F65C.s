	thumb_func_start sub_801F65C
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	movs r7, #0
2
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x38]
	cmp r0, #0
	beq %3
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	str r7, [r6, #0x38]
3
	adds r5, #1
	cmp r5, #5
	blo %2
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %4
	movs r1, #0
	bl sub_80401E4
4
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %5
	movs r1, #1
	bl sub_80401E4
5
	ldr r0, _0801F788
	ldr r5, [r0]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	lsls r0, r6, #1
	adds r1, r0, r5
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_8017862
	lsls r0, r6, #2
	movs r1, #9
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r0, r0, r1
	str r7, [r0, #0x18]
	ldr r0, [r4, #0x7c]
	movs r1, #0xff
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r4, #0x7c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801F65C

