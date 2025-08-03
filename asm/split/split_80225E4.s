	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT sub_8000DE6
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8014864
	IMPORT sub_8014B02
	IMPORT sub_80137F8
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_8018C48
	IMPORT sub_8022306
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT __call_via_r2
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803D66C
	IMPORT sub_803F9C4

	thumb_func_start sub_80225E4
sub_80225E4
	push {r4, r5, r6, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r0, #0xf0
	sub sp, #0x10
	strb r5, [r0, #0xa]
	strb r5, [r0, #0xb]
	strb r5, [r0, #0xc]
	strb r5, [r0, #9]
	strb r5, [r0, #8]
	str r5, [r4]
	str r5, [r4, #4]
	add r0, pc, #0x214
	bl sub_800EF60
	ldr r6, _08022824
	ldr r0, [r6]
	cmp r0, #0
	beq _08022628
	bl sub_800B72A
	cmp r0, #0
	beq _0802261C
	ldr r0, [r6]
	bl sub_800B6A8
	cmp r0, #0
	beq _08022628
_0802261C
	ldr r0, _08022828
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_08022628
	adds r1, r4, #0
	adds r1, #8
	adds r3, r5, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r2, #4
	movs r0, #0x90
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0xa
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r6, #0x44
	adds r3, r6, #0
	movs r2, #0
	adds r0, #0x79
	movs r1, #1
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r5, #0
	bl sub_8014864
	add r1, pc, #0x4
	subs r1, #0xa0
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	movs r2, #4
	str r2, [sp, #0xc]
	movs r0, #0x90
	str r0, [sp, #4]
	movs r2, #0x28
	movs r1, #0x18
	str r1, [sp, #8]
	str r2, [sp]
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	movs r1, #1
	movs r3, #0xf0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r1, #0xff
	adds r1, #0x58
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	movs r2, #4
	movs r0, #0x90
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x28
	movs r0, #0x4d
	movs r1, #0x30
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	adds r3, r6, #0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #5
	adds r0, r5, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r5, #0
	bl sub_8014B02
	ldr r0, [r5]
	ldr r1, [r0, #0x2c]
	adds r2, r1, r0
	movs r1, #1
	adds r0, r5, #0
	bl __call_via_r2
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x138
	bl sub_80137F8
	bl sub_8018070
	movs r0, #0x17
	lsls r0, r0, #5
	adds r4, r4, r0
	movs r5, #0x10
	movs r2, #0x3f
	movs r1, #8
	adds r0, r4, #0
	strb r5, [r4, #6]
	bl sub_8004784
	ldrb r2, [r4, #6]
	subs r1, r5, r2
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8022726
sub_8022726
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xf8
	mov r6, sp
	add r1, sp, #0xf8
	add r0, sp, #8
	ldr r3, _08022830
	movs r2, #0x78
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x2f0]
	bl sub_80143E0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x79
	adds r5, r0, #0
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0x78
	str r0, [sp, #0x2ec]
	bl sub_80143E0
	movs r0, #0x4d
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x2e8]
	bl sub_80143E0
	movs r0, #0x17
	lsls r0, r0, #5
	adds r0, r6, r0
	bl sub_80046F8
	adds r0, r6, #0
	bl sub_80225E4
	ldr r7, _08022828
	adds r4, r6, #0
	adds r4, #0xf0
_0802277E
	ldr r0, _08022834
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0802278C
	ldrh r1, [r0, #6]
_0802278C
	lsls r0, r1, #0x1e
	bpl _0802279A
	ldr r0, [r7]
	bl sub_8028C2E
	movs r0, #3
	strb r0, [r4, #0xa]
_0802279A
	adds r0, r6, #0
	bl sub_8022306
	bl sub_800EF2A
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802277E
	movs r0, #8
	bl sub_8018386
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014864
	movs r2, #0
	movs r1, #2
	ldr r0, [r7]
	bl sub_8028A7C
	bl sub_80180BE
	ldr r4, _08022838
	mov r1, sp
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	movs r1, #0
	ldr r0, [sp, #0x2e8]
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x2ec]
	bl sub_8014436
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x2f0]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x80
	ldr r3, _0802283C
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0xf8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08022814 DCDU 0x654D6742
_08022818 DCDU 0x7243756E
_0802281C DCDU 0x74696465
_08022820 DCDU 0x00000073
_08022824 DCDU gUnknown_03003460
_08022828 DCDU gUnknown_0300345C
_0802282C DCDU 0x00000020
_08022830 DCDU sub_80143E0
_08022834 DCDU gUnknown_03003444
_08022838 DCDU gUnknown_03003448
_0802283C DCDU sub_8014436
	END
