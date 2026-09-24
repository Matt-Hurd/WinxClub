	non_word_aligned_thumb_func_start sub_80023BA
	push {r4, lr}
	movs r2, #0x13
	lsls r2, r2, #7
	adds r2, r0, r2
	ldr r2, [r2, #0x20]
	ldr r3, [r1]
	adds r2, #0x38
	ldr r4, [r2]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	subs r3, r3, r4
	subs r1, r1, r2
	sub sp, #8
	str r1, [sp, #4]
	mov r1, sp
	str r3, [sp]
	movs r2, #0
	bl sub_800DEF8
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_80023BA
