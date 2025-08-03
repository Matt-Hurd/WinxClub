	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_80012F0
	IMPORT sub_8001338

	thumb_func_start sub_803F170
sub_803F170
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803F1A8
	adds r5, r1, #0
	ldr r1, [r4]
	ldr r0, [r0]
	beq _0803F18A
	lsls r1, r1, #0x1c
	bmi _0803F194
	adds r1, r4, #0
	bl sub_80012F0
	b _0803F194
_0803F18A
	lsls r1, r1, #0x1c
	bpl _0803F194
	adds r1, r4, #0
	bl sub_8001338
_0803F194
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r5, #3
	orrs r0, r1
	str r0, [r4]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0803F1A8 DCDU gUnknown_03003EB8
	END