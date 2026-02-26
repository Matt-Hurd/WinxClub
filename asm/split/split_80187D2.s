	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT sub_803F3B4

	non_word_aligned_thumb_func_start sub_80187D2

sub_80187D2
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, [r2]
	adds r7, r2, #0
	ldr r2, [r5]
	sub sp, #0xc
	subs r1, r1, r2
	str r1, [r3]
	ldr r1, [r7, #4]
	ldr r2, [r5, #4]
	adds r4, r3, #0
	subs r1, r1, r2
	adds r2, r3, #4
	str r2, [sp, #8]
	str r1, [r3, #4]
	ldr r1, [r7, #8]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	str r1, [r4, #8]
	adds r1, r4, #0
	bl sub_803F3B4
	adds r6, r0, #0
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_803F3B4
	subs r6, r6, r0
	cmp r6, #0
	ble %52
	adds r1, r4, #0
	adds r0, r4, #0
	bl sub_803F3B4
	str r0, [sp, #4]
	cmp r6, r0
	bge %51
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	adds r2, r0, #0
	ldr r0, [sp, #4]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	ldr r1, [r4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [r4, #4]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [r4, #4]
	str r1, [r4]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r2, [sp, #8]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #1
50
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
51
	ldr r0, [sp, #4]
	cmp r6, r0
	bne %53
	ldm r7!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b %50
52
	cmp r6, #0
	bne %53
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b %50
53
	movs r0, #0
	b %50

	END
