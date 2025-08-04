	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D1C
	IMPORT gUnknown_03003D34
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_08051438
	IMPORT gUnknown_0805144C
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800EF2A
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_8013B9C
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT FadeToImage
	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction
	IMPORT sub_8018C48
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4


	thumb_func_start sub_8034D98
sub_8034D98
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08035180
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	ldr r4, _08035184
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq %2
1
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne %1
2
	ldr r4, _08035188
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	movs r0, #0xff
	adds r0, #0xed
	ldr r0, [r0, r6]
	cmp r0, #0
	beq %3
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r4]
	bl sub_8000DE6
3
	movs r5, #0
4
	lsls r0, r5, #2
	adds r4, r0, r6
	movs r0, #0xff
	adds r0, #0xf1
	ldr r0, [r0, r4]
	cmp r0, #0
	beq %5
	adds r1, r4, #0
	ldr r0, _08035188
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
5
	movs r0, #1
	lsls r0, r0, #9
	adds r7, r4, r0
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq %6
	movs r0, #0x23
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_8000DE6
6
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq %7
	movs r0, #0x21
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_8000DE6
7
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034E4A
sub_8034E4A
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x25
	lsls r0, r0, #4
	adds r4, r5, r0
	movs r3, #0
	ldrsb r0, [r4, r3]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bpl %8
	adds r1, r0, #0
	b %9
