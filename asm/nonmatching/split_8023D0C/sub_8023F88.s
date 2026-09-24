	thumb_func_start sub_8023F88
sub_8023F88
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #4
	cmp r0, #0
	beq %31
	adds r0, r5, #0
	bl sub_8023DD0
31
	movs r4, #0
	movs r7, #0
32
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq %33
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0xdc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x1c]
33
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x10
	blo %32
	adds r0, r5, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x1d
	bl sub_8014436
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %34
	adds r0, r5, #0
	bl sub_803DA18
34
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

