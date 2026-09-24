	thumb_func_start sub_800FBC0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	beq %4
	cmp r0, #0
	bne %6
4
	movs r0, #0
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3
6
	ldr r1, _0800FD3C
	movs r3, #0
	ldr r5, [r1]
	adds r1, r0, #0
	movs r2, #0x48
	adds r0, r5, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bhs %16
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
7
	DCB 0x30
8
	DCB 0x03
9
	DCB 0x03
10
	DCB 0x12
11
	DCB 0x32
12
	DCB 0x21
loc_800fbfe
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x6c
	bl sub_803DA80
	adds r5, r0, #0
	beq %13
	adds r0, r5, #0
	bl sub_800FAB0
13
	str r5, [r4]
	b %17
loc_800fc1c
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x78
	bl sub_803DA80
	adds r5, r0, #0
	beq %14
	adds r0, r5, #0
	bl sub_800F264
14
	str r5, [r4]
	b %17
loc_800fc3a
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x8c
	bl sub_803DA80
	adds r5, r0, #0
	beq %15
	adds r0, r5, #0
	bl sub_800F72C
15
	str r5, [r4]
	b %17
16
	movs r0, #0
	str r0, [r4]
17
	ldr r1, [r4]
	movs r0, #0
	cmp r1, #0
	beq %5
	ldr r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	b %5
	thumb_func_end sub_800FBC0

