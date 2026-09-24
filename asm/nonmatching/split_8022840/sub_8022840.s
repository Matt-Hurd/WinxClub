	thumb_func_start sub_8022840
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl FadeToBlack
	ldr r6, _08022C28
	movs r4, #0
1
	lsls r0, r4, #2
	adds r1, r0, r5
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %1
	movs r4, #0
2
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %2
	movs r4, #0
	movs r7, #0xbb
	lsls r7, r7, #2
3
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %3
	movs r4, #0
4
	lsls r0, r4, #3
	adds r7, r0, r5
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #3
	lsls r0, r0, #8
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	lsls r0, r4, #2
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r5
	adds r1, r0, r1
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8022840

