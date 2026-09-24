	thumb_func_start sub_802F8A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	movs r1, #3
	lsls r1, r1, #0x11
	subs r1, r0, r1
	movs r0, #0xa2
	ldrh r0, [r0, r4]
	adds r5, r4, #0
	adds r5, #0x58
	movs r3, #0
	cmp r0, #0
	sub sp, #8
	beq %1
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r6, [r0]
	ldr r2, [r5]
	adds r2, r2, r6
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r0, #4]
	adds r0, r2, r0
	str r0, [r5, #4]
1
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	adds r2, r2, r1
	cmp r0, #0
	blt %3
	cmp r2, #0
	blt %3
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp]
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %2
	adds r1, r5, #0
	bl sub_803FF24
2
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
3
	str r3, [r4, #0x58]
	str r3, [r4, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x2c]
	adds r5, r3, #0
	mov r1, sp
	bl sub_803FF24
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, sp
	bl sub_803FF24
	b %2
	thumb_func_end sub_802F8A0

