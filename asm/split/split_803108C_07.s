	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT rand
	IMPORT sub_80003F4
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8002004
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_8028C2E

	thumb_func_start Critter__44

Critter__44
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r5, r0, #0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne %11
	ldr r0, [r5, #0x7c]
	ldr r7, _080313F4
	lsls r1, r0, #8
	lsrs r0, r1, #0x18
	beq %6
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	ldr r0, [r7]
	lsls r1, r1, #2
	adds r3, r2, r0
	movs r2, #0xb
	lsls r2, r2, #7
	adds r2, r3, r2
	ldrh r3, [r2, #0x18]
	adds r0, r1, r0
	movs r1, #9
	lsrs r3, r3, #1
	lsls r3, r3, #1
	strh r3, [r2, #0x18]
	movs r2, #0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r2, [r0, #0x18]
6
	ldr r1, _080313D8
	ldr r0, [r6, #4]
	movs r3, #1
	ands r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #0xc]
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r1, r3, #2
	bics r0, r1
	str r0, [r6, #0xc]
	lsrs r0, r1, #3
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	ldr r4, [r5, #0x2c]
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bpl %7
	ldr r0, _080313F8
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r4, #0x2c]
	ldr r2, [r0]
	add r3, sp, #0
	subs r1, r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r3]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	b %8
7
	ldr r0, [r4, #0x2c]
	add r3, sp, #0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r0, [r3]
	strh r1, [r3, #2]
8
	ldr r0, [r5, #0x2c]
	adds r4, r5, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r4, #0xa0
	str r0, [r4, #4]
	str r1, [r4]
	ldr r0, [r7]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x58]
	ldr r1, [r6, #0x20]
	cmp r0, r1
	ble %9
	add r3, sp, #0
	ldrh r0, [r3]
	NEGS r0, r0
	strh r0, [r4, #0x12]
	b %10
9
	add r3, sp, #0
	ldrh r0, [r3]
	movs r1, #0xf0
	subs r0, r1, r0
	strh r0, [r4, #0x12]
10
	add r3, sp, #0
	ldrh r0, [r3, #2]
	movs r1, #0xa
	subs r0, r1, r0
	strh r0, [r4, #0x10]
	bl rand
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b %12
11
	b %23
12
	ldrh r1, [r4, #0x10]
	movs r3, #0x12
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble %13
	bl rand
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	b %14
13
	bl rand
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	subs r0, r1, r0
	strh r0, [r4, #0x12]
14
	ldr r7, _080313FC
	ldr r6, [r5, #0x2c]
	ldr r0, [r7]
	ldr r2, [r6, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %15
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
15
	lsls r0, r1, #0x10
	ldrh r1, [r5, #8]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %16
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
16
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	ldr r6, [r5, #0x2c]
	movs r3, #1
	ldrh r2, [r6, #0x28]
	lsls r3, r3, #0xc
	lsrs r1, r0, #0x1f
	lsls r1, r1, #0xc
	bics r2, r3
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	movs r4, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt %20
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt %17
	movs r2, #0xf
	ldr r1, [r6, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge %17
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt %17
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt %18
17
	lsls r0, r0, #0x16
	bmi %20
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r4
	str r0, [r6]
	b %20
18
	lsls r0, r0, #0x16
	bpl %19
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
19
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
20
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %21
	bl sub_8000914
21
	ldr r1, [r5, #0x2c]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq %22
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
22
	ldr r0, _08031400
	ldr r1, [r0]
	movs r0, #0x4b
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
23
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_080313D8 DCDU 0xF000FFFF
_080313F4 DCDU gUnknown_03003454
_080313F8 DCDU gUnknown_03003EA4
_080313FC DCDU gUnknown_03003EA0
_08031400 DCDU gUnknown_0300345C

	END
