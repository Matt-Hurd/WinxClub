	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_080506E8
	IMPORT gUnknown_080507A8
	IMPORT gUnknown_080507B8
	IMPORT gUnknown_08051040
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
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800EF2A
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_8013946
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_8018D76
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT __call_via_r2
	IMPORT __16__rt_memcpy
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803D66C
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_8040684

	thumb_func_start sub_8019EE0
sub_8019EE0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_80180BE
	ldr r6, _0801A2C8
	movs r5, #0
_08019EEC
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08019EEC
	movs r5, #0
_08019F02
	lsls r0, r5, #2
	adds r1, r0, r4
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08019F02
	ldr r7, _0801A2CC
	movs r5, #0
_08019F1C
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08019F1C
	movs r5, #0
	movs r7, #0x1b
	lsls r7, r7, #6
_08019F38
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	blo _08019F38
	movs r0, #0x19
	lsls r0, r0, #6
	adds r1, r4, r0
	ldr r0, [r6]
	bl sub_8000DE6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8019F60
sub_8019F60
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x19
	lsls r0, r0, #6
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	sub sp, #0x14
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	movs r0, #0
	cmp r1, #0
	strb r1, [r4, #4]
	bge _08019F82
	strb r0, [r4, #4]
	b _08019F8C
_08019F82
	ldrb r0, [r4, #5]
	cmp r1, r0
	blt _08019F8C
	adds r0, #0xff
	strb r0, [r4, #4]
_08019F8C
	ldr r6, _0801A2D0
	ldrb r7, [r4, #4]
	ldr r0, [r6]
	adds r0, r0, r7
	adds r0, #0xb0
	ldrb r2, [r0, #5]
	ldr r0, _0801A2D4
	lsls r1, r7, #2
	str r2, [sp, #8]
	ldr r2, _0801A2D8
	ldr r0, [r0]
	adds r1, r1, r2
	ldrh r1, [r1, #2]
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r6
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	adds r2, r0, r1
	str r2, [sp, #0x10]
	ldr r0, _0801A2DC
	movs r2, #0
	adds r0, r5, r0
	adds r6, r0, #0
	ldr r1, [sp, #0x10]
	bl sub_80137F8
	ldr r0, [r6]
	ldr r1, [r0, #0x24]
	adds r2, r1, r0
	movs r1, #3
	mvns r1, r1
	adds r0, r6, #0
	bl __call_via_r2
	adds r0, r6, #0
	adds r6, #0x30
	ldrb r1, [r6, #8]
	add r3, sp, #0
	strb r1, [r3, #0xc]
	ldrb r2, [r3, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, _0801A2E0
	adds r0, r5, r0
	cmp r2, #3
	bls _0801A002
	ldrh r1, [r1, #0x12]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	movs r2, #0
	bl sub_80137F8
	b _0801A00A
_0801A002
	movs r2, #0
	add r1, pc, #0x2DC
	bl sub_80137F8
_0801A00A
	movs r3, #4
	ldr r6, _0801A2D0
	ldrsb r0, [r4, r3]
	ldr r1, [r6]
	adds r0, r0, r1
	adds r0, #0xb0
	ldrb r1, [r0, #5]
	ldr r0, _0801A2E8
	adds r0, r5, r0
	cmp r1, #3
	bhs _0801A03A
	lsls r1, r7, #1
	ldr r2, _0801A2EC
	adds r1, r1, r7
	adds r1, r1, r2
	ldr r2, [sp, #8]
	movs r3, #0xff
	ldrb r2, [r1, r2]
	str r2, [sp]
	movs r2, #0
	movs r1, #0x4e
	bl sub_8013946
	b _0801A042
_0801A03A
	movs r2, #0
	add r1, pc, #0x2A4
	bl sub_80137F8
_0801A042
	movs r3, #4
	ldrsb r0, [r4, r3]
	ldr r2, _0801A2D8
	adds r2, #0x10
	lsls r1, r0, #3
	adds r1, r1, r2
	ldr r2, [r6]
	ldr r6, [r4]
	adds r0, r0, r2
	adds r0, #0xb0
	ldrb r0, [r0, #5]
	lsls r0, r0, #1
	ldrh r7, [r1, r0]
	ldr r0, _0801A2F0
	subs r1, r3, #5
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq _0801A074
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0801A074
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0801A086
	movs r2, #0
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_80007A0
_0801A086
	movs r6, #0
	movs r7, #3
	lsls r7, r7, #9
_0801A08C
	movs r3, #4
	ldrsb r0, [r4, r3]
	lsls r1, r6, #5
	adds r1, #0x12
	lsls r3, r0, #1
	adds r0, r3, r0
	add r3, sp, #0
	strh r1, [r3, #4]
	lsls r0, r0, #2
	adds r0, #0x65
	strh r0, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r0, [r0, #0x34]
	add r1, sp, #4
	bl sub_8040034
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _0801A08C
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0801A0CA
	ldr r0, _0801A2F4
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_0801A0CA
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801A0D2
sub_801A0D2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	add r0, sp, #0x44
	bl sub_80046F8
	ldr r1, _0801A2D8
	movs r2, #0xc
	adds r1, #0x30
	add r0, sp, #0x38
	bl __16__rt_memcpy
	ldr r0, _0801A2D8
	add r3, sp, #0
	subs r0, #0xa
	ldrh r1, [r0]
	strh r1, [r3, #0x34]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x36]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x2c]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x2e]
	ldrh r1, [r0, #8]
	movs r0, #0
	strh r1, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0x81
	strb r0, [r1, r4]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, _0801A2F8
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _0801A2FC
	add r1, pc, #0x1DC
	ldr r0, [r0]
	bl sub_8004FFC
	movs r3, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _0801A30C
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _0801A310
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r1, r4, #0
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
	add r1, sp, #0x2c
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0xff
	adds r1, #0x85
	str r2, [sp, #4]
	add r2, sp, #0x38
	movs r0, #3
	add r3, sp, #0x34
	bl sub_8018D76
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r1, #0x19
	lsls r1, r1, #6
	adds r7, r4, r1
	movs r0, #0
	movs r2, #4
	strb r0, [r7, #4]
	strb r2, [r7, #5]
	movs r5, #0
_0801A1AA
	ldr r0, _0801A2C8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r4
	adds r6, r1, r2
	str r0, [r6, #0x34]
	ldr r1, _0801A314
	bl sub_800065C
	lsls r0, r5, #5
	adds r0, #0xc
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r1, #5
	strh r1, [r3, #0x2a]
	ldr r0, [r6, #0x34]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x34]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #1
	lsls r3, r3, #0xa
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r1, #5
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801A20C
	orrs r1, r3
	str r1, [r0]
_0801A20C
	movs r1, #1
	ldr r0, [r6, #0x34]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801A1AA
	movs r5, #0
_0801A220
	movs r2, #0xff
	ldr r1, _0801A318
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xbb
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r2, #0x63
	lsls r1, r1, #2
	adds r6, r0, r1
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x14
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801A2D8
	lsls r0, r5, #2
	ldrh r0, [r1, r0]
	ldr r1, _0801A2D0
	movs r3, #0xff
	ldr r1, [r1]
	movs r2, #0
	adds r1, r1, r5
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0801A220
	ldr r0, _0801A2DC
	movs r2, #0xff
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8
	movs r1, #0x28
	ldr r0, [r0]
	movs r6, #0x7e
	str r0, [r5, #0x50]
	str r2, [sp, #0xc]
	movs r2, #0x30
	str r2, [sp]
	str r1, [sp, #8]
	movs r0, #0x38
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x2C
	bl sub_80137F8
	ldr r0, _0801A2E0
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8
	ldr r0, [r0]
	b _0801A31C
	ALIGN
_0801A2C8 DCDU gUnknown_03003448
_0801A2CC DCDU 0x00000634
_0801A2D0 DCDU gPlayerEntity
_0801A2D4 DCDU gUnknown_0300344C
_0801A2D8 DCDU gUnknown_080507A8
_0801A2DC DCDU 0x000004CC
_0801A2E0 DCDU 0x00000544
_0801A2E4
	DCB 0x20, 0x00, 0x00, 0x00
_0801A2E8 DCDU 0x000005BC
_0801A2EC DCDU gUnknown_08051040
_0801A2F0 DCDU gUnknown_03003EA0
_0801A2F4 DCDU gUnknown_0300345C
_0801A2F8 DCDU gUnknown_03003468
_0801A2FC DCDU gUnknown_03003EA8
_0801A300
	DCB 0x42, 0x67, 0x4D, 0x65, 0x6E, 0x75, 0x4D, 0x61, 0x67, 0x69, 0x63, 0x00
_0801A30C DCDU gUnknown_03003450
_0801A310 DCDU gUnknown_03003E98
_0801A314 DCDU 0x00000CA8
_0801A318 DCDU 0x0000FFFF
_0801A31C
	str r0, [r5, #0x50]
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0x58
	movs r1, #0x38
	str r1, [sp, #8]
	str r2, [sp]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0
	movs r1, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	add r1, pc, #0x4
	subs r1, #0x64
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	movs r2, #0xff
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x88
	ldr r0, _0801A724
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	adds r3, r6, #0
	adds r0, r4, r0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	add r1, pc, #0x4
	subs r1, #0x98
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	ldr r0, _0801A728
	ldr r0, [r0]
	bl sub_800116A
	ldr r5, _0801A72C
	str r0, [r7]
	ldr r1, [r5]
	ldr r2, _0801A730
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	movs r2, #0
	bl sub_80007A0
	movs r0, #0xb6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x32
	strh r0, [r3, #0x2a]
	ldr r0, [r7]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7]
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
	bmi _0801A3D2
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801A3D2
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_8000914
	movs r2, #0xff
	ldr r1, _0801A734
	str r2, [sp, #0xc]
	movs r2, #0x30
	movs r0, #0xc9
	lsls r0, r0, #3
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, r4, r0
	movs r3, #0x14
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, [r5]
	movs r3, #0xff
	adds r0, #0xb0
	ldrb r2, [r0, #3]
	ldrb r1, [r0, #2]
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #0x4d
	movs r2, #0
	adds r0, r6, #0
	bl sub_8013946
	ldr r0, [r5]
	adds r0, #0xb0
	ldrb r5, [r0, #2]
	adds r0, r5, #0
	bl sub_8040684
	adds r6, r0, #0
	cmp r5, #5
	bhi _0801A436
	adds r6, r5, #0
	b _0801A43C
_0801A436
	cmp r6, #0
	bne _0801A43C
	movs r6, #5
_0801A43C
	movs r5, #0
_0801A43E
	ldr r0, _0801A728
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #0x1b
	lsls r2, r2, #6
	adds r1, r1, r4
	adds r7, r1, r2
	movs r1, #1
	cmp r5, r6
	str r0, [r7]
	blo _0801A45A
	movs r1, #0
_0801A45A
	ldr r2, _0801A738
	adds r1, r1, r2
	bl sub_800065C
	movs r0, #0x13
	muls r0, r5
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x3e
	strh r0, [r3, #0x2a]
	ldr r0, [r7]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7]
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
	bmi _0801A498
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801A498
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	blo _0801A43E
	movs r1, #0
	adds r0, r4, #0
	bl sub_8019F60
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x44
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start HandleMagicScreen
HandleMagicScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x100
	add r4, sp, #0x14
	ldr r5, _0801A73C
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
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x70]
	bl sub_80143E0
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x85
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801A740
	movs r2, #0x78
	adds r1, r4, r0
	adds r7, r1, #0
	adds r0, r6, #0
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801A744
	movs r2, #0x78
	adds r1, r4, r0
	adds r0, r7, #0
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x6c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_801A0D2
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	add r1, sp, #0xd4
	str r1, [r3, #0x68]
	add r5, sp, #0x194
	add r6, sp, #0x174
_0801A564
	ldr r0, _0801A748
	movs r2, #0
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi _0801A574
	ldrh r4, [r0, #8]
_0801A574
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi _0801A57E
	ldrh r2, [r0, #4]
_0801A57E
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r1, [sp, #4]
	ldr r1, [r3, #0x68]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [r3, #0x68]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r7, r0, #0x10
	ldr r0, _0801A74C
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
	beq _0801A5CA
	adds r1, r7, #0
	ldr r0, [sp, #8]
	bl sub_800065C
_0801A5CA
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r7, r0, #0x10
	ldr r0, _0801A74C
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
	beq _0801A5FA
	adds r1, r7, #0
	ldr r0, [sp, #0xc]
	bl sub_800065C
_0801A5FA
	lsls r0, r4, #0x16
	bpl _0801A604
	movs r0, #2
	strb r0, [r5]
	b _0801A63E
_0801A604
	lsls r0, r4, #0x17
	bpl _0801A60E
	movs r0, #1
	strb r0, [r5]
	b _0801A63E
_0801A60E
	lsls r0, r4, #0x1e
	bpl _0801A618
	movs r0, #3
	strb r0, [r5]
	b _0801A63E
_0801A618
	lsls r0, r4, #0x1d
	bpl _0801A622
	movs r0, #3
	strb r0, [r5]
	b _0801A63E
_0801A622
	lsls r0, r4, #0x19
	bpl _0801A632
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_8019F60
	b _0801A63E
_0801A632
	lsls r0, r4, #0x18
	bpl _0801A63E
	movs r1, #1
	add r0, sp, #0x14
	bl sub_8019F60
_0801A63E
	bl sub_800EF2A
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801A564
	ldrh r2, [r6, #0x1a]
	ldr r1, _0801A750
	ldrb r0, [r5]
	ldrb r5, [r1, r2]
	ldrh r2, [r6, #0x18]
	ldr r6, _0801A754
	add r4, sp, #0x14
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _0801A682
	cmp r0, #2
	beq _0801A670
	cmp r0, #3
	beq _0801A694
	cmp r0, #6
	bne _0801A69A
	movs r0, #0xb
	bl sub_8018386
	b _0801A69A
_0801A670
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801A6A4
_0801A682
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801A6A4
_0801A694
	movs r0, #0x11
	bl sub_8018386
_0801A69A
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_0801A6A4
	adds r0, r4, #0
	bl sub_8019EE0
	movs r1, #0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x6c]
	bl sub_8014436
	ldr r0, _0801A75C
	ldr r5, _0801A758
	adds r1, r4, r0
	adds r0, #0xff
	adds r0, #0x69
	movs r2, #0x77
	mvns r2, r2
	adds r0, r4, r0
	adds r6, r1, #0
	adds r3, r5, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r2, #0x77
	mvns r2, r2
	adds r7, r1, #0
	adds r0, r6, #0
	adds r3, r5, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	mvns r2, r2
	adds r1, #0xd
	adds r0, r7, #0
	adds r3, r5, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x70]
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
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x100
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801A724 DCDU 0x000005BC
_0801A728 DCDU gUnknown_03003448
_0801A72C DCDU gPlayerEntity
_0801A730 DCDU gUnknown_080507B8
_0801A734 DCDU 0x0000FFFF
_0801A738 DCDU 0x00000C9C
_0801A73C DCDU sub_80143E0
_0801A740 DCDU 0x000004CC
_0801A744 DCDU 0x00000634
_0801A748 DCDU gUnknown_03003444
_0801A74C DCDU gUnknown_03003EA0
_0801A750 DCDU gUnknown_080506E8
_0801A754 DCDU gUnknown_0300345C
_0801A758 DCDU sub_8014436
_0801A75C DCDU 0x00000454
	END
