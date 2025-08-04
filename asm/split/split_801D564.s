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
	bne %2
	movs r0, #0xa0
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
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
3
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r1, #1
	cmp r1, #5
	str r3, [r2, #0x38]
	blo %3
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
	b %1

	thumb_func_start DefaultScriptGroups__1C
DefaultScriptGroups__1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	movs r5, #0
	cmp r0, #0
	ldr r6, _0801D950
	beq %4
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x2c]
4
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %5
	adds r1, r4, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x30]
5
	str r5, [r4, #0x34]
	movs r5, #0
6
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %7
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
7
	adds r5, #1
	cmp r5, #5
	blo %6
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
	beq %8
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
8
	adds r0, r4, #0
	bl DefaultScriptGroups__1C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq %10
9
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x18]
	str r1, [r4, #0x28]
	bl sub_803DA18
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne %9
10
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r7, #0
	beq %11
	adds r0, r4, #0
	bl sub_803DA18
11
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
	END
