	thumb_func_start ToggleObjectGroup__04
ToggleObjectGroup__04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq %20
	cmp r0, #0x1f
	beq %21
	cmp r0, #0x22
	bne %22
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
19
	pop {r4}
	pop {r3}
	bx r3
20
	adds r0, r4, #0
	bl sub_803554A
	b %19
21
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne %19
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b %19
22
	adds r0, r4, #0
	bl m04__7DefaultFv
	b %19

