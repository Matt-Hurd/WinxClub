	thumb_func_start sub_8019EE0
sub_8019EE0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl FadeToBlack
	ldr r6, _0801A2C8
	movs r5, #0
1
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %1
	movs r5, #0
2
	lsls r0, r5, #2
	adds r1, r0, r4
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %2
	ldr r7, _0801A2CC
	movs r5, #0
3
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %3
	movs r5, #0
	movs r7, #0x1b
	lsls r7, r7, #6
4
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	blo %4
	movs r0, #0x19
	lsls r0, r0, #6
	adds r1, r4, r0
	ldr r0, [r6]
	bl sub_8000DE6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

