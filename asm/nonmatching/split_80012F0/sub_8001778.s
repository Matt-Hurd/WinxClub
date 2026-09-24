	thumb_func_start sub_8001778
sub_8001778
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x34]
	ldr r0, [r1, #8]
	adds r4, r1, #0
	lsls r1, r3, #4
	adds r5, r1, r2
	ldm r5!, {r1, r2, r3}
	sub sp, #0x14
	stm r4!, {r1, r2, r3}
	ldm r5!, {r3}
	movs r1, #0xf0
	stm r4!, {r3}
	subs r4, #0x10
	str r0, [r4, #8]
	ldr r0, [r4]
	subs r5, #0x10
	bics r0, r1
	adds r0, #0x60
	str r0, [r4]
	mov r0, sp
	mov r7, sp
	bl sub_8018110
	ldr r0, [r6, #0x38]
	ldr r1, [r5, #8]
	adds r2, r4, #0
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r7, #0
	bl sub_801819E
	movs r1, #0
	adds r0, r7, #0
	bl sub_8018160
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
