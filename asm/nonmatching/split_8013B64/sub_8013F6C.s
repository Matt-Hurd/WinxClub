	thumb_func_start sub_8013F6C
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0x48]
	movs r5, #0
	adds r4, r0, #0
	cmp r1, #0
	beq %54
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq %52
	adds r3, r5, #0
	movs r2, #0
	bl sub_8041274
	b %53
52
	adds r0, r1, #0
	bl __da__FPv
53
	str r5, [r4, #0x48]
54
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %55
	bl __da__FPv
	str r5, [r4, #0x14]
55
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq %56
	bl sub_803DA18
	str r5, [r4, #0x4c]
56
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8013F6C

