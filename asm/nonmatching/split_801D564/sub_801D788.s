	thumb_func_start sub_801D788
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r1, #0x14]
	adds r4, r1, #0
	ldr r5, _0801D954
	cmp r0, #1
	bne %12
	ldr r0, _0801D958
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r7, #2
	adds r3, r7, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	ldr r0, _0801D958
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	movs r1, #0
	str r1, [r0, #8]
	str r7, [r0, #4]
	movs r2, #0
	str r2, [sp]
	adds r3, r7, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	ldr r0, _0801D958
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r7, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	ldr r0, _0801D958
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r2, #0
	str r2, [r0, #8]
	str r2, [sp]
	adds r2, r0, #0
	movs r3, #2
	movs r1, #1
	ldr r0, [r5]
	bl sub_8017A0A
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	lsls r6, r1, #0x14
	lsrs r6, r6, #0x14
	lsls r0, r0, #9
	lsrs r7, r0, #0x13
	ldr r0, _0801D958
	movs r2, #0
	ldrh r5, [r4, #0x10]
	ldr r0, [r0]
	movs r1, #0x10
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [r0, #4]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	strh r7, [r0, #0xc]
	movs r7, #2
	adds r3, r7, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r5, _0801D954
	movs r1, #3
	ldr r0, [r5]
	bl sub_8017A0A
	movs r2, #0
	ldr r0, _0801D958
	b %13
12
	b %14
13
	ldr r0, [r0]
	movs r1, #4
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r7, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	b %16
14
	cmp r0, #2
	bne %15
	movs r3, #0xfd
	lsls r3, r3, #5
	movs r2, #0
	add r1, pc, #0xB0
	ldr r0, [r5]
	bl sub_803FC68
	str r6, [sp]
	movs r3, #1
	adds r2, r0, #0
	ldrh r1, [r4, #0x10]
	ldr r0, [r5]
	bl sub_8017884
	b %16
15
	cmp r0, #3
	bne %16
	ldr r1, [r6]
	adds r0, r6, #0
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	adds r1, r4, #0
	bl __call_via_r2
16
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge %17
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b %18
17
	cmp r0, #0
	ble %18
	ldrh r0, [r4, #8]
	movs r1, #1
	bl sub_803FEF8
18
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge %19
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b %20
19
	cmp r0, #0
	ble %20
	ldrh r0, [r4, #0xa]
	movs r1, #1
	bl sub_803FEF8
20
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge %21
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b %22
	ALIGN
_0801D92C DCDU __VTABLE__342Default
_0801D930 DCDU 0xFF8007FF
_0801D934 DCDU 0xFF8003FF
_0801D938 DCDU 0x8007FFFF
_0801D93C DCDU 0xFFF007FF
_0801D940 DCDU 0xE00FFFFF
_0801D944 DCDU gUnknown_03003458
_0801D948 DCDU 0x0000FFFF
_0801D94C DCDU 0xF000FFFF
_0801D950 DCDU gUnknown_03003EB8
_0801D954 DCDU gUnknown_03003454
_0801D958 DCDU gUnknown_03003E88
_0801D95C DCDU 0x72616843
_0801D960 DCDU 0x65746361
_0801D964 DCDU 0x72542072
_0801D968 DCDU 0x65676769
_0801D96C DCDU 0x63532072
_0801D970 DCDU 0x74706972
_0801D974 DCDU 0x6F724720
_0801D978 DCDU 0x00007075
21
	cmp r0, #0
	ble %22
	ldrh r0, [r4, #0xc]
	movs r1, #1
	bl sub_803FEF8
22
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge %24
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
23
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
24
	cmp r0, #0
	ble %23
	ldrh r0, [r4, #0xe]
	movs r1, #1
	bl sub_803FEF8
	b %23
	thumb_func_end sub_801D788
