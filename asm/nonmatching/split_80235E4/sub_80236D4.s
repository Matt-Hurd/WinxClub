	thumb_func_start sub_80236D4
sub_80236D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	movs r4, #0
	movs r2, #0
	movs r1, #1
	lsls r1, r1, #9
	add r5, sp, #4
	add r0, sp, #4
	bl sub_803F464
	ldr r1, _080239D8
	ldr r0, [r1]
	ldr r1, _080239CC
	ldr r0, [r0, #8]
	ldr r6, [r1, #4]
	adds r7, r6, #0
	adds r7, #0x80
	ldr r1, [r7, #8]
	subs r0, r0, r1
	bl sub_80406C4
	ldr r0, [r6]
	adds r0, r1, r0
	str r0, [r6]
	ldr r1, _080239D8
	movs r6, #1
	ldr r1, [r1]
	lsls r6, r6, #9
	ldr r1, [r1, #8]
	movs r0, #0
	str r1, [r7, #8]
	movs r1, #0
7
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	str r1, [sp, #4]
	blt %7
	ldr r7, _080239CC
	ldr r0, _080239DC
	ldrb r1, [r7]
	cmp r1, #0
	beq %8
	adds r0, #1
	cmp r1, #1
	beq %8
	adds r0, #1
8
	str r0, [r5]
	ldr r1, [r7, #4]
	ldr r1, [r1]
	str r1, [r5, #4]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldrb r1, [r1, #4]
	str r1, [r5, #8]
	ldr r1, [r7, #4]
	adds r1, #0x90
	ldrb r1, [r1]
	str r1, [r5, #0xc]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x14]
	str r1, [r5, #0x10]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x18]
	str r1, [r5, #0x14]
	ldr r1, [r7, #4]
	adds r1, #0x90
	ldrb r1, [r1, #0xc]
	str r1, [r5, #0x18]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x20]
	str r1, [r5, #0x1c]
	ldr r1, [r7, #4]
	adds r1, #0x80
	ldr r1, [r1, #0x24]
	str r1, [r5, #0x20]
	ldr r1, [r7, #4]
	adds r1, #0xb0
	ldrb r1, [r1, #2]
	str r1, [r5, #0x24]
	ldr r1, [r7, #4]
	adds r1, #0xb0
	ldrb r1, [r1, #4]
	str r1, [r5, #0x28]
	adds r5, #0x2c
	movs r1, #0
	movs r0, #2
	bl sub_803FEF8
	ldr r2, _080239E0
	movs r0, #0
9
	lsls r1, r0, #2
	ldr r1, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	stm r5!, {r1}
	blt %9
	movs r0, #0
	add r5, sp, #4
10
	lsls r1, r0, #2
	ldr r1, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	eors r4, r1
	cmp r0, #0x7f
	blt %10
	movs r0, #0xff
	adds r0, #0xfd
	str r4, [r0, r5]
	str r6, [sp]
	ldrb r0, [r7]
	lsls r2, r0, #9
	adds r2, #0x20
	ldr r0, _080239D0
	adds r3, r5, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B314
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

