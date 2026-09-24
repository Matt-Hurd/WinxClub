	thumb_func_start sub_801ABFC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl FadeToBlack
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x8d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #0
	bl sub_80050FA
	ldr r7, _0801AEA0
	movs r4, #0
1
	lsls r0, r4, #2
	adds r5, r0, r6
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #0x85
	ldr r0, [r7]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801ABFC

