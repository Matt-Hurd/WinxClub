	non_word_aligned_thumb_func_start sub_800202A
sub_800202A
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, [sp, #8]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r6, r1, r0
	ldr r1, [r1, #8]
	movs r0, #0
	cmp r1, #0
	beq %1
	ldrb r0, [r1]
1
	str r0, [sp, #4]
	cmp r0, #0
	beq %10
2
	ldr r4, [r6, #0x30]
	cmp r4, #0
	beq %9
	ldr r0, [r6, #0x50]
	movs r5, #0
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	beq %9
3
	ldr r0, [r4]
	lsrs r1, r0, #6
	adds r0, #0x3f
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1a
	bne %7
	lsls r1, r0, #0x10
	bpl %4
	bl rand
	ldr r7, [r4]
	adds r1, r0, #0
	lsls r0, r7, #0x11
	lsrs r0, r0, #0x18
	bl __16__rt_sdiv
	lsrs r0, r7, #6
	lsls r0, r0, #6
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	orrs r0, r1
	str r0, [r4]
	b %5
4
	lsls r1, r0, #0x13
	lsrs r0, r0, #6
	lsls r0, r0, #6
	lsrs r1, r1, #0x1a
	orrs r0, r1
	str r0, [r4]
5
	ldr r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bne %6
	ldr r0, [r4, #0x14]
	str r0, [r4, #0xc]
	b %8
6
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b %8
7
	movs r1, #0x40
	bics r0, r1
	str r0, [r4]
8
	ldr r0, [r6, #0x50]
	adds r5, #1
	ldr r0, [r0]
	adds r4, #0x18
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	cmp r0, r5
	bhi %3
9
	ldr r0, [sp, #4]
	adds r6, #0x58
	subs r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	bne %2
10
	movs r0, #0x27
	ldr r1, [sp, #8]
	lsls r0, r0, #6
	adds r0, r1, r0
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

