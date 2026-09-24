	thumb_func_start sub_80102D8
sub_80102D8
	push {r3, r4, r5, lr}
	ldr r5, _080103C4
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq %6
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
6
	movs r0, #0x54
	ldrb r0, [r0, r4]
	cmp r0, #0xb
	beq %7
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
7
	bl sub_80081A8
	movs r0, #0xb9
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #4]
	adds r0, r4, #0
	bl sub_8011040
	ldr r0, [r5]
	cmp r0, #0
	beq %8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl __call_via_r1
	cmp r0, #0
	beq %8
	ldr r0, [r5]
	ldr r1, [r4, #0x64]
	ldr r2, [r0]
	ldr r3, [r2, #0xc]
	adds r2, r3, r2
	bl __call_via_r2
8
	adds r0, r4, #0
	bl sub_801115C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

