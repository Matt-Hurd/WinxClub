	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT __da__FPv
	IMPORT sub_803DA9C

	non_word_aligned_thumb_func_start sub_80315CE

sub_80315CE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	adds r5, r1, #0
	bl __da__FPv
	movs r6, #0
	str r6, [r4, #0xc]
	cmp r5, #0
	beq %4
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r0, r5, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0xc]
4
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	END
