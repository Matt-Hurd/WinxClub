	thumb_func_start sub_8021CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r6, #0
	str r6, [sp, #0xc]
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	movs r7, #1
	lsls r7, r7, #0x14
	cmp r0, #5
	bne %24
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl %18
	str r6, [r4, #0x78]
18
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne %23
	movs r5, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	cmp r0, r1
	ldr r0, [r4, #0x2c]
	bls %19
	bl sub_803F6E0
	movs r1, #0xa
	subs r0, r1, r0
	b %20
19
	bl sub_803F6E0
	subs r0, #1
20
	cmp r0, #1
	ble %21
	cmp r0, #0xa
	bge %21
	subs r5, r0, #1
21
	lsls r6, r0, #0x11
	ldr r0, [r4, #0x30]
	movs r1, #0
	ldr r2, [r0, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %22
	ldr r1, [r2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
22
	cmp r1, r5
	bls %23
	bl sub_803F898
	ldr r1, _08021E98
	adds r1, r5, r1
	cmp r0, r1
	beq %23
	ldr r0, [r4, #0x30]
	bl sub_800065C
23
	adds r0, r6, r7
	ldr r1, [r4, #0x58]
	ldr r6, [sp, #0xc]
	ldr r2, [r4, #0x5c]
	subs r1, r1, r6
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
24
	ldr r1, _08021E9C
	ldrb r1, [r1]
	cmp r1, #0
	beq %33
	movs r1, #0x25
	lsls r1, r1, #4
	adds r5, r4, r1
	cmp r0, #0xf
	bne %26
	ldrb r0, [r5, #4]
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r5, #4]
	bpl %25
	strb r6, [r5, #4]
25
	movs r3, #4
	ldrsb r0, [r5, r3]
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	lsls r0, r0, #0x10
	adds r0, r0, r7
	subs r0, r2, r0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
26
	cmp r0, #0x10
	bne %27
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r1, r7
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
27
	ldr r0, _08021EA0
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	bne %32
	movs r3, #5
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #4]
	bpl %28
	strb r6, [r5, #4]
	NEGS r0, r0
	strb r0, [r5, #5]
	b %29
28
	cmp r1, #4
	ble %29
	movs r1, #4
	strb r1, [r5, #4]
	NEGS r0, r0
	strb r0, [r5, #5]
29
	movs r3, #4
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls %30
	movs r6, #3
	b %31
30
	cmp r6, #1
	bhs %31
	movs r6, #1
31
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08021E98
	adds r1, r6, r1
	cmp r0, r1
	beq %32
	ldr r0, [r4, #0x30]
	bl sub_800065C
32
	movs r3, #4
	ldrsb r0, [r5, r3]
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r7
	subs r0, r2, r0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
33
	b %34
	ALIGN
_08021E74 DCDU gUnknown_03003EB8
_08021E78 DCDU gUnknown_03003454
_08021E7C DCDU 0x79616C50
_08021E80 DCDU 0x53207265
_08021E84 DCDU 0x70697263
_08021E88 DCDU 0x72472074
_08021E8C DCDU 0x0070756F
_08021E90 DCDU gUnknown_03003468
_08021E94 DCDU gUnknown_03003E88
_08021E98 DCDU 0x000011EF
_08021E9C DCDU gUnknown_03003D20
_08021EA0 DCDU gUnknown_03003E98
34
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r1, r7
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08022198
	cmp r0, r1
	beq %35
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq %35
	cmp r0, #0xed
	beq %35
	ldr r0, [r4, #0x30]
	bl sub_800065C
35
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %36
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
36
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8021CFC

