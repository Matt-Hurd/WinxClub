	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003C3C

	non_word_aligned_thumb_func_start sub_80133AE

sub_80133AE
	lsls r3, r0, #3
	subs r0, r3, r0
	ldr r3, _08013430
	push {r4}
	ldrh r2, [r1]
	ldr r4, [r3]
	lsls r0, r0, #2
	strh r2, [r4, r0]
	adds r1, #2
	ldrh r2, [r1]
	ldr r4, [r3]
	adds r1, #2
	adds r4, r0, r4
	strh r2, [r4, #2]
	ldr r3, [r3]
	ldm r1!, {r2}
	adds r0, r0, r3
	str r2, [r0, #4]
	ldrb r3, [r1]
	lsls r2, r2, #2
	strb r3, [r0, #0x18]
	adds r3, r1, #4
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r3, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	adds r1, r2, r1
	str r1, [r0, #0xc]
	str r3, [r0, #0x14]
	pop {r4}
	movs r0, #1
	bx lr

	ALIGN
_08013430 DCDU gUnknown_03003C3C

	END
