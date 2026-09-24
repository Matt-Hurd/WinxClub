	thumb_func_start sub_801099C
sub_801099C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r6, #0
	movs r4, #0
	cmp r1, #0
	ldr r5, [r0, #4]
	bls %2
1
	ldr r0, _08010D58
	movs r3, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x10
	lsls r2, r0, #0x13
	adds r6, r1, r6
	adds r1, r5, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r5, r0, r1
	adds r4, #1
	cmp r4, r7
	blo %1
2
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

