	non_word_aligned_thumb_func_start sub_8016FA2
sub_8016FA2
	push {r3, r4, r5, lr}
	ldr r4, [r1]
	ldrb r2, [r4]
	cmp r2, #0x15
	bhs %50
	add r3, pc, #0x4
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
28
	DCB 0x1A
29
	DCB 0x79
30
	DCB 0x1A
31
	DCB 0x0A
32
	DCB 0x30
33
	DCB 0x1D
34
	DCB 0x33
35
	DCB 0x36
36
	DCB 0x4C
37
	DCB 0x53
38
	DCB 0x68
39
	DCB 0x7C
40
	DCB 0x7F
41
	DCB 0x82
42
	DCB 0x85
43
	DCB 0x2D
44
	DCB 0x98
45
	DCB 0x95
46
	DCB 0x1A
47
	DCB 0xA2
48
	DCB 0x9C, 0x00
loc_8016fca
	ldr r0, _08017118
	ldr r0, [r0]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %49
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
49
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
50
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8016ff0
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble %51
	ldrh r0, [r4, #4]
	movs r1, #1
	bl sub_803FEF8
	b %50
51
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b %50
loc_8017010
	bl sub_8016E8C
	b %50
loc_8017016
	bl sub_8016E20
	b %50
loc_801701c
	bl sub_8016D90
	b %50
loc_8017022
	ldr r0, _08017114
	movs r1, #0x84
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	cmp r1, #7
	bhs %52
	movs r1, #0xb0
	ldrb r1, [r1, r0]
	adds r0, #0xa0
	strb r1, [r0, #0xd]
	movs r1, #0
	strb r1, [r0, #0xe]
52
	ldrh r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	bne %53
	movs r1, #0
53
	ldr r0, _08017108
	ldr r0, [r0]
	bl sub_80247A4
	b %50
loc_801704e
	ldrh r0, [r4, #4]
	ldr r1, _0801711C
	strh r0, [r1]
	movs r0, #0x15
	bl SetNextGlobalFunction
	b %50
loc_801705c
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt %54
	ldr r1, _08017120
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	b %50
54
	ldr r1, _08017120
	NEGS r0, r0
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_80268AC
	b %50
loc_8017086
	ldr r0, _08017124
	ldr r0, [r0]
	cmp r0, #0
	beq %50
	bl sub_800B6A8
	ldrh r1, [r4, #4]
	cmp r0, r1
	beq %50
	lsls r2, r1, #0x18
	ldr r0, _08017120
	lsrs r2, r2, #0x18
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
	b %50
loc_80170a8
	bl sub_8016BE0
	b %50
loc_80170ae
	bl sub_8016BAC
	b %50
loc_80170b4
	bl sub_80168E8
	b %50
loc_80170ba
	bl sub_8016850
	b %50
loc_80170c0
	ldr r1, _08017128
	movs r0, #0x11
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, _0801712C
	asrs r0, r0, #2
	strb r0, [r1]
	movs r0, #0xd
	bl SetNextGlobalFunction
	b %50
loc_80170e0
	bl sub_80167AC
	b %50
loc_80170e6
	movs r0, #0x14
	bl SetNextGlobalFunction
	b %50
loc_80170ee
	ldr r0, _08017104
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBAA
	b %50
loc_80170fa
	movs r2, #0
	str r2, [r0, #8]
	bl sub_80166FE
	b %50
