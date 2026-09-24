	thumb_func_start sub_802363C
sub_802363C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, sp, #8
	movs r2, #0
	movs r1, #0x20
	adds r0, r4, #0
	bl sub_803F464
	ldr r5, _080239CC
	ldr r0, [r5, #8]
	cmp r0, #0
	bne %3
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #4
	bl sub_803DA80
	cmp r0, #0
	beq %2
	strb r6, [r0]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	strb r6, [r0, #3]
2
	str r0, [r5, #8]
3
	movs r2, #0x20
	str r2, [sp]
	ldr r0, _080239D0
	movs r2, #0
	adds r3, r4, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B3BA
	movs r0, #0
4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	blo %4
	ldr r1, _080239C8
	ldr r0, [r4]
	cmp r0, r1
	bne %6
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq %6
	ldr r0, [r4, #0xc]
	cmp r0, #5
	bhs %6
	ldr r1, [r4, #4]
	ldr r2, [r5, #8]
	strb r1, [r2]
	ldr r1, [r4, #8]
	strb r1, [r2, #1]
	ldr r1, [r4, #0xc]
	strb r1, [r2, #3]
	ldr r0, [r4, #0x10]
	strb r0, [r2, #2]
5
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r3}
	bx r3
6
	ldr r1, [r5, #8]
	movs r0, #0xa
	strb r0, [r1]
	strb r0, [r1, #1]
	movs r0, #5
	strb r0, [r1, #2]
	ldr r0, _080239D4
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b %5

