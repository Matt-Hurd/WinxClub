	thumb_func_start sub_8036B7C
sub_8036B7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08036CDC
	adds r5, r1, #0
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	adds r6, r2, #0
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %2
	movs r0, #0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	movs r3, #0x97
	ldrsb r0, [r5, r3]
	adds r0, r0, r6
	subs r0, #2
	cmp r0, #6
	bhs %9
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
3
	DCB 0x02
4
	DCB 0x02
5
	DCB 0x0D
6
	DCB 0x06
7
	DCB 0x0D
8
	DCB 0x06
loc_8036bc2
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %10
loc_8036bca
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %10
loc_8036bd8
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %10
9
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
10
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b %1

