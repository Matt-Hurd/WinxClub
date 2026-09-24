	thumb_func_start HostileBaseObject__5C
HostileBaseObject__5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802B268
	sub sp, #0xc
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x1c]
	cmp r1, #9
	beq %178
	ldr r1, [r4, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne %178
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %178
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r5, #0x2c]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r2, r0, #1
	strh r2, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #1
	lsls r0, r0, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x14]
178
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
