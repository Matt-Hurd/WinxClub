	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT sub_803F72C
	IMPORT sub_803FAD4
	IMPORT sub_803FB24

	non_word_aligned_thumb_func_start sub_80179BE

sub_80179BE
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne %29
	ldrb r5, [r0, #0x14]
29
	ldr r0, _08017AA8
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	adds r0, r4, #0
	str r1, [r4, #8]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08017AA8 DCDU gUnknown_03003E88

	END
