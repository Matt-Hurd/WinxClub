	thumb_func_start sub_800BD7C
sub_800BD7C
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0x1f
	lsls r4, r4, #6
	adds r2, r0, r4
	ldrb r2, [r2, #0xa]
	ldr r5, _0800BFFC
	lsls r3, r2, #7
	adds r3, r3, r0
	adds r6, r3, r5
	ldrb r3, [r6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	cmp r3, r1
	bhs %17
16
	adds r2, r0, r2
	adds r2, r2, r4
	ldrb r2, [r2, #2]
	lsls r3, r2, #7
	adds r3, r3, r0
	adds r6, r3, r5
	ldrb r3, [r6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	cmp r3, r1
	blo %16
17
	movs r5, #1
	movs r3, #8
	cmp r1, #8
	bhs %23
18
	adds r4, r6, r5
	ldrb r7, [r4]
	lsls r4, r7, #0x1d
	lsrs r4, r4, #0x1d
	cmp r4, r1
	bhs %19
	lsls r5, r5, #1
	adds r5, #1
	b %22
19
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x1d
	cmp r7, r1
	bhs %20
	lsls r5, r5, #1
	b %22
20
	cmp r4, r7
	bhi %21
	lsls r5, r5, #1
	b %22
21
	lsls r5, r5, #1
	adds r5, #1
22
	subs r3, #1
	cmp r3, r1
	bhi %18
23
	movs r4, #8
	subs r4, r4, r3
	movs r3, #1
	lsls r3, r4
	subs r3, r5, r3
	subs r4, r1, #1
	lsls r3, r4
	lsls r2, r2, #7
	adds r4, r2, r3
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl sub_800BCE4
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

