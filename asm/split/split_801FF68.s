	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__04
	IMPORT sub_801F906
	IMPORT sub_801FE90
	IMPORT sub_801FEFE

	thumb_func_start sub_801FF68

sub_801FF68
	push {r4, lr}
	ldr r2, [r1]
	ldrb r3, [r2]
	cmp r3, #0x1c
	beq %10
	cmp r3, #0x21
	beq %24
	cmp r3, #0x25
	beq %25
	cmp r3, #0x2d
	bne %26
	bl sub_801FEFE
9
	pop {r4}
	pop {r3}
	bx r3
10
	ldrb r3, [r2, #5]
	movs r4, #0x9c
	lsls r3, r3, #0x10
	str r3, [r0, #0x78]
	movs r3, #0
	str r3, [r4, r0]
	ldrb r4, [r2, #4]
	cmp r4, #0xc
	bhs %23
	add r3, pc, #0x8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
11
	DCB 0x06
12
	DCB 0x06
13
	DCB 0x06
14
	DCB 0x06
15
	DCB 0x13
16
	DCB 0x1C
17
	DCB 0x28
18
	DCB 0x34
19
	DCB 0x40
20
	DCB 0x49
21
	DCB 0x58
22
	DCB 0x64
loc_801ffb0
	ldrb r2, [r2, #4]
	movs r4, #0xf
	lsls r4, r4, #0x18
	ldr r3, [r0, #0x7c]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #4
	bics r3, r4
	orrs r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0xff
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_801ffca
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r0, #0x7c]
	movs r2, #3
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_801ffdc
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #2
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_801fff4
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #3
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_802000c
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0
	movs r3, #0x98
	strb r2, [r3, r0]
23
	b %27
loc_8020024
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r0, #0x7c]
	movs r2, #1
	movs r3, #0x98
	strb r2, [r3, r0]
	b %27
loc_8020036
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0
	movs r3, #0x98
	strb r2, [r3, r0]
	b %27
24
	b %29
25
	b %28
26
	b %30
loc_8020054
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #1
	movs r3, #0x98
	strb r2, [r3, r0]
	b %27
loc_802006c
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #2
	movs r3, #0x98
	strb r2, [r3, r0]
27
	adds r0, #0xff
	adds r0, #1
	str r1, [r0, #0x28]
	b %9
28
	bl sub_801FE90
	b %9
29
	movs r1, #0x1f
	movs r2, #0xff
	adds r2, #0x45
	strh r1, [r2, r0]
	bl sub_801F906
	b %9
30
	bl DefaultScriptGroups__04
	b %9

	END
