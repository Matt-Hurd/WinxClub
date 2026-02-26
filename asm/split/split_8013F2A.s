	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __da__FPv
	IMPORT sub_8041274

	non_word_aligned_thumb_func_start sub_8013F2A

sub_8013F2A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	str r1, [r0, #0x44]
	bne %51
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq %51
	ldr r0, [r4, #0x50]
	movs r5, #0
	cmp r0, #0
	beq %49
	adds r3, r5, #0
	movs r2, #0
	bl sub_8041274
	b %50
49
	adds r0, r1, #0
	bl __da__FPv
50
	str r5, [r4, #0x48]
51
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	END
