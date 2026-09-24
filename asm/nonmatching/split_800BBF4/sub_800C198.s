	thumb_func_start sub_800C198
sub_800C198
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	lsrs r1, r1, #7
	adds r3, r2, #0
	ldr r2, _0800C454
	lsls r1, r1, #7
	adds r1, r1, r0
	adds r1, r1, r2
	movs r2, #8
	subs r5, r2, r3
	movs r2, #1
	lsls r2, r5
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	subs r5, r3, #1
	lsrs r4, r5
	adds r4, r2, r4
	movs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	bl sub_800BCE4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

