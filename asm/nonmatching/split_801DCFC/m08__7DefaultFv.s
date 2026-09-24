	thumb_func_start m08__7DefaultFv
m08__7DefaultFv
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	adds r5, r1, #0
	ldrb r0, [r0]
	subs r0, #0x1c
	cmp r0, #0x11
	bhs %52
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
33
	DCB 0x0C
34
	DCB 0x08
35
	DCB 0x2D
36
	DCB 0x12
37
	DCB 0x1C
38
	DCB 0x2D
39
	DCB 0x1C
40
	DCB 0x1C
41
	DCB 0x2D
42
	DCB 0x2D
43
	DCB 0x2D
44
	DCB 0x1E
45
	DCB 0x2D
46
	DCB 0x1C
47
	DCB 0x1C
48
	DCB 0x1C
49
	DCB 0x1C, 0x00
loc_801df7a
	movs r0, #1
50
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_801df82
	ldr r1, [r4, #0x78]
	movs r0, #1
	cmp r1, #0
	beq %50
	movs r0, #0
	b %50
loc_801df8e
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801DB90
	ldr r1, [r4, #0x78]
	movs r0, #1
	cmp r1, #0
	beq %50
	movs r0, #0
	b %50
loc_801dfa2
	movs r0, #1
	b %50
loc_801dfa6
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bne %51
	movs r0, #1
	b %50
51
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801DAEC
	movs r0, #0
	b %50
52
	movs r0, #0
	b %50