8
	ldrb r2, [r4, #1]
	cmp r2, r1
	bgt %9
	adds r1, r0, #0
9
	cmp r0, r1
	beq %10
	strb r1, [r4]
	movs r3, #0
	ldrsb r0, [r4, r3]
	movs r3, #0x34
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r1, r1, r0
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r0, r0, r2
	muls r0, r3
	lsls r3, r1, #3
	adds r1, r3, r1
	add r3, sp, #0
	adds r0, #0x18
	strh r0, [r3]
	lsls r1, r1, #3
	adds r1, #0x20
	strh r1, [r3, #2]
	movs r0, #0xff
	adds r0, #0xed
	ldr r0, [r0, r5]
	mov r1, sp
	bl sub_8040034
	movs r3, #0
	ldrsb r0, [r4, r3]
	ldrb r1, [r4, #2]
	movs r3, #0xff
	movs r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xcd
	lsls r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x71
	lsrs r1, r1, #0x10
	adds r4, r0, #0
	bl sub_80138E2
	movs r2, #0
	movs r1, #0xa
	adds r0, r4, #0
	str r2, [sp]
	ldr r3, _0803518C
	bl sub_8013B9C
	ldr r0, _08035180
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
10
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8034EE0
sub_8034EE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08035190
	sub sp, #0x44
	ldr r0, [r0]
	bl sub_80050FA
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_8001A60
	ldr r0, _08035194
	add r1, pc, #0x29C
	ldr r0, [r0]
	bl sub_8004FFC
	movs r3, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r4, #0
	ldr r4, _080351A8
	str r0, [sp, #4]
	ldr r0, [r4]
	bl sub_800D9E0
	ldr r0, _080351AC
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r4]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r0, _080351B0
	ldr r7, _080351B4
	ldr r0, [r0]
	ldrb r1, [r7]
	ldr r2, [r0, #4]
	ldrb r4, [r0, #9]
	adds r3, r1, #0
	ldrh r7, [r2, #4]
	adds r3, #0xff
	adds r3, #0x86
	lsls r3, r7
	ldr r5, [r2, #8]
	lsls r4, r4, #2
	adds r3, r5, r3
	ldr r3, [r3, r4]
	ldr r2, [r2, #0xc]
	movs r0, #0
	adds r2, r2, r3
	adds r2, #1
	str r2, [sp, #0x34]
	movs r2, #0xff
	adds r2, #0xe9
	movs r3, #0x25
	lsls r3, r3, #4
	strb r0, [r2, r6]
	movs r2, #0xf
	adds r4, r6, r3
	strb r2, [r4]
	ldr r5, _080351B8
	strb r0, [r4, #2]
	lsls r1, r1, #1
	ldrh r1, [r5, r1]
	movs r2, #6
	movs r3, #0xd
	strb r1, [r4, #1]
	str r0, [r6]
	adds r1, r6, #0
	adds r1, #8
	str r0, [r6, #4]
	adds r0, r6, #0
	ldr r7, _080351B4
	bl sub_8018C48
	ldrb r1, [r7]
	movs r0, #0
	cmp r1, #0
	bls %12
11
	lsls r3, r0, #1
	ldrh r3, [r5, r3]
	ldrb r2, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r3
	lsrs r0, r0, #0x18
	cmp r0, r1
	strb r2, [r4, #2]
	blo %11
12
	movs r0, #0
	movs r2, #1
	lsls r2, r2, #9
13
	lsls r1, r0, #2
	movs r5, #0xff
	adds r5, #0xf1
	adds r1, r1, r6
	movs r3, #0
	movs r2, #1
	lsls r2, r2, #9
	str r3, [r5, r1]
	adds r1, r1, r2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [r1, #0x30]
	str r3, [r1, #0x10]
	cmp r0, #8
	blo %13
	ldrb r0, [r4, #1]
	movs r5, #0
	cmp r0, #0
	bls %28
14
	ldrb r0, [r4, #2]
	movs r3, #1
	adds r2, r3, #0
	adds r0, r0, r5
	lsls r1, r0, #2
	adds r0, r1, #0
	adds r0, #0xff
	adds r0, #0x55
	lsls r7, r0, #0x1b
	lsrs r7, r7, #0x1b
	lsls r2, r7
	cmp r0, #0
	beq %15
	lsrs r0, r0, #5
	ldr r7, _080351BC
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ands r0, r2
	beq %16
15
	movs r2, #1
	b %17
16
	movs r2, #0
17
	adds r0, r1, #0
	adds r0, #0xff
	adds r0, #0x56
	lsls r7, r0, #0x1b
	lsrs r7, r7, #0x1b
	movs r3, #1
	lsls r3, r7
	cmp r0, #0
	beq %18
	lsrs r0, r0, #5
	ldr r7, _080351BC
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ands r0, r3
	beq %19
18
	movs r0, #1
	b %20
19
	movs r0, #0
20
	adds r0, r0, r2
	lsls r2, r0, #0x18
	adds r0, r1, #0
	adds r0, #0xff
	adds r0, #0x57
	lsls r7, r0, #0x1b
	lsrs r7, r7, #0x1b
	movs r3, #1
	lsls r3, r7
	lsrs r2, r2, #0x18
	cmp r0, #0
	beq %21
	lsrs r0, r0, #5
	ldr r7, _080351BC
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ands r0, r3
	beq %22
21
	movs r0, #1
	b %23
22
	movs r0, #0
23
	adds r0, r0, r2
	adds r1, #0xff
	adds r1, #0x58
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r3
	cmp r1, #0
	beq %24
	lsrs r1, r1, #5
	ldr r7, _080351BC
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r2
	beq %25
24
	movs r1, #1
	b %26
25
	movs r1, #0
26
	adds r0, r1, r0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x30]
	ldrb r0, [r4]
	cmp r0, #0xf
	bne %27
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq %27
	strb r5, [r4]
27
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r6
	str r7, [sp, #0x40]
	adds r7, #0xff
	adds r7, #0xc1
	movs r1, #0xcb
	lsls r1, r1, #4
	str r0, [r7, #0x30]
	bl sub_800065C
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	movs r3, #0x34
	muls r0, r3
	adds r0, #0x18
	str r0, [sp, #0x3c]
	lsrs r1, r5, #2
	b %29
28
	b %35
29
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x20
	str r1, [sp, #0x38]
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	strh r1, [r3, #0x2e]
	ldr r0, [r7, #0x30]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #4
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %30
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
30
	movs r1, #1
	ldr r0, [r7, #0x30]
	bl sub_80401E4
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #1
	ldr r1, [sp, #0x40]
	lsls r2, r2, #9
	adds r7, r1, r2
	str r0, [r7, #0x30]
	ldrb r1, [r4, #2]
	ldr r2, _080351C0
	adds r1, r1, r5
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	ldr r0, [sp, #0x3c]
	add r3, sp, #0
	ldr r1, [sp, #0x38]
	strh r0, [r3, #0x2c]
	strh r1, [r3, #0x2e]
	ldr r0, [r7, #0x30]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #3
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %31
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
31
	movs r1, #1
	ldr r0, [r7, #0x30]
	bl sub_80401E4
	ldr r1, [sp, #0x30]
	cmp r1, #4
	beq %34
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r7, #0x10]
	ldr r1, [sp, #0x30]
	ldr r2, _080351C4
	adds r1, r1, r2
	bl sub_800065C
	ldr r0, [sp, #0x3c]
	add r3, sp, #0
	ldr r1, [sp, #0x38]
	strh r0, [r3, #0x2c]
	strh r1, [r3, #0x2e]
	ldr r0, [r7, #0x10]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x10]
	ldrh r1, [r0, #0x2a]
	b %32
	ALIGN
_08035180 DCDU gUnknown_0300345C
_08035184 DCDU gUnknown_03003460
_08035188 DCDU gUnknown_03003448
_0803518C DCDU 0x0000FFFF
_08035190 DCDU gUnknown_03003468
_08035194 DCDU gUnknown_03003EA8
_08035198 DCDU 0x654D6742
_0803519C DCDU 0x6353756E
_080351A0 DCDU 0x62706172
_080351A4 DCDU 0x006B6F6F
_080351A8 DCDU gUnknown_03003450
_080351AC DCDU gUnknown_03003E98
_080351B0 DCDU gUnknown_0300344C
_080351B4 DCDU gUnknown_03003D1C
_080351B8 DCDU gUnknown_08051438
_080351BC DCDU gUnknown_03003478
_080351C0 DCDU gUnknown_0805144C
_080351C4 DCDU 0x00000CE3
32
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r3, #0
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #2
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %33
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
33
	movs r1, #1
	ldr r0, [r7, #0x10]
	bl sub_80401E4
34
	adds r5, #1
	ldrb r0, [r4, #1]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bls %35
	b %14
35
	adds r0, r6, #0
	adds r0, #0xf8
	movs r1, #4
	adds r5, r0, #0
	bl sub_80147FA
	movs r2, #8
	ldr r1, _0803545C
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp]
	movs r7, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	adds r3, r7, #0
	movs r2, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0x34]
	bl sub_80137F8
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0x52
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	movs r0, #0x68
	str r0, [sp, #4]
	movs r2, #0
	movs r1, #0
	movs r3, #0x44
	adds r0, r5, #0
	bl sub_803F9C4
	movs r3, #0
	ldrsb r0, [r4, r3]
	ldrb r1, [r4, #2]
	movs r3, #0xff
	movs r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xcd
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	movs r1, #0xa
	adds r0, r5, #0
	str r2, [sp]
	ldr r3, _0803545C
	bl sub_8013B9C
	ldr r0, _08035460
	ldr r0, [r0]
	bl sub_800116A
	adds r5, #0x50
	movs r2, #0
	movs r1, #0xff
	adds r1, #0xef
	str r0, [r5, #0x2c]
	bl sub_80007A0
	movs r3, #0
	ldrsb r0, [r4, r3]
	movs r3, #0x34
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r1, r1, r0
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r0, r0, r2
	muls r0, r3
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x18
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	adds r1, #0x20
	strh r1, [r3, #0x2e]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r5, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x2a]
	movs r2, #3
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %36
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
36
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r5, #0x2c]
	bl sub_80401E4
	ldr r4, _08035464
	ldr r0, [r4]
	cmp r0, #0
	beq %38
	bl sub_800B72A
	cmp r0, #0
	beq %37
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq %38
37
	ldr r0, _08035468
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
38
	bl FadeToImage
	add sp, #0x44
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start HandleAlbum
HandleAlbum
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x58
	add r1, sp, #0xf8
	movs r2, #0x78
	adds r7, r1, #0
	mov r6, sp
	add r0, sp, #8
	ldr r3, _0803546C
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r7, #0
	bl sub_80143E0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x71
	adds r5, r0, #0
	bl sub_80143E0
	adds r0, r6, #0
	bl sub_8034EE0
	adds r4, r5, #0
	adds r4, #0x70
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne %48
39
	ldr r0, _08035470
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi %40
	ldrh r1, [r0, #6]
40
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r2, #0x1c
	lsls r1, r0, #0x1f
	bpl %41
	movs r0, #6
	strb r0, [r4, #8]
	b %47
41
	lsls r1, r0, #0x1e
	bpl %42
	movs r0, #3
	strb r0, [r4, #8]
	b %47
42
	lsls r1, r0, #0x1d
	bpl %43
	movs r0, #4
	strb r0, [r4, #8]
	b %47
43
	lsls r1, r0, #0x1a
	bpl %44
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8034E4A
	b %47
44
	lsls r1, r0, #0x1b
	bpl %45
	movs r1, #1
	adds r0, r6, #0
	bl sub_8034E4A
	b %47
45
	lsls r1, r0, #0x19
	bpl %46
	movs r1, #3
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8034E4A
	b %47
46
	lsls r0, r0, #0x18
	bpl %47
	movs r1, #4
	adds r0, r6, #0
	bl sub_8034E4A
47
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	bl sub_800EF2A
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq %39
48
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0]
	adds r0, r1, r0
	ldr r1, _08035474
	strb r0, [r1]
	ldr r1, _08035478
	movs r0, #0xb
	strb r0, [r1]
	ldrb r0, [r4, #8]
	cmp r0, #3
	beq %50
	ldr r4, _08035468
	cmp r0, #4
	beq %49
	cmp r0, #6
	bne %51
	movs r0, #0xd
	bl SetNextGlobalFunction
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	b %51
49
	movs r0, #0x11
	bl SetNextGlobalFunction
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	b %51
50
	movs r0, #4
	bl SetNextGlobalFunction
51
	adds r0, r6, #0
	bl sub_8034D98
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x80
	ldr r3, _0803547C
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x58
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803545C DCDU 0x0000FFFF
_08035460 DCDU gUnknown_03003448
_08035464 DCDU gUnknown_03003460
_08035468 DCDU gUnknown_0300345C
_0803546C DCDU sub_80143E0
_08035470 DCDU gUnknown_03003444
_08035474 DCDU gUnknown_03003D35
_08035478 DCDU gUnknown_03003D34
_0803547C DCDU sub_8014436
	END
