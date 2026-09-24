	thumb_func_start sub_803D4A8
	push {r4, lr}
	cmp r0, #8
	bhs %16
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x04
2
	DCB 0x08
3
	DCB 0x17
4
	DCB 0x26
5
	DCB 0x35
6
	DCB 0x44
7
	DCB 0x53
8
	DCB 0x63
loc_803d4c0
	movs r0, #0
9
	pop {r4}
	pop {r3}
	bx r3
loc_803d4c8
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x30
	bl sub_803DA80
	adds r4, r0, #0
	beq %10
	adds r0, r4, #0
	bl sub_800A9BC
10
	adds r0, r4, #0
	b %9
loc_803d4e6
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq %11
	adds r0, r4, #0
	bl sub_8008B14
11
	adds r0, r4, #0
	b %9
loc_803d504
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	bl sub_803DA80
	adds r4, r0, #0
	beq %12
	adds r0, r4, #0
	bl sub_800AD8C
12
	adds r0, r4, #0
	b %9
loc_803d522
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq %13
	adds r0, r4, #0
	bl sub_800A270
13
	adds r0, r4, #0
	b %9
loc_803d540
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r4, r0, #0
	beq %14
	adds r0, r4, #0
	bl sub_80081D4
14
	adds r0, r4, #0
	b %9
loc_803d55e
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _0803D5A0
	bl sub_803DA80
	adds r4, r0, #0
	beq %15
	adds r0, r4, #0
	bl sub_8008EB4
15
	adds r0, r4, #0
	b %9
16
	b %18
loc_803d57e
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x5c
	bl sub_803DA80
	adds r4, r0, #0
	beq %17
	adds r0, r4, #0
	bl gUnknown_03000000
17
	adds r0, r4, #0
	b %9
18
	movs r0, #0
	b %9
	ALIGN
_0803D5A0 DCDU 0x00005524
	thumb_func_end sub_803D4A8

