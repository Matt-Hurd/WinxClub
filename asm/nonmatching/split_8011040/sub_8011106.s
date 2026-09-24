	non_word_aligned_thumb_func_start sub_8011106
	movs r1, #0x1b
	lsls r1, r1, #6
	push {r4, lr}
	adds r4, r0, r1
	adds r1, #0x10
	ldr r2, [r4, #0x14]
	adds r1, r0, r1
	cmp r2, #0
	beq %12
	ldrb r2, [r1, #1]
	cmp r2, #0
	beq %12
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq %12
	movs r0, #0
11
	pop {r4}
	pop {r3}
	bx r3
12
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq %13
	ldrb r1, [r1, #0xf]
	bl sub_8010ED2
	cmp r0, #0
	beq %13
	movs r0, #0
	b %11
13
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ble %14
	movs r0, #0
	b %11
14
	movs r0, #1
	b %11
	thumb_func_end sub_8011106

