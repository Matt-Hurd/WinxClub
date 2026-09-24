	non_word_aligned_thumb_func_start sub_800FFBA
sub_800FFBA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	str r1, [r0, #0x14]
	adds r4, r0, #0
	adds r0, r1, #0
	adds r6, r3, #0
	cmp r3, #0
	beq %11
	cmp r5, #0
	bne %12
11
	ldr r5, [r4, #0x24]
	ldr r6, [r4, #0x20]
12
	movs r3, #0
	movs r2, #0
	str r5, [r4, #0x24]
	str r6, [r4, #0x20]
	movs r1, #2
	bl sub_802EF0A
	adds r7, r0, #0
	beq %14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %13
	adds r0, r7, #0
	bl sub_800FBA0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	bl sub_800FB96
	ldr r1, [sp]
	cmp r1, r0
	beq %14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %13
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	movs r3, #0
	str r3, [r4, #0x10]
13
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r7, #0
	bl sub_800FBC0
14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %15
	adds r1, r5, #0
	adds r0, r6, #0
	bl __16__rt_memclr
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl __call_via_r3
	ldr r1, _0801020C
	movs r2, #0xb
	ldr r0, [r4, #0x10]
	bl sub_800FC6C
	ldr r4, [r4, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_80106B0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r7, #0
	adds r0, r4, #0
	bl __call_via_r5
15
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

