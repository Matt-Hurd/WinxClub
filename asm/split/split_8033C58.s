	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_030033A2
	IMPORT gUnknown_030033A6
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__334dword_803EA68
	IMPORT ModifyPlayerHealth
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT sub_803357C
	IMPORT __call_via_r1
	IMPORT __call_via_r7
	IMPORT __16__rt_udiv
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F654
	IMPORT sub_803F6B4
	IMPORT sub_803FC14
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_8033C58
sub_8033C58
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x58
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08034050
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x40
	str r1, [r4, #0x48]
	ldrh r2, [r0, #0xc]
	movs r3, #0x3c
	bics r2, r3
	movs r3, #0xc0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	bics r2, r3
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	adds r0, r4, #0
	b %1

	thumb_func_start sub_8033CA4
sub_8033CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08034050
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %3
	ldr r0, _08034054
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
3
	ldr r5, _08034058
	movs r6, #0x45
	ldr r0, [r5]
	lsls r6, r6, #5
	adds r0, r6, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %4
	ldr r0, [r5]
	adds r0, r6, r0
	bl sub_80268AC
4
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %5
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
5
	ldr r0, [r4, #0x48]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8033D24
sub_8033D24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803405C
	movs r6, #3
	ldr r1, [r0]
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	lsls r6, r6, #8
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x19
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0, #0x20]
	str r3, [r4, #0x48]
	ldr r0, [r1, #0x20]
	adds r3, #0xc0
	str r0, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #5
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r1, r5, r1
	ldr r1, [r1, #0x20]
	adds r5, r4, #0
	str r1, [r4, #0x40]
	ldr r1, [r3, #0x3c]
	adds r5, #0x40
	ldrh r3, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	bics r3, r6
	lsls r1, r1, #8
	orrs r1, r3
	ldr r3, [r4, #0x34]
	movs r6, #0xf
	lsls r6, r6, #0x16
	bics r3, r6
	lsls r6, r2, #0x1a
	lsrs r6, r6, #0x1c
	lsls r6, r6, #0x16
	orrs r3, r6
	str r3, [r4, #0x34]
	movs r3, #0xc0
	bics r1, r3
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x18
	orrs r1, r2
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x1e
	lsls r2, r2, #1
	adds r2, #3
	lsls r2, r2, #0x1c
	movs r3, #0x3c
	bics r1, r3
	lsrs r2, r2, #0x1a
	orrs r1, r2
	strh r1, [r5, #0xc]
	ldr r0, [r0, #0x30]
	adds r6, r4, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0x1c
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x44]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	strh r0, [r5, #0x12]
	ldr r0, _08034054
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	lsls r7, r2, #7
	bics r1, r7
	str r1, [r0]
	ldr r0, _08034054
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne %7
	movs r2, #0
	movs r1, #0x31
	ldr r0, [r4, #4]
	bl sub_80007A0
	movs r2, #0
	movs r1, #0x13
	lsls r1, r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	b %8
7
	movs r3, #0x16
	ldr r7, _08034060
	muls r1, r3
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r7
	lsls r0, r0, #1
	adds r0, r1, r0
	ldrh r1, [r0, #2]
	ldr r0, [r4, #0x3c]
	movs r2, #0
	bl sub_80007A0
8
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	adds r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1c
	cmp r1, #1
	ldr r0, _08034058
	bne %10
	ldr r1, [r0]
	movs r0, #0x45
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
10
	ldr r0, [r0]
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	b %9

	non_word_aligned_thumb_func_start sub_8033EBA
sub_8033EBA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %11
	movs r1, #0
	bl sub_80401E4
	b %12
11
	movs r1, #1
	bl sub_80401E4
12
	ldr r0, [r4, #0x40]
	movs r1, #0x9c
	ldr r1, [r1, r0]
	movs r7, #0
	cmp r1, #0xf
	beq %13
	cmp r1, #0x10
	bne %17
13
	ldr r1, [r4, #0x34]
	lsls r2, r1, #0x15
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne %15
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne %14
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	b %15
14
	cmp r1, #2
	bne %15
	ldr r0, [r0, #0x7c]
	ldr r1, _08034064
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
15
	ldr r0, _0803405C
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x48]
	bl sub_803357C
16
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldr r2, [r4, #0x34]
	movs r6, #7
	adds r5, r4, #0
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x1d
	adds r5, #0x40
	lsls r6, r6, #8
	cmp r1, #0
	beq %21
	cmp r1, #1
	beq %22
	cmp r1, #2
	bne %20
	ldr r0, [r4, #4]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	movs r3, #0x16
	ldr r6, _08034060
	lsls r2, r1, #0x16
	lsrs r2, r2, #0x1e
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r6
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %24
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %18
	bl sub_8000914
18
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq %19
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r6
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %19
	bl sub_8000914
19
	ldr r7, _08034058
	ldr r0, [r7]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
20
	b %29
21
	ldrh r1, [r5, #0xc]
	lsls r0, r1, #0x16
	lsrs r2, r0, #0x1e
	cmp r2, #2
	bne %25
	ldrh r0, [r5, #0x12]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r5, #0x12]
	cmp r0, #0x78
	bls %25
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1c
	ldr r6, _08034060
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0x2c]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_803FC14
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	beq %23
	movs r2, #0
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_803FC14
	b %23
22
	b %32
23
	strh r7, [r5, #0x12]
	b %29
24
	b %41
	ALIGN
_08034050 DCDU __VTABLE__334dword_803EA68
_08034054 DCDU gUnknown_03003EB8
_08034058 DCDU gUnknown_0300345C
_0803405C DCDU gUnknown_03003458
_08034060 DCDU gUnknown_0300334A
_08034064 DCDU gUnknown_03003454
25
	ldr r0, [r4, #4]
	ldr r3, [r0]
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x1f
	bne %29
	movs r3, #0x16
	ldr r7, _08034338
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r7
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq %27
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %26
	bl sub_8000914
26
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %27
	movs r1, #1
	bl sub_80401E4
27
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r7, r1, #3
	ldr r1, _0803433C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	lsls r2, r0, #1
	adds r1, r7, r1
	ldrh r1, [r1, r2]
	strh r1, [r5, #0x14]
	ldr r2, [r4, #0x34]
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq %30
	cmp r2, #1
	beq %31
	cmp r2, #2
	bne %28
	ldr r1, _08034340
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r1, [r1, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r0, r1, r0
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl sub_803F654
28
	ldr r0, [r4, #0x34]
	bics r0, r6
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
29
	b %37
30
	ldr r2, _08034344
	ldrb r0, [r2, r0]
	bl __16__rt_udiv
	ldr r2, _08034344
	strh r0, [r5, #0xe]
	ldrb r0, [r2]
	ldr r1, _0803433C
	strh r0, [r5, #0x10]
	ldrh r1, [r1, r7]
	bl __16__rt_udiv
	strh r0, [r5, #0x10]
	b %28
31
	ldr r0, [r4, #0x44]
	ldr r7, _08034348
	ldr r1, [r0, #0x70]
	asrs r2, r1, #1
	str r1, [r0, #0x74]
	adds r1, r1, r2
	str r1, [r0, #0x70]
	movs r0, #0x45
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r0, #0x47
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	b %28
32
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x15
	bmi %37
	ldrh r1, [r5, #0x12]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r5, #0x12]
	ldrh r3, [r5, #0x14]
	cmp r1, r3
	bhi %37
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq %34
	cmp r2, #1
	beq %38
	cmp r2, #2
	bne %37
	cmp r1, r3
	beq %33
	movs r1, #0xb6
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bgt %37
33
	ldr r0, [r0, #0x7c]
	ldr r1, _08034340
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
	ldr r0, [r4, #0x40]
	movs r3, #0x14
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r7, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x48]
	bl __call_via_r7
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b %37
34
	ldr r0, _0803434C
	ldr r2, _08034344
	ldr r7, [r0]
	movs r0, #0xac
	ldrb r0, [r0, r7]
	ldrb r2, [r2]
	cmp r0, r2
	bhs %35
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq %36
	bl __16__rt_udiv
	cmp r1, #0
	bne %36
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl ModifyPlayerHealth
	b %36
35
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq %36
	bl __16__rt_udiv
	cmp r1, #0
	bne %36
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl ModifyPlayerHealth
36
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	beq %39
	ldr r0, _0803434C
	ldr r1, [r0]
	adds r1, #0xa0
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	beq %39
	ldrh r1, [r5, #0xc]
	ldr r2, _08034344
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1e
	ldrb r1, [r2, r1]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	cmp r0, r1
	bne %37
	b %39
37
	b %44
38
	b %40
39
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b %44
40
	cmp r1, r3
	bne %44
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b %44
41
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %44
	ldr r6, _08034350
	cmp r0, #0
	beq %42
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #4]
42
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %43
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #0x3c]
43
	ldr r0, _08034354
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
44
	ldr r0, [r4, #4]
	cmp r0, #0
	bne %46
45
	b %16
46
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne %48
	bl sub_803F6B4
	cmp r0, #0x31
	bne %47
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x2c]
	adds r5, r1, #0
	b %49
47
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	b %49
48
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
49
	adds r1, #0x2c
	adds r6, r1, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #4]
	ldrb r3, [r0, #5]
	subs r2, #2
	adds r1, r2, #0
	cmp r2, r3
	beq %50
	bl sub_80401C0
50
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #0x3c]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq %45
	bl sub_80401C0
	b %16
	ALIGN
_08034338 DCDU gUnknown_0300334A
_0803433C DCDU gUnknown_030033A6
_08034340 DCDU gUnknown_03003454
_08034344 DCDU gUnknown_030033A2
_08034348 DCDU gUnknown_0300345C
_0803434C DCDU gPlayerEntity
_08034350 DCDU gUnknown_03003EB8
_08034354 DCDU gUnknown_03003458
	END
