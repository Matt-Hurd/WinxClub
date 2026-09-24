	thumb_func_start sub_801175C
sub_801175C
	push {r3, r4, r5, lr}
	bl sub_8011562
	bl sub_80116D4
	ldr r5, _08011A10
	ldr r4, _08011A14
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %32
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r4, #4]
	bl __call_via_r2
32
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq %33
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r4, #4]
	bl __call_via_r2
33
	ldr r0, _08011A14
	adds r0, #0x24
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq %34
	adds r1, r0, #0
	movs r0, #0
	ldr r2, [r4, #4]
	bl __call_via_r2
34
	pop {r3, r4, r5}
	pop {r3}
	bx r3

