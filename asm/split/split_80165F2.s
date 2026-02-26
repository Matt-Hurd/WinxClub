	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80164E6

	non_word_aligned_thumb_func_start sub_80165F2

sub_80165F2
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq %16
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
16
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strb r0, [r4, #8]
	pop {r4}
	pop {r3}
	bx r3

	END
