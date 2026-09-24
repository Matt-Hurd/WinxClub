	thumb_func_start sub_8037534
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r3, #0
	ldr r3, [r5, #0x1c]
	cmp r3, #0xf
	beq %1
	cmp r3, #0x10
	beq %1
	cmp r3, #0x20
	bne %3
1
	movs r0, #0
2
	pop {r4, r5, r6}
	pop {r3}
	bx r3
3
	ldr r3, [r5, #0xc]
	movs r6, #0
	lsls r3, r3, #1
	lsrs r3, r3, #0x14
	cmp r3, #0
	beq %4
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r6, [r4, #0x34]
	movs r0, #0
	b %2
4
	movs r3, #0x97
	ldrsb r1, [r1, r3]
	adds r1, r1, r2
	subs r1, #2
	cmp r1, #6
	bhs %12
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
5
	DCB 0x02
6
	DCB 0x02
7
	DCB 0x34
8
	DCB 0x06
9
	DCB 0x12
10
	DCB 0x06
loc_803758e
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %13
loc_8037596
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r0, r2, r0
	strb r0, [r1, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %13
loc_80375ae
	ldr r0, _08037720
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq %11
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %11
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r2, [r0, #6]
	subs r1, r2, r1
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %13
11
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %13
loc_80375f2
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %13
12
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
13
	movs r0, #0xb6
	ldrsb r0, [r0, r4]
	cmp r0, #0
	bgt %14
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08037724
	ldr r0, [r0]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_802B0CA
14
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r6, [r4, #0x34]
	movs r0, #1
	b %2
	thumb_func_end sub_8037534

