	thumb_func_start sub_803D5A4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _0803D664
	adds r5, r2, #0
	movs r7, #0
	sub sp, #0x1c
	strh r7, [r1, #0xa]
	ldr r1, _0803D668
	str r7, [r1]
	str r7, [r1, #4]
	bl sub_803D4A8
	adds r4, r0, #0
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0x10]
	NEGS r0, r0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	str r6, [sp, #4]
	str r5, [sp, #0xc]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	cmp r5, #0
	beq %20
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	ldr r1, [sp, #4]
	bl __call_via_r2
	adds r5, r0, #0
	movs r6, #0
	cmp r0, #0
	beq %19
	adds r3, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [r4]
	adds r6, r0, #0
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl __call_via_r3
19
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	ldr r1, [sp, #0x14]
	bl __call_via_r3
	cmp r5, #0
	beq %20
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
20
	adds r0, r4, #0
	beq %21
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
21
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803D664 DCDU REG_TM0CNT
_0803D668 DCDU gUnknown_030033F4
	thumb_func_end sub_803D5A4

