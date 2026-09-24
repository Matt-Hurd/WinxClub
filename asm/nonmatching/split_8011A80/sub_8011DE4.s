	thumb_func_start sub_8011DE4
	ldr r3, _0801209C
	push {r4}
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r0, [r3, #0x16]
	ldr r0, _080120A0
	ldr r1, _080120A4
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq %46
	movs r3, #0x10
44
	ldrh r2, [r1, #4]
	lsls r4, r2, #0x1f
	bmi %45
	orrs r2, r3
	strh r2, [r1, #4]
45
	subs r0, #1
	adds r1, #0x4c
	cmp r0, #0
	bne %44
46
	pop {r4}
	bx lr
	thumb_func_end sub_8011DE4

