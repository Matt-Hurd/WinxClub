	thumb_func_start sub_803F72C
sub_803F72C
	lsls r3, r2, #1
	adds r3, r3, r0
	push {r4, r5}
	adds r4, r3, #0
	adds r3, #0xff
	adds r3, #1
	adds r4, #0xff
	adds r4, #0x81
	ldrh r5, [r3, #0x18]
	ldrh r4, [r4, #0x18]
	adds r5, r5, r1
	cmp r5, r4
	bls %1
	movs r4, #0
	strh r4, [r3, #0x18]
1
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r2, [r0, #0x18]
	ldrh r0, [r3, #0x18]
	adds r2, r2, r0
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x18]
	lsls r1, r0, #0x1e
	beq %2
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1e
	movs r4, #4
	subs r1, r4, r1
	adds r0, r0, r1
	strh r0, [r3, #0x18]
2
	adds r0, r2, #0
	pop {r4, r5}
	bx lr
	ALIGN

