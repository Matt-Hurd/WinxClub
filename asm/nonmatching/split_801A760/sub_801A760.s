	thumb_func_start sub_801A760
sub_801A760
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
1
	ldrb r0, [r5]
	cmp r0, r4
	beq %2
	lsls r0, r4, #3
	adds r6, r0, r5
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	movs r1, #0
	bl sub_80401E4
	movs r1, #0
	ldr r0, [r6, #0x28]
	bl sub_80401E4
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, #0x7c
	movs r2, #0
	add r1, pc, #0x374
	bl sub_80137F8
2
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %1
	movs r3, #0
	movs r0, #0
	movs r1, #0
	lsls r2, r1, #0xa
3
	lsls r1, r0, #3
	adds r4, r1, r5
	adds r4, #0xff
	adds r4, #0xc1
	ldr r1, [r4, #0x24]
	ldrh r6, [r1, #0x26]
	lsls r7, r6, #0x14
	lsrs r7, r7, #0x1e
	cmp r7, r3
	beq %4
	movs r7, #3
	lsls r7, r7, #0xa
	bics r6, r7
	orrs r6, r2
	strh r6, [r1, #0x26]
	ldr r6, [r1]
	movs r7, #0x80
	orrs r6, r7
	str r6, [r1]
	ldr r1, [r4, #0x28]
	movs r6, #3
	ldrh r4, [r1, #0x26]
	lsls r6, r6, #0xa
	bics r4, r6
	orrs r4, r2
	strh r4, [r1, #0x26]
	ldr r4, [r1]
	orrs r4, r7
	str r4, [r1]
4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo %3
	ldr r0, _0801AB0C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	movs r6, #0
5
	movs r4, #0
	lsls r0, r6, #3
	adds r7, r0, r5
6
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _0801AB10
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %6
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %5
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

