	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003C58
	IMPORT gUnknown_03003D34
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E98
	IMPORT sub_800B6A8
	IMPORT sub_80166FE
	IMPORT sub_80167AC
	IMPORT sub_8016850
	IMPORT sub_80168E8
	IMPORT sub_8016BAC
	IMPORT sub_8016BE0
	IMPORT sub_8017884
	IMPORT SetNextGlobalFunction
	IMPORT sub_801CBAA
	IMPORT sub_801CBDE
	IMPORT sub_8020AB6
	IMPORT sub_802459E
	IMPORT sub_80247A4
	IMPORT sub_80268AC
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_803FEF8
	IMPORT sub_80405B4

	thumb_func_start sub_8016D90
sub_8016D90
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r6, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq %1
	cmp r0, #2
	bne %2
1
	movs r1, #1
	b %3
2
	movs r1, #0
3
	movs r0, #2
	bl sub_803FEF8
	ldrh r0, [r4, #4]
	ldr r5, _08017104
	cmp r0, #1
	beq %4
	cmp r0, #2
	bne %5
4
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl sub_8020AB6
5
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq %6
	cmp r0, #2
	bne %7
6
	movs r1, #1
	b %8
7
	movs r1, #0
8
	ldr r0, [r5]
	bl sub_801CBDE
	ldrh r0, [r4, #4]
	ldr r1, [r5]
	cmp r0, #1
	beq %9
	cmp r0, #2
	bne %10
9
	movs r0, #1
	b %11
10
	movs r0, #0
11
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r1, #0x1c]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r0, r0, #0xc
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldrh r0, [r4, #4]
	movs r5, #1
	adds r1, r5, #0
	cmp r0, #1
	beq %12
	movs r1, #0
12
	ldr r0, _08017108
	ldr r0, [r0]
	bl sub_802459E
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne %13
	movs r5, #0
13
	str r5, [r6, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8016E20
sub_8016E20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r3, [r5]
	ldrh r5, [r5, #0x10]
	ldr r2, [r1]
	ldr r1, _0801710C
	ldrh r7, [r2, #8]
	ldr r4, _08017110
	lsls r5, r5, #0x1a
	lsrs r5, r5, #0x1a
	movs r6, #0
	ldrh r3, [r3, #4]
	ldr r4, [r4]
	cmp r7, r1
	beq %15
	lsls r0, r7, #2
	movs r1, #3
	lsls r1, r1, #9
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r2, [r0, #0x1c]
	adds r1, r3, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_8017884
14
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
15
	ldrh r2, [r2, #6]
	cmp r2, r1
	beq %16
	ldr r0, [r4, #0x10]
	lsls r1, r2, #2
	ldr r0, [r0, #0x14]
	ldr r2, [r0, r1]
	adds r1, r3, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_8017884
	b %14
16
	adds r1, r3, #0
	adds r3, r6, #0
	str r0, [sp]
	adds r2, r5, #0
	adds r0, r4, #0
	bl sub_8017884
	b %14

	thumb_func_start sub_8016E8C
sub_8016E8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08017114
	ldr r0, [r1]
	ldr r1, [r6]
	ldrh r0, [r0, #4]
	adds r1, #0x80
	movs r4, #0
	strb r0, [r1, #4]
17
	ldr r6, _08017114
	movs r7, #1
	ldr r0, [r6]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	cmp r0, r4
	bhi %18
	movs r1, #0
18
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_803FEF8
	cmp r4, #6
	bhs %24
	movs r5, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	str r0, [sp]
19
	ldr r0, _08017114
	movs r7, #1
	ldr r0, [r0]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %20
	movs r1, #0
20
	ldr r0, [sp]
	adds r0, r0, r5
	lsls r6, r0, #2
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x55
	bl sub_803FEF8
	ldr r7, _08017114
	movs r1, #1
	ldr r0, [r7]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %21
	movs r1, #0
21
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x56
	bl sub_803FEF8
	ldr r0, [r7]
	movs r1, #1
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %22
	movs r1, #0
22
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x57
	bl sub_803FEF8
	ldr r0, [r7]
	movs r1, #1
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt %23
	movs r1, #0
23
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x58
	bl sub_803FEF8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %19
24
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #7
	blo %17
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8016F50
sub_8016F50
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r1, [r0, r3]
	cmp r1, #0
	ble %26
	ldrh r0, [r0, #4]
	movs r1, #1
	bl sub_803FEF8
25
	add sp, #4
	pop {r3}
	bx r3
26
	NEGS r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b %25

	thumb_func_start sub_8016F78
sub_8016F78
	ldr r0, _08017118
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r4, [r1]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %27
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
27
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

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
	ALIGN
_08017104 DCDU gUnknown_03003458
_08017108 DCDU gUnknown_030034F8
_0801710C DCDU 0x0000FFFE
_08017110 DCDU gUnknown_03003454
_08017114 DCDU gPlayerEntity
_08017118 DCDU gUnknown_03003E98
_0801711C DCDU gUnknown_03003C58
_08017120 DCDU gUnknown_0300345C
_08017124 DCDU gUnknown_03003460
_08017128 DCDU gUnknown_03003D34
_0801712C DCDU gUnknown_03003D35
	END
