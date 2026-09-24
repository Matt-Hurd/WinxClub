	thumb_func_start sub_801CCA8
sub_801CCA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %16
15
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi %15
16
	pop {r4, r5, r6}
	pop {r3}
	bx r3
