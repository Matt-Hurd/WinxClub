	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_801D788
	IMPORT sub_801D9B0

	non_word_aligned_thumb_func_start sub_801DA2A

sub_801DA2A
	push {r4, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	bl sub_801D9B0
	cmp r0, #0
	beq %13
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
13
	pop {r4}
	pop {r3}
	bx r3

	END
