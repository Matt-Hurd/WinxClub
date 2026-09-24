	thumb_func_start sub_803D834
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r1, r0, #5
	bmi %41
	movs r0, #1
40
	pop {r3, r4, r5}
	pop {r3}
	bx r3
41
	lsls r1, r0, #6
	bpl %42
	movs r0, #0
	b %40
42
	movs r2, #0x3f
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0x13
	lsls r2, r2, #0x13
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #7
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1a
	lsrs r1, r1, #0x1a
	cmp r1, r3
	str r0, [r4]
	bne %51
	bics r0, r2
	str r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs %51
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
43
	DCB 0x03
44
	DCB 0x1D
45
	DCB 0x03
46
	DCB 0x1D
47
	DCB 0x37
48
	DCB 0x59
loc_803d88a
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne %49
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
49
	adds r0, r5, #0
	bl sub_80047BA
	adds r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
	b %51
loc_803d8be
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne %50
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
50
	adds r0, r5, #0
	bl sub_80047BA
	subs r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
51
	b %54
loc_803d8f2
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne %52
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
52
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	adds r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	subs r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
	b %54
loc_803d936
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne %53
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
53
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	subs r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	adds r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
54
	movs r0, #1
	b %40
	thumb_func_end sub_803D834

