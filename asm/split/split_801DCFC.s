	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT sub_8017884
	IMPORT sub_801D788
	IMPORT sub_801D9B0
	IMPORT sub_801DA46
	IMPORT sub_801DAA0
	IMPORT sub_801DAEC
	IMPORT sub_801DB90
	IMPORT __call_via_r2
	IMPORT rand
	IMPORT __16__rt_sdiv
	IMPORT sub_803F6B4
	IMPORT sub_8040594

	thumb_func_start sub_801DCFC
sub_801DCFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq %1
	bl rand
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl __16__rt_sdiv
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start DefaultScriptGroups__04
DefaultScriptGroups__04
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	subs r2, #0x1c
	cmp r2, #0x11
	bhs %2
	add r3, pc, #0x10
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
3
	DCB 0x33, 0x00
4
	DCB 0x15, 0x00
5
	DCB 0x14, 0x00
6
	DCB 0xAE, 0x00
7
	DCB 0xB2, 0x00
8
	DCB 0x14, 0x00
9
	DCB 0xC1, 0x00
10
	DCB 0xB9, 0x00
11
	DCB 0x14, 0x00
12
	DCB 0x14, 0x00
13
	DCB 0x14, 0x00
14
	DCB 0xE4, 0x00
15
	DCB 0x14, 0x00
16
	DCB 0xE8, 0x00
17
	DCB 0xC8, 0x00
18
	DCB 0xEC, 0x00
19
	DCB 0xF0, 0x00
loc_801dd82
	b %2
loc_801dd84
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq %2
	bl rand
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl __16__rt_sdiv
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
	b %2
loc_801ddc0
	ldrb r1, [r0, #5]
	movs r2, #0x9c
	lsls r1, r1, #0x10
	str r1, [r4, #0x78]
	movs r1, #0
	str r1, [r2, r4]
	ldrb r1, [r0, #4]
	cmp r1, #0xc
	bhs %2
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
20
	DCB 0x06
21
	DCB 0x06
22
	DCB 0x06
23
	DCB 0x06
24
	DCB 0x13
25
	DCB 0x1C
26
	DCB 0x28
27
	DCB 0x34
28
	DCB 0x40
29
	DCB 0x49
30
	DCB 0x55
31
	DCB 0x61
loc_801dde8
	ldrb r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0xff
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de02
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #3
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de14
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #2
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de2c
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #3
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de44
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0
	adds r4, #0x90
	strb r0, [r4, #8]
32
	b %2
loc_801de5c
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #1
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de6e
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de86
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #1
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801de9e
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #2
	adds r4, #0x90
	strb r0, [r4, #8]
	b %2
loc_801deb6
	adds r0, r4, #0
	bl sub_801DB90
	b %2
loc_801debe
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl __call_via_r2
	b %2
loc_801decc
	ldr r0, _0801DFCC
	movs r2, #0x27
	ldr r0, [r0]
	lsls r2, r2, #6
	ldr r1, [r4, #0x2c]
	adds r0, r0, r2
	str r1, [r0, #0xc]
	b %2
loc_801dedc
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
	b %2
loc_801deea
	ldrh r1, [r0, #4]
	adds r4, #0x80
	ldr r2, [r4, #0x10]
	ldr r3, _0801DFD0
	lsls r1, r1, #0x17
	lsrs r1, r1, #3
	ands r2, r3
	orrs r1, r2
	str r1, [r4, #0x10]
	ldrh r2, [r0, #6]
	asrs r3, r3, #9
	ands r1, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r1, r2
	str r1, [r4, #0x10]
	ldrh r0, [r0, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	b %2
loc_801df22
	adds r0, r4, #0
	bl sub_801DAEC
	b %2
loc_801df2a
	adds r0, r4, #0
	bl sub_801DAA0
	b %2
loc_801df32
	adds r0, r4, #0
	bl sub_801DA46
	b %2
loc_801df3a
	adds r0, r4, #0
	ldr r1, [r4, #0x28]
	bl sub_801D9B0
	cmp r0, #0
	beq %32
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
	b %2

	thumb_func_start DefaultScriptGroups__08
DefaultScriptGroups__08
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
	ALIGN
_0801DFC8 DCDU gUnknown_03003454
_0801DFCC DCDU gUnknown_03003450
_0801DFD0 DCDU 0xE00FFFFF
	END
