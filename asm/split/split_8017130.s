	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT GetEWRAMStart
	IMPORT sub_80154DC
	IMPORT sub_80166FE
	IMPORT GetNextGlobalFunction
	IMPORT Anonymous4__Create
	IMPORT Npc__Create
	IMPORT GenericObject__Create
	IMPORT sub_8028BE4
	IMPORT Object__Create
	IMPORT Anonymous18__Create
	IMPORT Bird__Create
	IMPORT Monster__Create
	IMPORT Critter__Create
	IMPORT Kiko__Create
	IMPORT WinxClub__Create
	IMPORT Boss__Create
	IMPORT ToggleObject__Create
	IMPORT WallObject__Create
	IMPORT Static1__Create
	IMPORT Static2__Create
	IMPORT sub_80399A4
	IMPORT Scanner__Create
	IMPORT sub_803DA80

	thumb_func_start sub_8017130
sub_8017130
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

	non_word_aligned_thumb_func_start maybeGameObjFactory
maybeGameObjFactory
	subs r0, #3
	cmp r0, #0x12
	push {r4, lr}
	bhs %28
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
28
	b %66
	ALIGN
29
	DCB 0x13, 0x00
30
	DCB 0x61, 0x00
31
	DCB 0x34, 0x00
32
	DCB 0x71, 0x00
33
	DCB 0x80, 0x00
34
	DCB 0x25, 0x00
35
	DCB 0xE9, 0x00
36
	DCB 0xDA, 0x00
37
	DCB 0x17, 0x01
38
	DCB 0xF9, 0x00
39
	DCB 0x08, 0x01
40
	DCB 0x52, 0x00
41
	DCB 0x43, 0x00
42
	DCB 0x8F, 0x00
43
	DCB 0x9E, 0x00
44
	DCB 0xCB, 0x00
45
	DCB 0xAD, 0x00
46
	DCB 0xBC, 0x00
loc_80171f8
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x6d
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #3
	bl sub_803DA80
	adds r4, r0, #0
	beq %47
	adds r0, r4, #0
	bl sub_80154DC
47
	adds r0, r4, #0
48
	pop {r4}
	pop {r3}
	bx r3
loc_801721c
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa0
	bl sub_803DA80
	adds r4, r0, #0
	beq %49
	adds r0, r4, #0
	bl Npc__Create
49
	adds r0, r4, #0
	b %48
loc_801723a
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa4
	bl sub_803DA80
	adds r4, r0, #0
	beq %50
	adds r0, r4, #0
	bl Kiko__Create
50
	adds r0, r4, #0
	b %48
loc_8017258
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe8
	bl sub_803DA80
	adds r4, r0, #0
	beq %51
	adds r0, r4, #0
	bl Boss__Create
51
	adds r0, r4, #0
	b %48
loc_8017276
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xec
	bl sub_803DA80
	adds r4, r0, #0
	beq %52
	adds r0, r4, #0
	bl sub_80399A4
52
	adds r0, r4, #0
	b %48
loc_8017294
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x4b
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #3
	bl sub_803DA80
	adds r4, r0, #0
	beq %53
	adds r0, r4, #0
	bl Anonymous4__Create
53
	adds r0, r4, #0
	b %48
loc_80172b4
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xb8
	bl sub_803DA80
	adds r4, r0, #0
	beq %54
	adds r0, r4, #0
	bl Bird__Create
54
	adds r0, r4, #0
	b %48
loc_80172d2
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xb4
	bl sub_803DA80
	adds r4, r0, #0
	beq %55
	adds r0, r4, #0
	bl Critter__Create
55
	adds r0, r4, #0
	b %48
loc_80172f0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa4
	bl sub_803DA80
	adds r4, r0, #0
	beq %56
	adds r0, r4, #0
	bl GenericObject__Create
56
	adds r0, r4, #0
	b %48
loc_801730e
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xac
	bl sub_803DA80
	adds r4, r0, #0
	beq %57
	adds r0, r4, #0
	bl Object__Create
57
	adds r0, r4, #0
	b %48
loc_801732c
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xac
	bl sub_803DA80
	adds r4, r0, #0
	beq %58
	adds r0, r4, #0
	bl ToggleObject__Create
58
	adds r0, r4, #0
	b %48
loc_801734a
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xbc
	bl sub_803DA80
	adds r4, r0, #0
	beq %59
	adds r0, r4, #0
	bl WallObject__Create
59
	adds r0, r4, #0
	b %48
loc_8017368
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xd4
	bl sub_803DA80
	adds r4, r0, #0
	beq %60
	adds r0, r4, #0
	bl Anonymous18__Create
60
	adds r0, r4, #0
	b %48
loc_8017386
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe0
	bl sub_803DA80
	adds r4, r0, #0
	beq %61
	adds r0, r4, #0
	bl Monster__Create
61
	adds r0, r4, #0
	b %48
loc_80173a4
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #1
	bl sub_803DA80
	adds r4, r0, #0
	beq %62
	adds r0, r4, #0
	bl WinxClub__Create
62
	adds r0, r4, #0
	b %48
loc_80173c4
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe4
	bl sub_803DA80
	adds r4, r0, #0
	beq %63
	adds r0, r4, #0
	bl Static1__Create
63
	adds r0, r4, #0
	b %48
loc_80173e2
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe0
	bl sub_803DA80
	adds r4, r0, #0
	beq %64
	adds r0, r4, #0
	bl Static2__Create
64
	adds r0, r4, #0
	b %48
loc_8017400
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xf4
	bl sub_803DA80
	adds r4, r0, #0
	beq %65
	adds r0, r4, #0
	bl Scanner__Create
65
	adds r0, r4, #0
	b %48
66
	movs r0, #0
	b %48
	ALIGN
_08017424 DCDU gUnknown_03003E98
_08017428 DCDU gUnknown_0300345C
	END
