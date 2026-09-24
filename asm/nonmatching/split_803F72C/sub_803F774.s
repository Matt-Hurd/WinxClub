	thumb_func_start sub_803F774
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r3, #0x1a
	ldrsh r1, [r0, r3]
	sub sp, #0xc
	movs r3, #0x18
	str r1, [sp, #4]
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	movs r0, #0
	str r1, [sp]
	strb r0, [r4]
	adds r7, r6, #0
	adds r5, r2, #0
	adds r7, #0x60
	strb r0, [r2]
	b %4
3
	ldrb r1, [r7, #0xf]
	muls r0, r1
	ldr r1, [r6, #0x54]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
4
	ldrb r0, [r5]
	ldrb r1, [r7, #0xe]
	cmp r0, r1
	bhs %6
	ldr r1, [sp, #4]
	cmp r1, #0xa0
	blt %3
	b %6
5
	ldr r1, [r6, #0x54]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
6
	ldrb r0, [r4]
	ldrb r1, [r7, #0xf]
	cmp r0, r1
	bhs %7
	ldr r1, [sp]
	cmp r1, #0xf0
	blt %5
7
	ldrb r0, [r4]
	cmp r0, #0
	bne %8
	strb r0, [r5]
	b %9
8
	ldrb r0, [r5]
	cmp r0, #0
	bne %10
9
	movs r0, #0
	strb r0, [r4]
10
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_803F774

