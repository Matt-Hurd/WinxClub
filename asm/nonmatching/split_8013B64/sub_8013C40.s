	thumb_func_start sub_8013C40
sub_8013C40
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, [sp, #0x30]
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq %6
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
6
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	movs r1, #0x38
	ldrb r1, [r1, r4]
	ldrh r0, [r0, #2]
	muls r0, r1
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	movs r0, #2
	strb r0, [r7, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	cmp r0, #0
	beq %7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	subs r0, #0xc
7
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	movs r3, #0
	strb r1, [r0, #4]
	str r3, [r0]
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #0x10
	strb r1, [r4, #0x1c]
	ldr r1, [sp, #0xc]
	cmp r1, #5
	bhs %15
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
8
	DCB 0x02
9
	DCB 0x05
10
	DCB 0x0E
11
	DCB 0x11
12
	DCB 0x13, 0x00
loc_8013cb6
	movs r3, #0
	strh r3, [r4, #0x22]
	b %15
loc_8013cbc
	ldrh r1, [r4, #0x1e]
	cmp r1, r5
	bls %13
	subs r1, r1, r5
	NEGS r1, r1
	b %14
13
	NEGS r1, r1
14
	strh r1, [r4, #0x22]
	b %15
loc_8013cce
	NEGS r1, r5
	strh r1, [r4, #0x22]
	b %15
loc_8013cd4
	strh r5, [r4, #0x22]
	b %15
loc_8013cd8
	ldrh r1, [r4, #0x1e]
	NEGS r1, r1
	strh r1, [r4, #0x22]
15
	ldr r1, [sp, #0x10]
	cmp r1, #5
	bhs %23
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
16
	DCB 0x02
17
	DCB 0x05
18
	DCB 0x0E
19
	DCB 0x11
20
	DCB 0x13, 0x00
loc_8013cf2
	movs r3, #0
	strh r3, [r0, #6]
	b %23
loc_8013cf8
	ldrh r1, [r4, #0x1e]
	cmp r1, r5
	bls %21
	subs r1, r1, r5
	NEGS r1, r1
	b %22
21
	NEGS r1, r1
22
	strh r1, [r0, #6]
	b %23
loc_8013d0a
	NEGS r1, r5
	strh r1, [r0, #6]
	b %23
loc_8013d10
	strh r5, [r0, #6]
	b %23
loc_8013d14
	ldrh r1, [r4, #0x1e]
	NEGS r1, r1
	strh r1, [r0, #6]
23
	ldrh r1, [r4, #0x22]
	ldr r2, [sp, #0x28]
	movs r3, #0x22
	adds r1, r1, r2
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x3c]
	ldrh r1, [r0, #6]
	ldr r2, [sp, #0x2c]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	strh r1, [r0, #6]
	ldrsh r2, [r4, r3]
	cmp r2, r1
	bge %25
	strb r6, [r0, #8]
24
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
25
	cmp r2, r1
	ble %26
	NEGS r1, r6
	strb r1, [r0, #8]
	b %24
26
	movs r3, #0
	strb r3, [r7, #0xc]
	b %24

