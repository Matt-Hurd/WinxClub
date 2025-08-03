	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0803E2C4
	IMPORT sub_801D564
	IMPORT sub_801D714
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801EBCA
	IMPORT __call_via_r1
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT sub_803FF24

	thumb_func_start sub_80253A8
sub_80253A8
	push {r4, lr}
	adds r4, r0, #0
	bne _080253C0
	movs r0, #0xa0
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _080253C0
	adds r0, r4, #0
_080253BA
	pop {r4}
	pop {r3}
	bx r3
_080253C0
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802576C
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3A0
	str r0, [r4, #0x4c]
	movs r0, #8
	strh r0, [r4, #4]
	movs r0, #4
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	movs r3, #0x3c
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0, #4]
	ldr r3, _08025784
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #4]
	ldr r1, [r0]
	ldr r3, _08025788
	ands r1, r3
	ldr r3, _0802578C
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _08025790
	lsls r1, r1, #0xc
	adds r1, r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _080253BA

	non_word_aligned_thumb_func_start sub_802541E
sub_802541E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802576C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802543A
	adds r0, r4, #0
	bl sub_803DA18
_0802543A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8025440
sub_8025440
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802544C
sub_802544C
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8025458
sub_8025458
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_8025478
sub_8025478
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	sub sp, #8
	subs r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _080254A2
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_080254A2
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80254AA
sub_80254AA
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	adds r0, r0, r2
	cmp r0, #8
	bhs _080254F2
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_080254C0
	DCB 0x03
_080254C1
	DCB 0x03
_080254C2
	DCB 0x0A
_080254C3
	DCB 0x0A
_080254C4
	DCB 0x11
_080254C5
	DCB 0x1E
_080254C6
	DCB 0x11
_080254C7
	DCB 0x1E
loc_80254c8
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _080254FE
loc_80254d6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _080254FE
loc_80254e4
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _080254FE
_080254F2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
_080254FE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start sub_8025512
sub_8025512
	push {r3, lr}
	bl sub_801EBCA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802551E
sub_802551E
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
	beq _08025620
	bgt _08025574
	cmp r7, #0x12
	bhs _0802554A
	add r3, pc, #0xC
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0802554A
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08025550
	DCB 0xED, 0x00
_08025552
	DCB 0xCA, 0x00
_08025554
	DCB 0xA8, 0x00
_08025556
	DCB 0x82, 0x00
_08025558
	DCB 0x93, 0x02
_0802555A
	DCB 0xB5, 0x02
_0802555C
	DCB 0xD7, 0x02
_0802555E
	DCB 0xF9, 0x02
_08025560
	DCB 0x9A, 0x03
_08025562
	DCB 0xBB, 0x03
_08025564
	DCB 0xDB, 0x03
_08025566
	DCB 0x3E, 0x01
_08025568
	DCB 0x61, 0x01
_0802556A
	DCB 0x84, 0x01
_0802556C
	DCB 0xC6, 0x01
_0802556E
	DCB 0x1C, 0x03
_08025570
	DCB 0x7C, 0x03
_08025572
	DCB 0xA6, 0x01
_08025574
	cmp r7, #0x1c
	beq _0802564E
	bgt _0802559E
	subs r7, #0x13
	cmp r7, #9
	bhs _0802558A
	add r3, pc, #0x8
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0802558A
	b _0802554A
	ALIGN
_0802558C DCDU 0x01EA01C7
_08025590 DCDU 0x0230020C
_08025594 DCDU 0x043104D5
_08025598 DCDU 0x02530452
_0802559C
	DCB 0xB5, 0x04
_0802559E
	cmp r7, #0x21
	bne _080255A6
	bl sub_8025F7C
_080255A6
	bgt _080255D2
	cmp r7, #0x1d
	beq _08025690
	cmp r7, #0x1e
	beq _08025692
	cmp r7, #0x1f
	beq _08025694
	cmp r7, #0x20
	bne _0802554A
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
_080255D0
	b _0802554A
_080255D2
	cmp r7, #0x22
	bne _080255DA
	bl sub_8025F94
_080255DA
	cmp r7, #0x42
	beq _08025638
	cmp r7, #0x4c
	bne _0802554A
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
	b _08025622
_08025620
	b _08025D44
_08025622
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
_08025636
	b _0802554A
_08025638
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
_0802564C
	b _0802554A
_0802564E
	b _08025D90
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
	b _08025696
_08025690
	b _08025DAA
_08025692
	b _08025E70
_08025694
	b _08025E72
_08025696
	movs r0, #0x14
	strb r0, [r2, #0xc]
_0802569A
	b _0802554A
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
_080256DE
	b _0802554A
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
_08025724
	b _0802554A
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
_08025768
	b _0802554A
	ALIGN
_0802576C DCDU gUnknown_0803E2C4
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
_0802580C
	b _0802554A
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
	b _0802554A
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
	b _0802554A
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
	b _0802554A
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
	b _0802554A

	non_word_aligned_thumb_func_start sub_802591A
sub_802591A
	movs r3, #0x83
	lsls r3, r3, #2
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
	ldr r3, _08025BEC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF0
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
	b _0802554A

	thumb_func_start sub_8025960
sub_8025960
	movs r3, #6
	strh r3, [r0, #0xe]
	movs r3, #7
	strh r3, [r0, #0xa]
	movs r3, #8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #3
	strh r3, [r0, #0x1e]
	movs r3, #4
	strh r3, [r0, #0x1a]
	movs r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BF4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF8
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
	b _0802554A

	thumb_func_start sub_80259A4
sub_80259A4
	movs r3, #0xb1
	lsls r3, r3, #2
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
	movs r3, #0x51
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BFC
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
	b _0802554A

	thumb_func_start sub_80259EC
sub_80259EC
	ldr r3, _08025C00
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
	ldr r3, _08025C04
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	movs r3, #0x89
	lsls r3, r3, #0xf
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
	b _0802554A

	non_word_aligned_thumb_func_start sub_8025A32
sub_8025A32
	movs r7, #0x88
	strh r7, [r0, #0xe]
	movs r3, #0x89
	strh r3, [r0, #0xa]
	movs r3, #0x8a
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x89
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C08
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C0C
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
	b _0802554A
sub_8025A72
	ldr r3, _08025C10
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
	ldr r3, _08025C14
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C18
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
	b _0802554A
sub_8025AB6
	ldr r3, _08025C1C
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
	ldr r3, _08025C20
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C24
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
	b _0802554A
sub_8025AFA
	ldr r3, _08025C28
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
	ldr r3, _08025C2C
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C30
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
	b _0802554A
sub_8025B3E
	movs r3, #0x7f
	strh r3, [r0, #0xe]
	movs r3, #0x80
	strh r3, [r0, #0xa]
	movs r3, #0x81
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0x7c
	strh r3, [r0, #0x1e]
	movs r3, #0x7d
	strh r3, [r0, #0x1a]
	movs r3, #0x7e
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0xa1
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C34
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
	b _0802554A
sub_8025B84
	movs r3, #0x71
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
	ldr r3, _08025C38
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C3C
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
	b _08025C40
	ALIGN
_08025BC8 DCDU 0x0000050A
_08025BCC DCDU 0x0000050B
_08025BD0 DCDU 0x00442000
_08025BD4 DCDU 0x000002BE
_08025BD8 DCDU 0x0000050D
_08025BDC DCDU 0x00448800
_08025BE0 DCDU 0x00000513
_08025BE4 DCDU 0x0043F800
_08025BE8 DCDU 0x00000514
_08025BEC DCDU 0x0000050C
_08025BF0 DCDU 0x00441800
_08025BF4 DCDU 0x00000511
_08025BF8 DCDU 0x00439000
_08025BFC DCDU 0x00449000
_08025C00 DCDU 0x0000022D
_08025C04 DCDU 0x00000512
_08025C08 DCDU 0x00000517
_08025C0C DCDU 0x0043D800
_08025C10 DCDU 0x000002D6
_08025C14 DCDU 0x00000506
_08025C18 DCDU 0x0044A800
_08025C1C DCDU 0x0000035B
_08025C20 DCDU 0x00000509
_08025C24 DCDU 0x00450800
_08025C28 DCDU 0x000002FB
_08025C2C DCDU 0x00000507
_08025C30 DCDU 0x0044C800
_08025C34 DCDU 0x0043B800
_08025C38 DCDU 0x0000050E
_08025C3C DCDU 0x00452000
_08025C40
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025C44
	movs r3, #0xb7
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FAC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB0
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
	b _0802554A
sub_8025C80
	movs r7, #0x97
	strh r7, [r0, #0xe]
	movs r3, #0x98
	strh r3, [r0, #0xa]
	movs r3, #0x99
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x98
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x29
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB4
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
	b _0802554A
sub_8025CC2
	ldr r7, _08025FB8
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, r7, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	adds r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FBC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC0
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
	b _0802554A
sub_8025D02
	movs r7, #0xff
	adds r7, #0x7a
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	subs r7, r3, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FC4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC8
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
	b _0802554A
_08025D44
	movs r3, #0xff
	adds r3, #0xa8
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #3
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FCC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	ldr r3, [r1, #8]
	ands r3, r6
	ldr r6, _08025FD0
	adds r3, r3, r6
	str r3, [r1, #8]
	ldr r3, [r1]
	ands r3, r5
	adds r3, r3, r4
	str r3, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r3, #0x14
	strb r3, [r2, #0xc]
	movs r2, #1
	lsls r3, r4, #0xd
	bics r0, r3
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r1, #0xc]
	b _080255D0
_08025D90
	movs r2, #0xff
	adds r2, #0xab
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
	b _080255D0
_08025DAA
	movs r3, #0xba
	strh r3, [r0, #0xe]
	movs r3, #0xbb
	strh r3, [r0, #0xa]
	movs r3, #0xbc
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xb7
	strh r3, [r0, #0x1e]
	movs r3, #0xb8
	strh r3, [r0, #0x1a]
	movs r3, #0xb9
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FD4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FD8
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
	b _08025636

	non_word_aligned_thumb_func_start sub_8025DEE
sub_8025DEE
	movs r7, #0xff
	adds r7, #0xd6
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	subs r7, r3, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FDC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FE0
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
	b _0802564C

	thumb_func_start sub_8025E30
sub_8025E30
	movs r7, #0x82
	strh r7, [r0, #0xe]
	movs r3, #0x83
	strh r3, [r0, #0xa]
	movs r3, #0x84
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x83
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FE4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FE8
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
	b _0802569A
_08025E70
	b _08025E74
_08025E72
	b _08025EB6
_08025E74
	movs r7, #0
	strh r7, [r0, #0xe]
	movs r3, #1
	strh r3, [r0, #0xa]
	movs r3, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x53
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FEC
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
	b _080256DE
_08025EB6
	ldr r7, _08025FF0
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, r7, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	adds r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FF4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FF8
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
	b _08025724

	non_word_aligned_thumb_func_start sub_8025EF6
sub_8025EF6
	movs r7, #0x85
	strh r7, [r0, #0xe]
	movs r3, #0x86
	strh r3, [r0, #0xa]
	movs r3, #0x87
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x86
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FFC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026000
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
	b _08025768

	non_word_aligned_thumb_func_start sub_8025F36
sub_8025F36
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
	ldr r3, _08026004
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026008
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
	b _0802580C

	thumb_func_start sub_8025F7C
sub_8025F7C
	ldr r2, _0802600C
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
	b _0802580C

	thumb_func_start sub_8025F94
sub_8025F94
	ldr r2, _08026010
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
	b _0802580C
	ALIGN
_08025FAC DCDU 0x0000051A
_08025FB0 DCDU 0x0044B800
_08025FB4 DCDU 0x0043E000
_08025FB8 DCDU 0x0000032E
_08025FBC DCDU 0x00000521
_08025FC0 DCDU 0x0044F000
_08025FC4 DCDU 0x0000051F
_08025FC8 DCDU 0x00443000
_08025FCC DCDU 0x0000051D
_08025FD0 DCDU 0x00445000
_08025FD4 DCDU 0x0000051E
_08025FD8 DCDU 0x0043E800
_08025FDC DCDU 0x0000051B
_08025FE0 DCDU 0x00445800
_08025FE4 DCDU 0x00000516
_08025FE8 DCDU 0x0043C800
_08025FEC DCDU 0x00438800
_08025FF0 DCDU 0x000002D9
_08025FF4 DCDU 0x00000519
_08025FF8 DCDU 0x0044B000
_08025FFC DCDU 0x0000050F
_08026000 DCDU 0x0043D000
_08026004 DCDU 0x00000501
_08026008 DCDU 0x0044E000
_0802600C DCDU 0x0000037A
_08026010 DCDU 0x000002FE
	END