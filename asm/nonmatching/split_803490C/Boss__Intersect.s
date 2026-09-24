	thumb_func_start Boss__Intersect
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r3, #0
	adds r6, r1, #0
	cmp r0, #0xf
	sub sp, #4
	beq %19
	cmp r0, #0x10
	bne %21
19
	movs r0, #0
20
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
21
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq %22
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b %20
22
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne %23
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne %23
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_801F450
23
	movs r0, #0x97
	ldrsb r0, [r0, r6]
	ldr r1, [sp, #0xc]
	adds r1, r0, r1
	ldr r0, [r6, #0x7c]
	subs r1, #2
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r1, #6
	bhs %35
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
24
	DCB 0x03
25
	DCB 0x03
26
	DCB 0x75
27
	DCB 0x07
28
	DCB 0x4D
29
	DCB 0x07
loc_8034b9a
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %39
loc_8034ba2
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0xe
	bmi %34
	cmp r0, #0
	bne %30
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne %34
	b %33
30
	cmp r0, #2
	bne %31
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	bne %34
	b %33
31
	cmp r0, #3
	bne %32
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne %34
	b %33
32
	cmp r0, #1
	bne %34
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne %34
33
	movs r0, #0xaa
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xe
	str r0, [r5, #0x1c]
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %39
34
	ldr r0, _08034D08
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r7
	strb r1, [r0, #6]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %39
loc_8034c2e
	ldr r0, _08034D0C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq %37
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %37
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r2, r2, r0
	strb r2, [r1, #6]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	b %36
35
	b %38
36
	bl __call_via_r1
	b %39
37
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %39
loc_8034c7e
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %39
38
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
39
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt %40
	ldr r2, _08034D10
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq %40
	ldr r0, _08034D08
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _08034D14
	ldr r0, [r0]
	bl sub_8023FE4
	b %41
40
	ldr r1, _08034D08
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _08034D14
	ldr r0, [r0]
	bl sub_8023FE4
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08034D18
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_8034A86
	adds r0, r4, #0
	bl sub_802B0CA
	b %41
	ALIGN
_08034CF4 DCDU 0x0000C000
_08034CF8 DCDU 0x00000000
_08034CFC DCDU 0x00010000
_08034D00 DCDU 0x00000000
_08034D04 DCDU gUnknown_03003454
_08034D08 DCDU gPlayerEntity
_08034D0C DCDU gUnknown_03003458
_08034D10 DCDU gUnknown_03003478
_08034D14 DCDU gUnknown_030034F8
_08034D18 DCDU gUnknown_0300345C
41
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b %20
	thumb_func_end Boss__Intersect
