	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003468
	IMPORT sub_80050FA
	IMPORT CallSoftReset
	IMPORT sub_800E53C
	IMPORT maybeInitTransitionLevelScreen
	IMPORT sub_800EF2A
	IMPORT maybeLoadOrRenderBgImage
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_8013B9C
	IMPORT sub_8013C40
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT FadeToImage
	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r4
	IMPORT __call_via_r5

	thumb_func_start sub_803B318
sub_803B318
	push {r4, lr}
	adds r4, r0, #0
	bl FadeToBlack
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #0
	bl sub_80050FA
	movs r0, #2
	bl SetNextGlobalFunction
	bl CallSoftReset
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803B342
sub_803B342
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	sub sp, #0xc
	bl sub_800E53C
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	add r0, pc, #0x160
	bl maybeLoadOrRenderBgImage
	ldr r0, _0803B4C8
	ldr r0, [r0]
	bl sub_80050FA
	movs r1, #1
	adds r0, r4, #0
	bl sub_8014B02
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x2c]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	movs r2, #0x14
	movs r1, #0x3c
	bl __call_via_r3
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x78
	movs r1, #0x78
	bl __call_via_r3
	movs r2, #0
	str r2, [sp]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r5, r2, r1
	movs r2, #0xff
	movs r1, #4
	bl __call_via_r5
	adds r0, r4, #0
	bl sub_8013B76
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r1, #0
	movs r2, #1
	str r2, [sp, #8]
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #6
	movs r2, #4
	movs r3, #3
	adds r0, r4, #0
	bl sub_8013C40
	bl FadeToImage
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start HandlePostGameCredits
HandlePostGameCredits
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_80143E0
	movs r4, #0
	adds r0, r5, #0
	bl sub_803B342
	adds r0, r5, #0
	adds r0, #0x20
	str r0, [sp, #0x80]
	movs r6, #0
	b _0803B428
_0803B424
	cmp r4, #0
	bne _0803B466
_0803B428
	ldr r0, [sp, #0x80]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0803B464
	movs r2, #0
	ldr r0, [sp, #8]
	str r2, [sp]
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	movs r2, #0x40
	adds r4, r0, r1
	movs r1, #4
	adds r3, r6, #0
	adds r0, r5, #0
	bl __call_via_r4
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, _0803B4CC
	bl sub_80138E2
	movs r2, #0
	movs r1, #0xa
	adds r0, r5, #0
	str r2, [sp]
	ldr r3, _0803B4D0
	bl sub_8013B9C
	movs r4, #1
_0803B464
	ldr r7, _0803B4D4
_0803B466
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	bl sub_800EF2A
	cmp r4, #0
	beq _0803B424
	ldr r0, [r7]
	adds r1, r6, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0803B482
	ldrh r1, [r0, #6]
_0803B482
	lsls r0, r1, #0x10
	beq _0803B424
	bl FadeToBlack
	ldr r1, [sp, #8]
	adds r0, r5, #0
	ldr r1, [r1, #4]
	ldr r2, [sp, #8]
	adds r1, r1, r2
	bl __call_via_r1
	movs r0, #0
	bl sub_80050FA
	movs r0, #2
	bl SetNextGlobalFunction
	bl CallSoftReset
	movs r1, #0
	add r0, sp, #8
	bl sub_8014436
	add sp, #0x84
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803B4B8 DCDU 0x654D6742
_0803B4BC DCDU 0x7243756E
_0803B4C0 DCDU 0x74696465
_0803B4C4 DCDU 0x00000073
_0803B4C8 DCDU gUnknown_03003468
_0803B4CC DCDU 0x000004DC
_0803B4D0 DCDU 0x0000FFFF
_0803B4D4 DCDU gUnknown_03003444
	END
