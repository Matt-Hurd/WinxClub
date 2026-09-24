	thumb_func_start sub_80175D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080177A8
	adds r6, r1, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq %8
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
8
	movs r4, #0
9
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x18]
	bl __da__FPv
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	blo %9
	ldr r0, _080177A0
	ldr r1, _080177A4
	str r0, [r5]
	movs r0, #0
	str r0, [r1]
	cmp r6, #0
	beq %10
	adds r0, r5, #0
	bl sub_803DA18
10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_80175D4

