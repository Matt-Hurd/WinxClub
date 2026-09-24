	thumb_func_start sub_803D680
sub_803D680
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #4
	add r2, sp, #0x28
	ldm r2!, {r0, r2}
	adds r6, r3, #0
	ldr r3, [r4]
	movs r5, #0x1f
	lsls r5, r5, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r3, r5
	orrs r0, r3
	movs r3, #0x3f
	lsls r3, r3, #0xd
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0xd
	bics r0, r3
	orrs r0, r2
	lsrs r0, r0, #3
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80046EE
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs %28
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
22
	DCB 0x02
23
	DCB 0x12
24
	DCB 0x24
25
	DCB 0x34
26
	DCB 0x46
27
	DCB 0x59
loc_803d6d2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %28
loc_803d6f2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %28
loc_803d716
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %28
loc_803d736
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
28
	b %29
loc_803d75a
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r7, r0, r6
	adds r1, r7, #0
	adds r2, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r7, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %29
loc_803d780
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r2, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
29
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs %36
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
30
	DCB 0x02
31
	DCB 0x14
32
	DCB 0x02
33
	DCB 0x14
34
	DCB 0x14
35
	DCB 0x02
loc_803d7ba
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	adds r2, r0, r2
	cmp r2, #0x10
	bls %36
	movs r2, #0x10
	subs r0, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
	b %36
loc_803d7de
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	subs r2, r0, r2
	bpl %36
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r4]
36
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #4
	beq %37
	cmp r0, #5
	bne %38
37
	adds r0, r5, #0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0xc]
	bl sub_8004784
	b %39
38
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_8004784
39
	movs r1, #0x3f
	ldr r0, [r4]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	bics r0, r1
	str r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

