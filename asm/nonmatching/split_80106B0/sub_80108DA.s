	non_word_aligned_thumb_func_start sub_80108DA
sub_80108DA
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #1
	lsls r6, r6, #9
	adds r5, r1, #0
	adds r1, r6, #0
	adds r4, r0, #0
	adds r0, r5, #0
	bl __16__rt_memclr
	adds r0, r5, r6
	lsrs r5, r6, #1
	movs r1, #0
	movs r7, #0xff
14
	adds r2, r1, #0
	muls r2, r4
	lsrs r2, r2, #8
	adds r3, r7, #0
	cmp r2, #0xff
	bhi %15
	lsls r3, r2, #0x18
	lsrs r3, r3, #0x18
15
	strb r3, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r5
	blo %14
	movs r1, #0
	mvns r1, r1
	ldrb r1, [r1, r0]
	adds r2, r6, #0
	bl __16__rt_memset
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

