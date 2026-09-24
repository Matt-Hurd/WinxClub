	thumb_func_start sub_803F9C4
sub_803F9C4
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r7, sp, #0x2c
	ldr r2, [r0]
	ldm r7!, {r5, r6, r7}
	ldr r3, [r2, #0x18]
	adds r4, r0, #0
	adds r2, r3, r2
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	ldr r1, [sp, #0xc]
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x10]
	bl __call_via_r3
	ldr r0, _0803FA38
	cmp r5, r0
	beq %6
	cmp r6, r0
	beq %6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	adds r2, r6, #0
	adds r1, r5, #0
	bl __call_via_r3
6
	cmp r7, #0xff
	beq %7
	movs r2, #0
	str r2, [sp]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r5, r2, r1
	movs r2, #0xff
	adds r1, r7, #0
	bl __call_via_r5
7
	adds r0, r4, #0
	bl sub_8013B76
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
