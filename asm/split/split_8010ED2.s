	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8010ED2

sub_8010ED2
	cmp r1, #0xb
	blo %11
	movs r0, #0
	bx lr
11
	movs r2, #0x1b
	lsls r2, r2, #6
	adds r2, r0, r2
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne %12
	movs r2, #0x6d
	lsls r2, r2, #4
	adds r2, r0, r2
	ldrb r2, [r2]
	cmp r2, r1
	bne %12
	movs r0, #0
	bx lr
12
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r1, r0
	movs r1, #0x19
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne %13
	bx lr
13
	movs r0, #1
	bx lr

	END
