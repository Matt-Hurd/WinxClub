	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT PlayIntroLogo
	IMPORT PlayIntroMovie
	IMPORT sub_8004716
	IMPORT sub_800EF2A

	non_word_aligned_thumb_func_start HandleIntro

HandleIntro
	push {r4, lr}
	sub sp, #0x10
	mov r4, sp
	add r0, sp, #4
	bl sub_8004716
	movs r0, #0
	add r3, sp, #0
	strb r0, [r3]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	ldrb r0, [r3]
	cmp r0, #5
	bhs %12
11
	adds r0, r4, #0
	bl PlayIntroLogo
	bl sub_800EF2A
	add r3, sp, #0
	ldrb r0, [r3]
	cmp r0, #5
	blo %11
12
	adds r0, r4, #0
	bl PlayIntroMovie
	add sp, #0x10
	pop {r4}
	pop {r3}
	bx r3
	ALIGN

	END
