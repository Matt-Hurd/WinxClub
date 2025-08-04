	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA8
	IMPORT sub_8000DE6
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_80138E2
	IMPORT sub_8013946
	IMPORT sub_80147FA
	IMPORT FadeToImage
	IMPORT FadeToBlack
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT __call_via_r1
	IMPORT sub_803F9C4

	thumb_func_start sub_801ABFC
sub_801ABFC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl FadeToBlack
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x8d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #0
	bl sub_80050FA
	ldr r7, _0801AEA0
	movs r4, #0
1
	lsls r0, r4, #2
	adds r5, r0, r6
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #0x85
	ldr r0, [r7]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801AC60
sub_801AC60
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x27
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrb r0, [r4, #0xc]
	adds r7, r1, #0
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xc]
	bpl %2
	movs r0, #0
	strb r0, [r4, #0xc]
2
	adds r6, r5, #0
	adds r6, #0xff
	movs r3, #0xc
	ldrsb r0, [r4, r3]
	adds r6, #0x81
	ldrb r2, [r6]
	cmp r0, r2
	blt %3
	ldrb r0, [r6]
	strb r0, [r4, #0xc]
3
	movs r3, #0xc
	ldrsb r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x8d
	cmp r1, r2
	bne %4
	movs r3, #0xff
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x33
	bl sub_80138E2
	b %5
4
	adds r2, r1, #1
	str r2, [sp]
	movs r2, #0
	movs r1, #0xff
	movs r3, #0xff
	adds r1, #0x34
	bl sub_8013946
5
	movs r3, #0xc
	ldrsb r0, [r4, r3]
	movs r2, #0x81
	lsls r2, r2, #2
	ldrb r1, [r6]
	adds r4, r5, r2
	movs r2, #1
	cmp r0, r1
	bne %6
	lsls r1, r0, #1
	adds r1, #0xe6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	lsls r2, r3
	cmp r1, #0
	beq %6
	lsrs r1, r1, #5
	ldr r3, _0801AEA4
	lsls r1, r1, #2
	ldr r1, [r3, r1]
	ands r1, r2
	beq %7
6
	adds r0, #0xff
	adds r0, #0x36
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	b %8
7
	movs r1, #0xff
	adds r1, #0x35
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
8
	cmp r7, #0
	beq %9
	ldr r0, _0801AEA8
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801AD22
sub_801AD22
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xff
	movs r6, #0
	adds r4, r0, #0
	adds r5, #0x81
	sub sp, #0x2c
	strb r6, [r5, #1]
	strb r6, [r5]
	str r6, [r0]
	str r6, [r0, #4]
	ldr r0, _0801AEAC
	ldr r0, [r0]
	bl sub_80050FA
	mov r0, sp
	bl sub_8001A60
	ldr r0, _0801AEB0
	add r1, pc, #0x168
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r7, _0801AEC8
	str r0, [sp]
	ldr r0, [r7]
	mov r1, sp
	bl sub_800D9E0
	ldr r0, _0801AECC
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r7]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r2, r4, #0
	adds r2, #0xff
	adds r2, #0x85
	adds r1, r2, #0
	subs r0, r2, #6
	subs r1, #0x84
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r2, r0, #6
	subs r1, r0, #4
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	ldr r0, _0801AEAC
	ldr r0, [r0]
	bl sub_80050FA
	movs r2, #4
	movs r0, #0x98
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x24
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r2, #0
	adds r0, #0x8d
	movs r1, #0
	movs r3, #0x2e
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r7, #0xff
	movs r1, #0xff
	adds r1, #0x33
	adds r3, r7, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_80138E2
	movs r2, #0xff
	movs r0, #0xc8
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x36
	movs r0, #0x81
	movs r1, #0x40
	str r1, [sp, #8]
	lsls r0, r0, #2
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0x14
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r1, #0xff
	adds r1, #0x36
	adds r3, r7, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_80138E2
	movs r0, #0x20
	movs r6, #1
	b %14
10
	lsls r3, r0, #1
	adds r1, r3, #0
	adds r1, #0xe6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	adds r2, r6, #0
	lsls r2, r7
	cmp r1, #0
	beq %11
	lsrs r1, r1, #5
	ldr r7, _0801AEA4
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r2
	beq %13
11
	adds r3, #0xe7
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	lsls r7, r2, #0x1b
	lsrs r7, r7, #0x1b
	adds r3, r6, #0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r7
	cmp r2, #0
	strb r1, [r5]
	beq %12
	lsrs r2, r2, #5
	ldr r7, _0801AEA4
	lsls r2, r2, #2
	ldr r2, [r7, r2]
	ands r2, r3
	beq %13
12
	adds r1, #1
	strb r1, [r5]
13
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bmi %15
14
	ldrb r1, [r5]
	cmp r1, #0
	beq %10
15
	ldrb r0, [r5]
	movs r1, #0x27
	lsls r1, r1, #4
	adds r1, r4, r1
	strb r0, [r1, #0xc]
	movs r1, #0
	adds r0, r4, #0
	bl sub_801AC60
	bl FadeToImage
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801AEA0 DCDU gUnknown_03003448
_0801AEA4 DCDU gUnknown_03003478
_0801AEA8 DCDU gUnknown_0300345C
_0801AEAC DCDU gUnknown_03003468
_0801AEB0 DCDU gUnknown_03003EA8
_0801AEB4 DCDU 0x654D6742
_0801AEB8 DCDU 0x624F756E
_0801AEBC DCDU 0x7463656A
_0801AEC0 DCDU 0x73657669
_0801AEC4 DCDU 0x00000000
_0801AEC8 DCDU gUnknown_03003450
_0801AECC DCDU gUnknown_03003E98
	END
