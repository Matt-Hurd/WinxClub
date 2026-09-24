	thumb_func_start sub_800242C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r1, #0
	lsrs r0, r0, #0x10
	sub sp, #0xc
	bne %1
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x10
	beq %9
1
	movs r0, #0
	movs r1, #0x13
	lsls r1, r1, #7
	ldr r7, _08002578
	adds r6, r5, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
2
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r6, #0x20]
	adds r1, #0x38
	ldm r1!, {r0, r1}
	ldr r2, [r4]
	cmp r0, r2
	beq %3
	subs r0, r2, r0
	str r0, [sp, #4]
3
	ldr r0, [r4, #4]
	cmp r1, r0
	beq %4
	subs r0, r0, r1
	str r0, [sp, #8]
4
	movs r1, #1
	ldr r0, [sp, #4]
	lsls r1, r1, #0x12
	cmp r0, r1
	blt %5
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	b %6
5
	ldr r2, _0800257C
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt %6
	str r7, [sp, #4]
6
	ldr r0, [sp, #8]
	cmp r0, r1
	blt %7
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	b %8
7
	ldr r2, _0800257C
	ldr r0, [sp, #8]
	cmp r0, r2
	bgt %8
	str r7, [sp, #8]
8
	movs r2, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_800DEF8
	adds r0, r5, #0
	bl sub_800E178
	ldr r0, [sp, #4]
	cmp r0, #0
	bne %2
	ldr r0, [sp, #8]
	cmp r0, #0
	bne %2
9
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800242C

