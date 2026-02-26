	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT sub_8004C44

	thumb_func_start sub_8018620

sub_8018620
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r1, r0, #0
	bl __16_ll_mulss
	add r6, pc, #0x344
	ldm r6!, {r2, r3}
	subs r6, #8
	bl __16_ll_sdiv
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #0
	bl __16_ll_mulss
	ldm r6!, {r2, r3}
	bl __16_ll_sdiv
	adds r0, r5, r0
	bl sub_8004C44
	lsls r5, r0, #8
	ldr r0, [r4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	str r1, [sp]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	adds r6, r1, #0
	ldr r3, [sp]
	bl __16_ll_srdv
	str r0, [r4]
	ldr r0, [r4, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	adds r2, r0, #0
	adds r0, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl __16_ll_srdv
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
