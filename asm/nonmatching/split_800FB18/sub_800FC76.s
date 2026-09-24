	non_word_aligned_thumb_func_start sub_800FC76
sub_800FC76
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x14
	adds r4, r0, #0
	adds r2, r3, #0
	cmp r1, #0
	sub sp, #4
	bne %19
	movs r1, #0x48
	adds r0, r6, #0
	bl __16__rt_memclr_w
	movs r0, #8
	str r0, [r4, #0x5c]
	movs r0, #0
18
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
19
	ldr r0, _0800FD3C
	movs r3, #0
	adds r2, #0x48
	ldr r0, [r0]
	bl sub_800529A
	adds r5, r0, #0
	movs r2, #0x48
	adds r1, r0, #0
	adds r0, r6, #0
	bl __rt_memcpy_w
	ldr r0, [r4, #0x18]
	movs r2, #1
	lsls r0, r0, #6
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	asrs r1, r0, #0x1f
	adds r7, r1, #0
	adds r6, r0, #0
	lsls r2, r2, #0x18
	bl __16_ll_mullu
	add r2, pc, #0x74
	ldm r2!, {r2, r3}
	bl __16_ll_udiv
	str r0, [r4, #0x68]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #8
	bl __16_ll_shift_l
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	str r0, [r4, #0x60]
	adds r0, r5, #0
	b %18

