	thumb_func_start sub_8030244
sub_8030244
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08030594
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	ldr r4, _08030598
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq %6
5
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne %5
6
	ldr r1, _0803059C
	movs r0, #0
	ldr r2, _080305A0
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0x10
	bics r1, r0
	str r1, [r2]
	movs r5, #0
7
	movs r4, #0
	lsls r0, r5, #3
	adds r6, r0, r7
8
	lsls r0, r4, #2
	adds r1, r6, r0
	ldr r0, _080305A4
	adds r1, #0xff
	adds r1, #0x6d
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %7
	ldrb r0, [r7]
	cmp r0, #0
	bne %10
	bl sub_802383A
	movs r0, #0x10
	bl SetNextGlobalFunction
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
10
	movs r0, #2
	bl SetNextGlobalFunction
	b %9

