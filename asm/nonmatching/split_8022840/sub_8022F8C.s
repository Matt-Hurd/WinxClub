	thumb_func_start sub_8022F8C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08023374
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	movs r0, #0xd5
	lsls r0, r0, #2
	ldr r6, _08023378
	adds r1, r5, r0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #4
	ldr r0, [r6]
	bl sub_8000DE6
	movs r4, #0
42
	lsls r0, r4, #3
	adds r7, r0, r5
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #0xd9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	lsls r0, r4, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r1, r0, r1
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %42
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8022F8C

