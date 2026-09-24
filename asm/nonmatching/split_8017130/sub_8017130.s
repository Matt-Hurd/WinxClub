	thumb_func_start sub_8017130
	push {r4, lr}
	ldr r2, [r1]
	ldrb r4, [r2]
	cmp r4, #0x15
	bhs %27
	add r3, pc, #0x8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x3B
2
	DCB 0x3B
3
	DCB 0x3B
4
	DCB 0x0B
5
	DCB 0x3B
6
	DCB 0x3B
7
	DCB 0x3B
8
	DCB 0x3B
9
	DCB 0x22
10
	DCB 0x17
11
	DCB 0x3B
12
	DCB 0x3B
13
	DCB 0x3B
14
	DCB 0x3B
15
	DCB 0x2A
16
	DCB 0x3B
17
	DCB 0x3B
18
	DCB 0x3B
19
	DCB 0x3B
20
	DCB 0x32
21
	DCB 0x3B, 0x00
loc_801715a
	ldr r0, _08017424
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r2, #0xc]
	cmp r0, r1
	blo %23
	movs r0, #1
22
	pop {r4}
	pop {r3}
	bx r3
23
	movs r0, #0
	b %22
loc_8017172
	ldr r0, _08017428
	ldr r0, [r0]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	movs r1, #1
	subs r0, r1, r0
	b %22
loc_8017188
	bl GetNextGlobalFunction
	cmp r0, #0x12
	bne %24
	movs r0, #1
	b %22
24
	movs r0, #0
	b %22
loc_8017198
	bl GetNextGlobalFunction
	cmp r0, #0x12
	bne %25
	movs r0, #1
	b %22
25
	movs r0, #0
	b %22
loc_80171a8
	ldr r2, [r0, #8]
	adds r3, r2, #1
	bne %26
	movs r0, #1
	b %22
26
	bl sub_80166FE
	movs r0, #0
	b %22
27
	movs r0, #1
	b %22
	thumb_func_end sub_8017130

