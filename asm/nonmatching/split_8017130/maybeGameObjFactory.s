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
	bl __ct__4KikoFv
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
