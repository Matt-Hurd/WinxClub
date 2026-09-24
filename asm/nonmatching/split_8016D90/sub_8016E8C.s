	thumb_func_start sub_8016E8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08017114
	ldr r0, [r1]
	ldr r1, [r6]
	ldrh r0, [r0, #4]
	adds r1, #0x80
	movs r4, #0
	strb r0, [r1, #4]
17
	ldr r6, _08017114
	movs r7, #1
	ldr r0, [r6]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	cmp r0, r4
	bhi %18
	movs r1, #0
18
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_803FEF8
	cmp r4, #6
	bhs %24
	movs r5, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	str r0, [sp]
19
	ldr r0, _08017114
	movs r7, #1
	ldr r0, [r0]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %20
	movs r1, #0
20
	ldr r0, [sp]
	adds r0, r0, r5
	lsls r6, r0, #2
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x55
	bl sub_803FEF8
	ldr r7, _08017114
	movs r1, #1
	ldr r0, [r7]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %21
	movs r1, #0
21
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x56
	bl sub_803FEF8
	ldr r0, [r7]
	movs r1, #1
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %22
	movs r1, #0
22
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x57
	bl sub_803FEF8
	ldr r0, [r7]
	movs r1, #1
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %23
	movs r1, #0
23
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x58
	bl sub_803FEF8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %19
24
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #7
	blo %17
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8016E8C

