	thumb_func_start sub_80103EC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r6, #0xb
	strb r6, [r0, #4]
	movs r5, #0
	ldr r0, _0801068C
	adds r7, r1, #0
	movs r1, #0x90
	str r5, [r4, #0x58]
	str r5, [r4, #0x60]
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #0x1b
	lsls r0, r0, #6
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r0, r4, r0
	str r7, [r0, #0x14]
	adds r1, r4, r1
	strb r6, [r1, #1]
	ldr r2, [r4, #0x5c]
	movs r3, #0x6f
	lsls r3, r3, #4
	adds r3, r4, r3
	str r2, [r0, #0x18]
	strb r6, [r3]
	str r2, [r0, #0x34]
	ldr r2, _08010690
	str r5, [r0, #0x38]
	str r2, [r0, #0x3c]
	movs r2, #7
	lsls r2, r2, #8
	adds r2, r4, r2
	str r5, [r2]
	str r5, [r2, #4]
	str r5, [r2, #8]
	str r5, [r2, #0xc]
	str r5, [r4, #0x7c]
	movs r2, #1
	strb r2, [r1, #0xc]
	strb r5, [r1, #0xd]
	movs r2, #0xff
	strb r2, [r1, #0xe]
	strb r5, [r1, #0xf]
	ldr r1, _08010694
	str r1, [r0, #0x20]
	str r5, [r0, #0x28]
	str r5, [r0, #0x2c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80103EC

