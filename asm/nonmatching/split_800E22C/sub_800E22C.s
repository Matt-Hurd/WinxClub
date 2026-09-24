	thumb_func_start sub_800E22C
sub_800E22C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800E4A8
	adds r4, r1, #0
	movs r3, #0
	movs r2, #0x48
	subs r1, r5, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0, #4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x16
	strh r0, [r4]
	strh r1, [r4, #2]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

