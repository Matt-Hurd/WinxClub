	thumb_func_start sub_800F528
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r2, #0
	sub sp, #0xc
	str r2, [sp, #8]
	bl sub_800F4F0
	cmp r5, #0
	beq %9
	adds r0, r5, #0
	movs r1, #0
	ldr r2, [r4, #0x60]
	bl __16_ll_mulls
	movs r2, #8
	bl __16_ll_ushift_r
	lsrs r6, r0, #1
	lsls r6, r6, #1
	adds r0, r6, #0
	bl sub_80405F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	cmp r1, r6
	bhi %2
	movs r5, #0
	str r5, [r0, #0x10]
1
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	ldr r2, [sp, #4]
	subs r1, r1, r6
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r0, #0x6e
	ldrh r0, [r0, r4]
	lsls r0, r0, #1
	adds r0, #3
	lsrs r6, r0, #2
	ldr r0, [r4, #0x70]
	lsls r6, r6, #2
	adds r0, #0x80
	ldr r7, [r0, #4]
3
	ldr r0, _0800F718
	movs r3, #0
	adds r2, r6, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_800529A
	str r0, [sp]
	ldr r0, _0800F718
	adds r2, r6, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_803DABC
	b %5
4
	ldr r2, [sp]
	subs r0, #2
	ldrh r1, [r2]
	adds r2, #2
	str r2, [sp]
	ldr r2, [sp, #8]
	subs r5, #1
	adds r2, r1, r2
	subs r6, #2
	adds r7, #2
	str r2, [sp, #8]
5
	cmp r0, #0
	beq %6
	cmp r5, #0
	bne %4
	b %7
6
	cmp r5, #0
	beq %7
	cmp r6, #0
	bne %3
7
	ldr r0, [r4, #0x70]
	movs r1, #0x88
	ldr r1, [r1, r0]
	ldr r2, [sp, #8]
	adds r0, #0x1c
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r4, #0x74]
	movs r7, #0
	str r7, [r0, #0x14]
	str r7, [r0]
	str r7, [r0, #8]
	str r7, [r0, #0x10]
	str r7, [r0, #4]
	str r7, [r0, #0xc]
	ldr r0, [r4, #0x70]
	movs r1, #0x88
	ldr r1, [r1, r0]
	str r1, [r0, #0x30]
	ldr r0, [r4, #0x70]
	str r7, [r0, #0x34]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq %9
	ldr r1, _0800F71C
	ldr r0, _0800F720
	ldr r5, [r1]
	str r0, [r1]
	movs r6, #1
8
	ldr r1, [r4, #0x70]
	ldr r0, _0800F718
	adds r1, #0x80
	ldr r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	adds r3, r7, #0
	bl sub_800529A
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r1, r0
	b %10
9
	b %12
10
	ldr r0, [sp, #4]
	cmp r1, r0
	bhs %11
	adds r0, r4, #0
	bl sub_800F312
	ldr r1, [r4, #8]
	adds r0, r6, #0
	lsls r0, r1
	ldr r1, [sp, #4]
	subs r0, r1, r0
	str r0, [sp, #4]
	b %8
11
	adds r0, r4, #0
	ldr r1, [sp, #4]
	bl sub_800F312
	ldr r1, _0800F71C
	str r5, [r1]
12
	ldr r0, [r4, #0x70]
	movs r5, #0
	adds r0, #0x80
	str r5, [r0, #0xc]
	ldr r1, [r4, #0x70]
	ldr r0, _0800F718
	adds r1, #0x80
	ldr r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	adds r3, r5, #0
	bl sub_800529A
	movs r6, #1
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r1, r0
	adds r0, r4, #0
	bl sub_800F312
	str r5, [r4, #0x10]
	str r6, [r4, #0x5c]
	b %1
	thumb_func_end sub_800F528

