	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__342Default
	IMPORT sub_8000DE6
	IMPORT sub_8017444
	IMPORT sub_8017450
	IMPORT sub_8017862
	IMPORT sub_8017884
	IMPORT sub_8017A0A
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F72C
	IMPORT sub_803FC68
	IMPORT sub_803FEF8

	thumb_func_start Init_and_add_some_object
Init_and_add_some_object
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _0801D57C
	movs r0, #0xa0
	bl __nw__FUi
	adds r4, r0, #0
	bne _0801D57C
	adds r0, r4, #0
_0801D576
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0801D57C
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _0801D92C
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	movs r0, #1
	lsls r0, r0, #0x10
	str r1, [r4, #0x30]
	str r0, [r4, #0x70]
	str r1, [r4, #0x34]
	str r1, [r4, #0x74]
	adds r0, r4, #0
	adds r0, #0x70
	str r1, [r4, #0x78]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	ldr r0, [r4, #0x7c]
	movs r2, #0xff
	lsls r2, r2, #0x10
	bics r0, r2
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x18
	movs r3, #7
	lsls r3, r3, #0x1c
	adds r0, r0, r2
	bics r0, r3
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r3, [r0]
	movs r5, #2
	lsrs r3, r3, #1
	lsls r3, r3, #1
	bics r3, r5
	movs r5, #4
	movs r6, #0xff
	lsls r6, r6, #3
	orrs r3, r5
	bics r3, r6
	ldr r6, _0801D930
	ands r3, r6
	lsrs r6, r2, #1
	bics r3, r6
	bics r3, r2
	str r3, [r0]
	ldr r2, [r0, #4]
	movs r3, #0xff
	lsrs r2, r2, #8
	lsls r2, r2, #8
	lsls r3, r3, #8
	bics r2, r3
	str r2, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _0801D934
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	ands r2, r3
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	lsls r3, r5, #0xa
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	orrs r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	orrs r2, r3
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	ldr r3, _0801D938
	ands r2, r3
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x10]
	movs r3, #0x20
	lsrs r2, r2, #5
	lsls r2, r2, #5
	adds r2, #5
	bics r2, r3
	ldr r3, _0801D93C
	ands r2, r3
	ldr r3, _0801D940
	ands r2, r3
	str r2, [r0, #0x10]
	ldr r2, [r0, #0x14]
	lsls r3, r5, #9
	lsrs r2, r2, #0xb
	lsls r2, r2, #0xb
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xc
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	lsls r3, r5, #0x10
	orrs r2, r3
	str r2, [r0, #0x14]
	adds r2, r4, #0
	adds r2, #0x90
	mvns r3, r1
	strb r3, [r2, #7]
	strb r3, [r2, #8]
	strb r1, [r2, #9]
	strb r1, [r2, #0xa]
	str r5, [r0, #0x1c]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r1, [r4, #0x68]
	str r1, [r4, #0x6c]
	movs r3, #0
_0801D66A
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r1, #1
	cmp r1, #5
	str r3, [r2, #0x38]
	blo _0801D66A
	ldr r1, _0801D944
	ldr r2, [r1]
	movs r1, #5
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r5, [r1, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r2, r5, r2
	str r4, [r2, #0x20]
	ldr r2, [r1, #0x1c]
	movs r5, #0xfe
	adds r6, r2, #0
	adds r2, #2
	ands r2, r5
	bics r6, r5
	orrs r2, r6
	str r2, [r1, #0x1c]
	ldr r1, _0801D948
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x22]
	strh r3, [r4, #0x24]
	strh r1, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #0
	stm r1!, {r2, r3}
	stm r1!, {r2, r3}
	stm r1!, {r2, r3}
	adds r1, #0x30
	stm r1!, {r2, r3}
	ldr r1, [r0, #4]
	ldr r2, _0801D94C
	ands r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _0801D576

	thumb_func_start DefaultScriptGroups__1C
DefaultScriptGroups__1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	movs r5, #0
	cmp r0, #0
	ldr r6, _0801D950
	beq _0801D6DE
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x2c]
_0801D6DE
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0801D6F0
	adds r1, r4, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x30]
_0801D6F0
	str r5, [r4, #0x34]
	movs r5, #0
_0801D6F4
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801D708
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
_0801D708
	adds r5, #1
	cmp r5, #5
	blo _0801D6F4
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start GameObj__ctor
GameObj__ctor
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801D92C
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq _0801D754
	ldr r1, _0801D954
	lsrs r6, r0, #0x18
	ldr r5, [r1]
	lsls r0, r6, #1
	adds r1, r0, r5
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_8017862
	lsls r1, r6, #2
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r5
	movs r0, #0
	adds r1, r1, r2
	str r0, [r1, #0x18]
_0801D754
	adds r0, r4, #0
	bl DefaultScriptGroups__1C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0801D770
_0801D760
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x18]
	str r1, [r4, #0x28]
	bl sub_803DA18
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0801D760
_0801D770
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r7, #0
	beq _0801D782
	adds r0, r4, #0
	bl sub_803DA18
_0801D782
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801D788
sub_801D788
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r1, #0x14]
	adds r4, r1, #0
	ldr r5, _0801D954
	cmp r0, #1
	bne _0801D87A
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
	b _0801D87C
_0801D87A
	b _0801D89E
_0801D87C
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
	b _0801D8D2
_0801D89E
	cmp r0, #2
	bne _0801D8C0
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
	b _0801D8D2
_0801D8C0
	cmp r0, #3
	bne _0801D8D2
	ldr r1, [r6]
	adds r0, r6, #0
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	adds r1, r4, #0
	bl __call_via_r2
_0801D8D2
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D8E8
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _0801D8F4
_0801D8E8
	cmp r0, #0
	ble _0801D8F4
	ldrh r0, [r4, #8]
	movs r1, #1
	bl sub_803FEF8
_0801D8F4
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D90A
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _0801D916
_0801D90A
	cmp r0, #0
	ble _0801D916
	ldrh r0, [r4, #0xa]
	movs r1, #1
	bl sub_803FEF8
_0801D916
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D97C
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _0801D988
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
_0801D97C
	cmp r0, #0
	ble _0801D988
	ldrh r0, [r4, #0xc]
	movs r1, #1
	bl sub_803FEF8
_0801D988
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D9A2
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
_0801D99C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801D9A2
	cmp r0, #0
	ble _0801D99C
	ldrh r0, [r4, #0xe]
	movs r1, #1
	bl sub_803FEF8
	b _0801D99C
	END
