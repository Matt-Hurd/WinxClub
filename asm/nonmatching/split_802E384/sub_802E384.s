	thumb_func_start sub_802E384
sub_802E384
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl %1
	ldr r1, [r4, #0x14]
	adds r0, r4, #0
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	adds r0, #0x1c
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	adds r1, r2, #0
	movs r2, #1
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r2, [r4, #4]
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_803FF24
1
	pop {r4}
	pop {r3}
	bx r3

