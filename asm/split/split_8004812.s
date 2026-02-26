	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803D9A8

	non_word_aligned_thumb_func_start sub_8004812

sub_8004812
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	cmp r0, #0
	beq %6
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
6
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #0x12]
	pop {r4}
	pop {r3}
	bx r3

	END
