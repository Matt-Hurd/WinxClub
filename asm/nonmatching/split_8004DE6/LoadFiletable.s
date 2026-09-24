	non_word_aligned_thumb_func_start LoadFiletable
LoadFiletable
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r0, #0
	cmp r0, #0
	sub sp, #0x14
	bne %2
	movs r0, #0xc
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	ldr r0, _08005034
	movs r1, #0
	str r0, [r4]
	ldr r0, _08005038
	str r4, [r0]
	ldr r0, _0800503C
	str r0, [r4]
	movs r0, #1
	lsls r0, r0, #0x1b
	adds r5, r5, r0
	add r0, sp, #0xc
	movs r2, #0
	stm r0!, {r1, r2}
3
	ldr r0, _08005040
	movs r3, #0
	adds r2, r7, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, _08005040
	adds r2, r7, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_803DABC
	adds r2, r0, #0
	adds r1, r6, #0
4
	ldrb r3, [r1]
	cmp r3, #0x53
	bne %5
	ldrb r3, [r1, #1]
	cmp r3, #0x46
	bne %5
	ldrb r3, [r1, #2]
	cmp r3, #0x43
	bne %5
	ldrb r3, [r1, #3]
	cmp r3, #0x44
	beq %6
5
	adds r1, #4
	subs r0, #4
	cmp r0, #0
	bgt %4
	movs r1, #0
6
	cmp r1, #0
	beq %7
	subs r0, r1, r6
	adds r5, r0, r5
	ldr r0, [r1, #4]
	ldr r2, [r1]
	str r0, [sp, #0x10]
	str r2, [sp, #0xc]
	b %8
7
	adds r5, r5, r2
	subs r7, r7, r2
	bne %3
8
	ldr r6, _08005040
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_803DABC
	adds r7, r0, #0
	cmp r0, #8
	bhs %9
	adds r1, r5, r7
	movs r3, #0
	movs r2, #8
	ldr r0, [r6]
	bl sub_800529A
	adds r1, r0, #0
	movs r0, #8
	subs r2, r0, r7
	add r0, sp, #0xc
	adds r0, r0, r7
	bl __16__rt_memcpy
9
	ldr r0, [sp, #0x10]
	adds r7, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, #8
	adds r0, r0, r7
	str r0, [r4, #8]
	ldr r0, [sp, #0x10]
	movs r3, #0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, #8
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	add r2, sp, #0xc
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #4]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r1, #8
	str r1, [sp, #8]
10
	ldr r6, _08005040
	movs r3, #0
	adds r2, r5, #0
	adds r1, r7, #0
	ldr r0, [r6]
	bl sub_800529A
	str r0, [sp, #4]
	adds r2, r5, #0
	adds r1, r7, #0
	ldr r0, [r6]
	bl sub_803DABC
	adds r6, r0, #0
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl __16__rt_memcpy
	ldr r1, [sp, #8]
	adds r7, r7, r6
	adds r1, r1, r6
	str r1, [sp, #8]
	subs r5, r5, r6
	bne %10
	adds r0, r4, #0
	b %1

