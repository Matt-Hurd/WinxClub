	thumb_func_start sub_801352C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080137E0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80134F8
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq %6
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq %5
	movs r3, #0
	movs r2, #0
	bl sub_8041274
	b %6
5
	adds r0, r1, #0
	bl __da__FPv
6
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq %7
	bl sub_803DA18
7
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %8
	bl __da__FPv
8
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq %9
	bl __da__FPv
9
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_801352C

