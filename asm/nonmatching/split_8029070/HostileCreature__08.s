	thumb_func_start HostileCreature__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	beq %8
	cmp r2, #0x24
	bne %12
	movs r0, #1
7
	add sp, #4
	pop {r3}
	bx r3
8
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x1c]
	cmp r2, #4
	bne %11
	ldr r2, [r1, #0x2c]
	movs r3, #8
	bics r2, r3
	str r2, [r1, #0x2c]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	adds r1, #0x80
	ldr r2, [r1, #0x38]
	lsls r1, r2, #0x1f
	bmi %10
	adds r1, r0, #0
	adds r1, #0x90
	ldrb r3, [r1, #9]
	cmp r3, #0
	beq %10
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne %9
	ldr r2, [r0, #0x74]
	str r2, [r0, #0x70]
9
	ldr r0, _08029368
	movs r2, #0x29
	ldr r0, [r0]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrb r2, [r0, #2]
	adds r2, #0xff
	strb r2, [r0, #2]
	ldrb r0, [r1, #9]
	adds r0, #0xff
	strb r0, [r1, #9]
10
	movs r0, #1
	b %7
11
	movs r0, #0
	b %7
12
	bl m08__7DefaultFv
	b %7
	thumb_func_end HostileCreature__08
