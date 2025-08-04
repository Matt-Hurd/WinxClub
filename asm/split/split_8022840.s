	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_080506E8
	IMPORT gUnknown_08050FF8
	IMPORT gUnknown_08051028
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800B6A8
	IMPORT sub_800B6FA
	IMPORT sub_800B72A
	IMPORT sub_800B782
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800EF2A
	IMPORT maybeLoadOrRenderBgImage
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT FadeToImage
	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_80235E4
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r7
	IMPORT __16__rt_memcpy
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803D66C
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_8040444
	IMPORT sub_8040640


	thumb_func_start sub_8022840
sub_8022840
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl FadeToBlack
	ldr r6, _08022C28
	movs r4, #0
1
	lsls r0, r4, #2
	adds r1, r0, r5
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %1
	movs r4, #0
2
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %2
	movs r4, #0
	movs r7, #0xbb
	lsls r7, r7, #2
3
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %3
	movs r4, #0
4
	lsls r0, r4, #3
	adds r7, r0, r5
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #3
	lsls r0, r0, #8
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	lsls r0, r4, #2
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r5
	adds r1, r0, r1
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80228D2
sub_80228D2
	push {r0, r1, r4, r5, r6, r7, lr}
	movs r6, #0x2f
	lsls r6, r6, #4
	adds r4, r0, r6
	ldrb r5, [r4, #8]
	adds r6, #9
	sub sp, #4
	adds r3, r5, r0
	adds r3, r3, r6
	ldrb r6, [r3]
	ldr r7, [sp, #8]
	movs r1, #0
	adds r6, r6, r7
	strb r6, [r3]
	ldrb r3, [r4, #8]
	movs r6, #0x2f
	lsls r6, r6, #4
	adds r3, r3, r0
	adds r6, r3, r6
	movs r3, #9
	ldrsb r7, [r6, r3]
	movs r2, #0xff
	cmp r7, #0
	bge %5
	movs r3, #0
	strb r3, [r6, #9]
	b %6
5
	cmp r7, #0xa
	ble %6
	movs r3, #0xa
	strb r3, [r6, #9]
6
	movs r6, #0x2f
	lsls r6, r6, #4
	adds r3, r0, r5
	adds r6, r3, r6
	movs r3, #9
	ldrsb r6, [r6, r3]
	ldr r7, _08022C2C
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	mov ip, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
7
	ldrb r6, [r7, r1]
	cmp r6, r3
	bhi %8
	adds r6, r7, r1
	ldrb r6, [r6, #1]
	cmp r6, r3
	blo %8
	adds r2, r1, #0
8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x40
	bhs %9
	cmp r2, #0xff
	beq %7
9
	movs r3, #0x23
	muls r3, r5
	mov r1, ip
	adds r1, #0x5f
	adds r3, #0x34
	subs r2, r3, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r3, sp, #0
	strh r1, [r3]
	lsls r1, r5, #2
	adds r0, r1, r0
	movs r1, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	strh r2, [r3, #2]
	ldr r0, [r0, #0x14]
	mov r1, sp
	bl sub_8040034
	movs r3, #9
	ldrsb r0, [r4, r3]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040444
	ldr r5, _08022C30
	ldr r0, [r5]
	bl sub_800B782
	movs r3, #0xa
	ldrsb r0, [r4, r3]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040444
	ldr r0, [r5]
	bl sub_800B6FA
	ldr r7, [sp, #8]
	cmp r7, #0
	beq %10
	ldr r0, _08022C34
	ldr r0, [r0]
	adds r0, #0xa0
	bl sub_8028C2E
10
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80229B2
sub_80229B2
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x2f
	lsls r0, r0, #4
	adds r5, r7, r0
	adds r6, r1, #0
	cmp r1, #0
	bge %11
	ldrb r0, [r5, #8]
	adds r0, #2
	bl sub_8040640
	strb r0, [r5, #8]
	b %12
11
	cmp r6, #0
	ble %12
	ldrb r0, [r5, #8]
	adds r0, #1
	bl sub_8040640
	strb r0, [r5, #8]
12
	movs r4, #0
13
	ldrb r1, [r5, #8]
	movs r3, #0x23
	lsls r0, r4, #3
	adds r0, r0, r4
	muls r1, r3
	lsls r0, r0, #1
	adds r0, #0x19
	add r3, sp, #0
	strh r0, [r3]
	adds r1, #0x40
	strh r1, [r3, #2]
	movs r1, #0xb
	lsls r0, r4, #2
	adds r0, r0, r7
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	mov r1, sp
	bl sub_8040034
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %13
	cmp r6, #0
	beq %14
	ldr r0, _08022C34
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
14
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8022A24
sub_8022A24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	add r0, sp, #0x48
	bl sub_80046F8
	ldr r1, _08022C2C
	movs r2, #0xc
	adds r1, #0x18
	add r0, sp, #0x3c
	bl __16__rt_memcpy
	ldr r0, _08022C2C
	add r3, sp, #0
	subs r0, #0xa
	ldrh r1, [r0]
	movs r4, #0
	strh r1, [r3, #0x38]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x3a]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x30]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x32]
	ldrh r1, [r0, #8]
	movs r0, #0xff
	adds r0, #0x81
	strh r1, [r3, #0x34]
	strb r4, [r0, r5]
	movs r0, #0x2f
	lsls r0, r0, #4
	adds r2, r5, r0
	str r2, [sp, #0x58]
	ldr r0, _08022C38
	strb r4, [r2, #8]
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r2, [sp, #0x58]
	strb r1, [r2, #9]
	ldrb r1, [r0, #1]
	ldr r2, [sp, #0x58]
	strb r1, [r2, #0xa]
	ldrb r0, [r0, #2]
	ldr r2, [sp, #0x58]
	strb r0, [r2, #0xb]
	str r4, [r5]
	ldr r0, _08022C3C
	str r4, [r5, #4]
	ldr r0, [r0]
	bl sub_80050FA
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_8001A60
	ldr r0, _08022C40
	add r1, pc, #0x1AC
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r6, #0
	ldr r6, _08022C54
	str r0, [sp, #4]
	ldr r0, [r6]
	bl sub_800D9E0
	ldr r0, _08022C58
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r6]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #1
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	adds r1, r5, #0
	adds r1, #8
	adds r3, r4, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	movs r6, #0
15
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r4, r0, r5
	adds r4, #0xff
	adds r4, #0x85
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	movs r3, #2
	ldr r1, [r0, #0x14]
	adds r7, r1, r0
	add r1, sp, #0x3c
	lsls r0, r6, #2
	adds r2, r0, r1
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	bl __call_via_r7
	ldr r0, [r4]
	movs r2, #0x10
	ldr r1, [r0, #0x10]
	adds r3, r1, r0
	add r0, sp, #0x38
	ldrb r1, [r0, r6]
	adds r0, r4, #0
	bl __call_via_r3
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r2, #0xff
	ldr r1, [r0, #0x20]
	movs r3, #0
	adds r7, r1, r0
	movs r1, #4
	adds r0, r4, #0
	bl __call_via_r7
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	lsls r0, r6, #1
	add r1, sp, #0x30
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %15
	movs r6, #0
16
	ldr r0, _08022C28
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r2, r1, r5
	movs r1, #0xb
	lsls r1, r1, #6
	adds r7, r2, r1
	str r0, [r7, #0x2c]
	ldr r1, _08022C5C
	bl sub_800065C
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x19
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0x40
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #5
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r4, #0
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %17
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
17
	movs r1, #1
	ldr r0, [r7, #0x2c]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %16
	movs r6, #0
18
	movs r0, #0x23
	muls r0, r6
	adds r0, #0x2d
	str r0, [sp, #0x54]
	lsls r0, r6, #3
	movs r4, #0
	adds r1, r0, r5
	str r1, [sp, #0x50]
19
	ldr r0, _08022C28
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x50]
	lsls r2, r4, #2
	adds r1, r1, r2
	movs r2, #0xb
	lsls r2, r2, #6
	b %20
	ALIGN
_08022C28 DCDU gUnknown_03003448
_08022C2C DCDU gUnknown_08050FF8
_08022C30 DCDU gUnknown_03003460
_08022C34 DCDU gUnknown_0300345C
_08022C38 DCDU gUnknown_03003D30
_08022C3C DCDU gUnknown_03003468
_08022C40 DCDU gUnknown_03003EA8
_08022C44 DCDU 0x654D6742
_08022C48 DCDU 0x704F756E
_08022C4C DCDU 0x6E6F6974
_08022C50 DCDU 0x00000073
_08022C54 DCDU gUnknown_03003450
_08022C58 DCDU gUnknown_03003E98
_08022C5C DCDU 0x00000CA8
20
	adds r7, r1, r2
	ldr r1, _08022F68
	str r0, [r7, #0x3c]
	adds r1, r4, r1
	bl sub_800065C
	lsls r1, r4, #6
	adds r1, #0x5f
	add r3, sp, #0
	ldr r0, [sp, #0x54]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x3c]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x3c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %21
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
21
	movs r1, #1
	ldr r0, [r7, #0x3c]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %19
	ldr r0, _08022F6C
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	movs r2, #3
	lsls r2, r2, #8
	adds r1, r1, r5
	adds r4, r1, r2
	movs r1, #0xff
	movs r2, #0
	adds r1, #0xf1
	str r0, [r4, #0x14]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0xa0
	strh r0, [r3, #0x2e]
	ldr r0, [r4, #0x14]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r4, #0x14]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %22
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
22
	ldr r0, [r4, #0x14]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x14]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	bhs %23
	b %18
23
	ldr r2, [sp, #0x58]
	movs r0, #2
	strb r0, [r2, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_80228D2
	ldr r2, [sp, #0x58]
	movs r0, #1
	strb r0, [r2, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_80228D2
	movs r4, #0
	ldr r2, [sp, #0x58]
	movs r1, #0
	adds r0, r5, #0
	strb r4, [r2, #8]
	bl sub_80228D2
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x48
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start HandleIngameOptionsScreen
HandleIngameOptionsScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x140
	add r4, sp, #0x14
	ldr r5, _08022F70
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x338]
	bl sub_80143E0
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	adds r3, r5, #0
	movs r2, #0x78
	adds r0, #0x85
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r4, #0
	bl sub_8022A24
	add r1, sp, #0xd4
	str r1, [sp, #0x334]
	add r5, sp, #0x194
	add r6, sp, #0x174
24
	ldr r0, _08022F74
	movs r2, #0
	ldr r0, [r0]
	adds r3, r2, #0
	ldr r1, [r0, #0x14]
	lsls r4, r1, #0x1c
	bmi %25
	ldrh r3, [r0, #8]
25
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi %26
	ldrh r2, [r0, #4]
26
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	str r1, [sp, #4]
	ldr r1, [sp, #0x334]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [sp, #0x334]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r7, r0, #0x10
	ldr r0, _08022F78
	lsrs r7, r7, #0x10
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %27
	adds r1, r7, #0
	ldr r0, [sp, #8]
	bl sub_800065C
27
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r7, r0, #0x10
	ldr r0, _08022F78
	lsrs r7, r7, #0x10
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %28
	adds r1, r7, #0
	ldr r0, [sp, #0xc]
	bl sub_800065C
28
	lsls r0, r4, #0x16
	bpl %29
	movs r0, #2
	strb r0, [r5]
	b %34
29
	lsls r0, r4, #0x17
	bpl %30
	movs r0, #1
	strb r0, [r5]
	b %34
30
	lsls r0, r4, #0x1e
	bpl %31
	movs r0, #3
	strb r0, [r5]
	b %34
31
	lsls r0, r4, #0x1d
	bpl %32
	movs r0, #3
	strb r0, [r5]
	b %34
32
	lsls r0, r4, #0x19
	bpl %33
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_80229B2
	b %34
33
	lsls r0, r4, #0x18
	bpl %34
	movs r1, #1
	add r0, sp, #0x14
	bl sub_80229B2
34
	lsls r0, r4, #0x1a
	bpl %35
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_80228D2
	b %36
35
	lsls r0, r4, #0x1b
	bpl %36
	movs r1, #1
	add r0, sp, #0x14
	bl sub_80228D2
36
	bl sub_800EF2A
	ldrb r0, [r5]
	cmp r0, #0
	beq %24
	movs r0, #0x2f
	lsls r0, r0, #4
	add r4, sp, #0x14
	adds r0, r4, r0
	ldr r1, _08022F7C
	ldrb r2, [r0, #9]
	ldr r1, [r1]
	strb r2, [r1]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #1]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #2]
	bl sub_80235E4
	ldrh r2, [r6, #0x1a]
	ldr r1, _08022F80
	ldrb r0, [r5]
	ldrb r5, [r1, r2]
	ldrh r2, [r6, #0x18]
	ldr r6, _08022F84
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq %38
	cmp r0, #2
	beq %37
	cmp r0, #3
	beq %39
	cmp r0, #6
	bne %40
	movs r0, #0xb
	bl SetNextGlobalFunction
	b %40
37
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %41
38
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %41
39
	movs r0, #0x11
	bl SetNextGlobalFunction
40
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
41
	adds r0, r4, #0
	bl sub_8022840
	ldr r5, _08022F88
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x9d
	lsls r0, r0, #2
	mvns r2, r2
	adds r1, #0xd
	adds r3, r5, #0
	adds r0, r4, r0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	ldr r0, [sp, #0x338]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r4, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r5, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x140
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08022F68 DCDU 0x00000CF3
_08022F6C DCDU gUnknown_03003448
_08022F70 DCDU sub_80143E0
_08022F74 DCDU gUnknown_03003444
_08022F78 DCDU gUnknown_03003EA0
_08022F7C DCDU gUnknown_03003D30
_08022F80 DCDU gUnknown_080506E8
_08022F84 DCDU gUnknown_0300345C
_08022F88 DCDU sub_8014436

	thumb_func_start sub_8022F8C
sub_8022F8C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08023374
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	movs r0, #0xd5
	lsls r0, r0, #2
	ldr r6, _08023378
	adds r1, r5, r0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #4
	ldr r0, [r6]
	bl sub_8000DE6
	movs r4, #0
42
	lsls r0, r4, #3
	adds r7, r0, r5
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #0xd9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r6]
	bl sub_8000DE6
	lsls r0, r4, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r1, r0, r1
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %42
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8022FFC
sub_8022FFC
	push {r0, r1, r4, r5, r6, r7, lr}
	movs r6, #0x35
	lsls r6, r6, #4
	adds r4, r0, r6
	ldrb r5, [r4, #8]
	adds r6, #9
	sub sp, #4
	adds r3, r5, r0
	adds r3, r3, r6
	ldrb r6, [r3]
	ldr r7, [sp, #8]
	movs r1, #0
	adds r6, r6, r7
	strb r6, [r3]
	ldrb r3, [r4, #8]
	movs r6, #0x35
	lsls r6, r6, #4
	adds r3, r3, r0
	adds r6, r3, r6
	movs r3, #9
	ldrsb r7, [r6, r3]
	movs r2, #0xff
	cmp r7, #0
	bge %43
	movs r3, #0
	strb r3, [r6, #9]
	b %44
43
	cmp r7, #0xa
	ble %44
	movs r3, #0xa
	strb r3, [r6, #9]
44
	movs r6, #0x35
	lsls r6, r6, #4
	adds r3, r0, r5
	adds r6, r3, r6
	movs r3, #9
	ldrsb r6, [r6, r3]
	ldr r7, _0802337C
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	mov ip, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
45
	ldrb r6, [r7, r1]
	cmp r6, r3
	bhi %46
	adds r6, r7, r1
	ldrb r6, [r6, #1]
	cmp r6, r3
	blo %46
	adds r2, r1, #0
46
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x40
	bhs %47
	cmp r2, #0xff
	beq %45
47
	mov r1, ip
	adds r1, #0x5c
	lsls r3, r1, #0x18
	lsls r1, r5, #5
	adds r1, #0x16
	subs r1, r1, r2
	lsrs r3, r3, #0x18
	adds r2, r3, #0
	add r3, sp, #0
	strh r2, [r3]
	strh r1, [r3, #2]
	lsls r1, r5, #2
	adds r0, r1, r0
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_8040034
	movs r3, #9
	ldrsb r0, [r4, r3]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040444
	ldr r5, _08023380
	ldr r0, [r5]
	bl sub_800B782
	movs r3, #0xa
	ldrsb r0, [r4, r3]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040444
	ldr r0, [r5]
	bl sub_800B6FA
	ldr r7, [sp, #8]
	cmp r7, #0
	beq %48
	ldr r0, _08023374
	ldr r0, [r0]
	adds r0, #0xa0
	bl sub_8028C2E
48
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80230DC
sub_80230DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x35
	lsls r0, r0, #4
	adds r5, r4, r0
	adds r6, r1, #0
	cmp r1, #0
	ldrb r0, [r5, #8]
	sub sp, #0xc
	bge %49
	adds r0, #3
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r5, #8]
	b %50
49
	cmp r6, #0
	ble %50
	adds r0, #1
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r5, #8]
50
	ldrb r0, [r5, #8]
	movs r1, #0x38
	movs r7, #0
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x75
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne %54
	ldrb r1, [r0, #0x1c]
	lsls r2, r1, #0x1d
	bpl %51
	ldr r2, [r0, #0x14]
	ldrh r1, [r0, #0x20]
	ldrh r2, [r2, #4]
	subs r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b %53
51
	lsls r1, r1, #0x1e
	bpl %52
	ldr r2, [r0, #0x14]
	ldrh r1, [r0, #0x20]
	ldrh r2, [r2, #4]
	subs r1, r1, r2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b %53
52
	movs r1, #0
53
	ldrh r0, [r0, #0x18]
	add r3, sp, #0
	adds r0, r0, r1
	strh r0, [r3, #8]
	b %55
54
	ldrh r0, [r0, #0x18]
	add r3, sp, #0
	strh r0, [r3, #8]
55
	add r3, sp, #0
	ldrh r1, [r3, #8]
	ldrb r0, [r5, #8]
	subs r1, #0x10
	strh r1, [r3, #4]
	lsls r0, r0, #5
	adds r0, #0x18
	strh r0, [r3, #6]
	movs r0, #0xd
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, sp, #4
	bl sub_8040034
	cmp r6, #0
	beq %56
	ldr r0, _08023374
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
56
	ldrb r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #8
	cmp r0, #2
	bhi %58
	adds r3, r7, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
57
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
58
	movs r3, #7
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	b %57

	thumb_func_start sub_80231B0
sub_80231B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	add r0, sp, #0x20
	bl sub_80046F8
	movs r2, #0x10
	mov r4, sp
	adds r4, r4, r2
	adds r0, r4, #0
	ldr r1, _08023384
	bl __16__rt_memcpy
	ldr r0, _08023384
	add r3, sp, #0
	subs r0, #0xc
	ldrh r1, [r0]
	strh r1, [r3, #0xc]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0xe]
	ldrh r1, [r0, #4]
	strh r1, [r3, #4]
	ldrh r1, [r0, #6]
	strh r1, [r3, #6]
	ldrh r1, [r0, #8]
	strh r1, [r3, #8]
	ldrh r1, [r0, #0xa]
	movs r0, #0xff
	adds r0, #0x71
	strh r1, [r3, #0xa]
	movs r1, #0
	strb r1, [r0, r5]
	movs r0, #0x35
	lsls r0, r0, #4
	adds r3, r5, r0
	str r3, [sp, #0x30]
	ldr r0, _08023388
	strb r1, [r3, #8]
	ldr r0, [r0]
	ldrb r2, [r0]
	ldr r3, [sp, #0x30]
	strb r2, [r3, #9]
	ldrb r2, [r0, #1]
	ldr r3, [sp, #0x30]
	strb r2, [r3, #0xa]
	ldrb r0, [r0, #2]
	ldr r3, [sp, #0x30]
	strb r0, [r3, #0xb]
	str r1, [r5]
	str r1, [r5, #4]
	add r0, pc, #0x174
	bl maybeLoadOrRenderBgImage
	ldr r6, _08023380
	ldr r0, [r6]
	cmp r0, #0
	beq %60
	bl sub_800B72A
	cmp r0, #0
	beq %59
	ldr r0, [r6]
	bl sub_800B6A8
	cmp r0, #0
	beq %60
59
	ldr r0, _08023374
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
60
	movs r6, #0
61
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r4, r0, r5
	adds r4, #0xff
	adds r4, #0x75
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	movs r3, #2
	ldr r1, [r0, #0x14]
	adds r7, r1, r0
	add r1, sp, #0x10
	lsls r0, r6, #2
	adds r2, r0, r1
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	bl __call_via_r7
	ldr r0, [r4]
	movs r2, #0x10
	ldr r1, [r0, #0x10]
	adds r3, r1, r0
	add r0, sp, #0xc
	ldrb r1, [r0, r6]
	adds r0, r4, #0
	bl __call_via_r3
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r2, #0xff
	ldr r1, [r0, #0x20]
	movs r3, #0
	adds r7, r1, r0
	movs r1, #4
	adds r0, r4, #0
	bl __call_via_r7
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	lsls r0, r6, #1
	add r1, sp, #4
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #4
	blo %61
	movs r6, #0
	adds r1, r5, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	ldr r0, _08023378
	ldr r0, [r0]
	bl sub_800116A
	movs r1, #0xd
	lsls r1, r1, #6
	adds r4, r5, r1
	movs r1, #0xff
	movs r2, #0
	adds r1, #0xee
	str r0, [r4, #0x14]
	bl sub_80007A0
	ldr r0, [r4, #0x14]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r6
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %62
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
62
	ldr r0, [r4, #0x14]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x14]
	bl sub_80401E4
	movs r6, #0
63
	lsls r0, r6, #5
	adds r0, #0xf
	str r0, [sp, #0x2c]
	lsls r0, r6, #3
	movs r4, #0
	adds r1, r0, r5
	str r1, [sp, #0x28]
64
	ldr r0, _08023378
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x28]
	lsls r2, r4, #2
	adds r1, r1, r2
	movs r2, #0xd
	lsls r2, r2, #6
	adds r7, r1, r2
	ldr r1, _08023398
	str r0, [r7, #0x20]
	adds r1, r4, r1
	bl sub_800065C
	lsls r1, r4, #6
	adds r1, #0x5c
	add r3, sp, #0
	ldr r0, [sp, #0x2c]
	strh r1, [r3]
	strh r0, [r3, #2]
	ldr r0, [r7, #0x20]
	mov r1, sp
	bl sub_8040034
	ldr r0, [r7, #0x20]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #5
	b %65
	ALIGN
_08023374 DCDU gUnknown_0300345C
_08023378 DCDU gUnknown_03003448
_0802337C DCDU gUnknown_08050FF8
_08023380 DCDU gUnknown_03003460
_08023384 DCDU gUnknown_08051028
_08023388 DCDU gUnknown_03003D30
_0802338C DCDU 0x654D6742
_08023390 DCDU 0x614D756E
_08023394 DCDU 0x00006E69
_08023398 DCDU 0x00000CF3
65
	movs r3, #0
	orrs r1, r3
	strh r1, [r0, #0x2a]
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %66
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
66
	movs r1, #1
	ldr r0, [r7, #0x20]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %64
	ldr r0, _080235CC
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	movs r2, #7
	lsls r2, r2, #7
	adds r1, r1, r5
	adds r4, r1, r2
	movs r1, #0xff
	movs r2, #0
	adds r1, #0xf1
	str r0, [r4]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r4]
	mov r1, sp
	bl sub_8040034
	ldr r0, [r4]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %67
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
67
	ldr r0, [r4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	bhs %68
	b %63
68
	ldr r3, [sp, #0x30]
	movs r0, #2
	strb r0, [r3, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_8022FFC
	ldr r3, [sp, #0x30]
	movs r0, #1
	strb r0, [r3, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_8022FFC
	ldr r3, [sp, #0x30]
	movs r0, #0
	strb r0, [r3, #8]
	movs r1, #0
	adds r0, r5, #0
	bl sub_8022FFC
	bl FadeToImage
	movs r1, #0
	adds r0, r5, #0
	bl sub_80230DC
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #4
	movs r1, #0xc
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	non_word_aligned_thumb_func_start HandleMainMenuOptionsScreen
HandleMainMenuOptionsScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x198
	add r6, sp, #4
	adds r1, r6, #0
	ldr r4, _080235D0
	adds r1, #0xf8
	adds r7, r1, #0
	adds r0, r6, #0
	movs r2, #0x78
	adds r3, r4, #0
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r7, #0
	bl sub_80143E0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	adds r0, #0xff
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #0x75
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	bl sub_80231B0
	adds r4, r6, #0
	adds r4, #0xff
	movs r0, #0x35
	lsls r0, r0, #4
	adds r4, #0x71
	adds r5, r6, r0
69
	ldr r0, _080235D4
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi %70
	ldrh r1, [r0, #6]
70
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r2, #0x1c
	lsls r1, r0, #0x1e
	bpl %71
	movs r0, #3
	strb r0, [r4]
	b %77
71
	lsls r1, r0, #0x19
	bpl %72
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_80230DC
	b %77
72
	lsls r1, r0, #0x18
	bpl %73
	movs r1, #1
	adds r0, r6, #0
	bl sub_80230DC
	b %77
73
	ldrb r1, [r5, #8]
	cmp r1, #3
	bhs %74
	lsls r2, r0, #0x1a
	bpl %74
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8022FFC
	b %77
74
	cmp r1, #3
	bhs %75
	lsls r2, r0, #0x1b
	bpl %75
	movs r1, #1
	adds r0, r6, #0
	bl sub_8022FFC
	b %77
75
	cmp r1, #3
	bhs %76
	lsls r2, r0, #0x1f
	bpl %76
	movs r0, #3
	strb r0, [r4]
	b %77
76
	cmp r1, #3
	bne %77
	lsls r0, r0, #0x1f
	bpl %77
	movs r0, #5
	strb r0, [r4]
77
	bl sub_800EF2A
	ldrb r0, [r4]
	cmp r0, #0
	beq %69
	ldr r0, _080235D8
	ldrb r1, [r5, #9]
	ldr r0, [r0]
	strb r1, [r0]
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #1]
	ldrb r1, [r5, #0xb]
	strb r1, [r0, #2]
	bl sub_80235E4
	ldr r0, _080235DC
	ldr r0, [r0]
	bl sub_8028C2E
	ldrb r0, [r4]
	cmp r0, #3
	beq %78
	cmp r0, #5
	bne %79
	movs r0, #0xa
	bl SetNextGlobalFunction
	b %79
78
	movs r0, #2
	bl SetNextGlobalFunction
79
	adds r0, r6, #0
	bl sub_8022F8C
	ldr r4, _080235E0
	movs r2, #0x77
	adds r1, r6, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r1, #0xfc
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r6, r0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r6, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x198
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080235CC DCDU gUnknown_03003448
_080235D0 DCDU sub_80143E0
_080235D4 DCDU gUnknown_03003444
_080235D8 DCDU gUnknown_03003D30
_080235DC DCDU gUnknown_0300345C
_080235E0 DCDU sub_8014436
	END
