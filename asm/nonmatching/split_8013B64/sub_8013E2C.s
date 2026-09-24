	thumb_func_start sub_8013E2C
sub_8013E2C
	push {r4}
	ldrb r1, [r0, #0xc]
	ldr r2, _08013FF0
	adds r2, #0xc
	lsls r1, r1, #2
	ldr r3, [r2, r1]
	cmp r3, #0
	beq %41
	str r0, [r3, #4]
41
	ldr r3, _08013FF0
	ldr r4, [r3, r1]
	cmp r4, #0
	bne %42
	str r0, [r3, r1]
42
	ldr r3, [r2, r1]
	str r3, [r0, #8]
	str r0, [r2, r1]
	movs r1, #0
	str r1, [r0, #4]
	pop {r4}
	bx lr

