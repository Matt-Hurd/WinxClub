	non_word_aligned_thumb_func_start Npc__40
	push {r4, r5, r6, r7, lr}
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r0, #0x70]
	adds r7, r1, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r1, #0x80
	cmp r7, #0x12
	ldr r6, _08025794
	ldr r5, _08025788
	ldr r4, _0802578C
	beq %42
	bgt %34
	cmp r7, #0x12
	bhs %15
	add r3, pc, #0xC
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
15
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
16
	DCB 0xED, 0x00
17
	DCB 0xCA, 0x00
18
	DCB 0xA8, 0x00
19
	DCB 0x82, 0x00
20
	DCB 0x93, 0x02
21
	DCB 0xB5, 0x02
22
	DCB 0xD7, 0x02
23
	DCB 0xF9, 0x02
24
	DCB 0x9A, 0x03
25
	DCB 0xBB, 0x03
26
	DCB 0xDB, 0x03
27
	DCB 0x3E, 0x01
28
	DCB 0x61, 0x01
29
	DCB 0x84, 0x01
30
	DCB 0xC6, 0x01
31
	DCB 0x1C, 0x03
32
	DCB 0x7C, 0x03
33
	DCB 0xA6, 0x01
34
	cmp r7, #0x1c
	beq %47
	bgt %37
	subs r7, #0x13
	cmp r7, #9
	bhs %35
	add r3, pc, #0x8
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
35
	b %15
	ALIGN
_0802558C DCDU 0x01EA01C7
_08025590 DCDU 0x0230020C
_08025594 DCDU 0x043104D5
_08025598 DCDU 0x02530452
36
	DCB 0xB5, 0x04
37
	cmp r7, #0x21
	bne %38
	bl sub_8025F7C
38
	bgt %40
	cmp r7, #0x1d
	beq %48
	cmp r7, #0x1e
	beq %49
	cmp r7, #0x1f
	beq %50
	cmp r7, #0x20
	bne %15
	movs r2, #7
	lsls r2, r2, #7
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
39
	b %15
40
	cmp r7, #0x22
	bne %41
	bl sub_8025F94
41
	cmp r7, #0x42
	beq %45
	cmp r7, #0x4c
	bne %15
	movs r3, #0xe1
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r3, [r1, #0xc]
	ldr r7, _08025798
	lsrs r3, r3, #0xc
	lsls r3, r3, #0xc
	adds r3, r3, r7
	ldr r7, [r1, #8]
	ands r7, r6
	ldr r6, _0802579C
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1]
	ands r6, r5
	adds r4, r6, r4
	str r4, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r4, #0x1e
	strb r4, [r2, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	b %43
42
	b %58
43
	orrs r2, r3
	lsls r3, r4, #0xe
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	movs r3, #8
	adds r0, #0x90
	str r2, [r1, #0xc]
	strb r3, [r0, #7]
44
	b %15
45
	movs r1, #0x13
	lsls r1, r1, #5
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
46
	b %15
47
	b %59
loc_8025650
	ldr r3, _080257A0
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257A4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257A8
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	b %51
48
	b %60
49
	b %61
50
	b %62
51
	movs r0, #0x14
	strb r0, [r2, #0xc]
52
	b %15
sub_802569C
	ldr r3, _080257AC
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257B0
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257B4
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
53
	b %15
sub_80256E0
	movs r3, #0x43
	lsls r3, r3, #3
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257B8
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257BC
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
54
	b %15
sub_8025726
	movs r3, #0xed
	strh r3, [r0, #0xe]
	movs r3, #0xee
	strh r3, [r0, #0xa]
	movs r3, #0xef
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xea
	strh r3, [r0, #0x1e]
	movs r3, #0xeb
	strh r3, [r0, #0x1a]
	movs r3, #0xec
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257C0
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257C4
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
55
	b %15
	ALIGN
_0802576C DCDU __VTABLE__301Npc
_08025770 DCDU 0x2063704E
_08025774 DCDU 0x69726353
_08025778 DCDU 0x47207470
_0802577C DCDU 0x70756F72
_08025780 DCDU 0x00000000
_08025784 DCDU 0xF000FFFF
_08025788 DCDU 0xFF8007FF
_0802578C DCDU 0x0027B000
_08025790 DCDU 0x0000052A
_08025794 DCDU 0xFF8003FF
_08025798 DCDU 0x0000052D
_0802579C DCDU 0x00451800
_080257A0 DCDU 0x0000030A
_080257A4 DCDU 0x00000501
_080257A8 DCDU 0x0044E000
_080257AC DCDU 0x00000355
_080257B0 DCDU 0x00000504
_080257B4 DCDU 0x0044F800
_080257B8 DCDU 0x00000503
_080257BC DCDU 0x00447000
_080257C0 DCDU 0x00000502
_080257C4 DCDU 0x00440800
sub_80257C8
	movs r3, #0xcc
	strh r3, [r0, #0xe]
	movs r3, #0xcd
	strh r3, [r0, #0xa]
	movs r3, #0xce
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xc9
	strh r3, [r0, #0x1e]
	movs r3, #0xca
	strh r3, [r0, #0x1a]
	movs r3, #0xcb
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BC8
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	movs r3, #0x11
	lsls r3, r3, #0x12
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
56
	b %15
sub_802580E
	movs r3, #0xff
	adds r3, #0x12
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BCC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BD0
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025854
	ldr r3, _08025BD4
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BD8
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BDC
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025898
	movs r7, #0xc6
	strh r7, [r0, #0xe]
	movs r3, #0xc7
	strh r3, [r0, #0xa]
	movs r3, #0xc8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0xc7
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BE0
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BE4
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_80258D8
	movs r3, #0xff
	adds r3, #0x18
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BE8
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ands r0, r6
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
	thumb_func_end Npc__40

