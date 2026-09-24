	non_word_aligned_thumb_func_start sub_8004F42
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r0, [sp, #0x48]
	adds r7, r2, #0
	ldr r5, [r0, #4]
	adds r6, r1, #0
	adds r5, #8
12
	movs r4, #0
	movs r1, #0x40
	add r0, sp, #8
	bl __16__rt_memclr_w
	cmp r6, #0
	beq %14
	movs r1, #0x5c
	adds r0, r6, #0
	bl strchr
	adds r4, r0, #0
	bne %13
	movs r1, #0x2f
	adds r0, r6, #0
	bl strchr
	adds r4, r0, #0
	bne %13
	adds r0, r6, #0
	bl gameStrlen
	adds r4, r0, r6
13
	subs r2, r4, r6
	adds r1, r6, #0
	add r6, sp, #8
	adds r0, r6, #0
	bl __16__rt_memcpy
	adds r0, r6, #0
	bl strToLower
14
	ldm r5!, {r0}
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
15
	cmp r4, #0
	beq %18
	adds r0, r5, #0
	adds r0, #8
	add r1, sp, #8
	bl strStartsWith
	cmp r0, #0
	beq %18
	ldrb r0, [r4]
	cmp r0, #0
	beq %16
	ldr r0, [r5, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	adds r5, r0, r5
	cmp r6, #0
	beq %20
	adds r6, r4, #1
	b %12
16
	adds r0, r5, #0
17
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	cmp r7, #0
	beq %19
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #8]
	ldr r1, [r5, #4]
	lsls r1, r1, #3
	lsrs r1, r1, #3
	adds r0, r0, r1
	cmp r0, r7
	bne %19
	adds r0, r5, #0
	b %17
19
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #4]
	bl gameStrlen
	adds r0, #4
	lsrs r0, r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #2
	adds r5, r0, r1
	subs r6, #1
	bne %15
20
	movs r0, #0
	b %17
	thumb_func_end sub_8004F42

