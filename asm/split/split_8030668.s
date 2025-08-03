    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0803E950
	IMPORT sub_8029070
	IMPORT sub_802911C
	IMPORT sub_802913E
	IMPORT sub_8029290
	IMPORT sub_80294EE
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_8030668
sub_8030668 ;@ 0x08030668
	push {r4, lr}
	adds r4, r0, #0
	bne _08030680
	movs r0, #0xe0
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _08030680
	adds r0, r4, #0
_0803067A
	pop {r4}
	pop {r3}
	bx r3
_08030680
	adds r0, r4, #0
	bl sub_8029070
	ldr r0, _08030A64 ;@ =gUnknown_0803E950
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3D8 ;@ =_08030A68
	str r0, [r4, #0x4c]
	movs r0, #0xa
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _08030A80 ;@ =0xF000FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _0803067A

	thumb_func_start sub_80306B4
sub_80306B4 ;@ 0x080306B4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08030A64 ;@ =gUnknown_0803E950
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802911C
	cmp r5, #0
	beq _080306D0
	adds r0, r4, #0
	bl sub_803DA18
_080306D0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80306D6
sub_80306D6 ;@ 0x080306D6
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	bne _080306EA
	bl sub_80294EE
_080306E4
	add sp, #4
	pop {r3}
	bx r3
_080306EA
	bl sub_8029290
	b _080306E4

	thumb_func_start sub_80306F0
sub_80306F0 ;@ 0x080306F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	subs r0, #0x27
	cmp r0, #0xc
	sub sp, #0x1c
	bhs _08030708
	add r3, pc, #0x10 ;@ =_08030710
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08030708
	add sp, #0x1c
	pop {r4, r5}
	pop {r3}
	bx r3
_08030710
	DCB 0x0F, 0x00
_08030712
	DCB 0x64, 0x00
_08030714
	DCB 0xBA, 0x00
_08030716
	DCB 0x0F, 0x01
_08030718
	DCB 0x64, 0x01
_0803071A
	DCB 0xD1, 0x01
_0803071C
	DCB 0x11, 0x02
_0803071E
	DCB 0x51, 0x02
_08030720
	DCB 0xA9, 0x02
_08030722
	DCB 0xFF, 0x02
_08030724
	DCB 0x3F, 0x03
_08030726
	DCB 0x94, 0x03
loc_8030728
	movs r2, #3
	movs r1, #4
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x1e
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xfe
	str r0, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	adds r0, #0xff
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0xb
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x1f
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xd
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 ;@ =0xFFFF007F
	adds r1, #0x3c
	ands r1, r2
	lsrs r2, r3, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_80307d2
	movs r2, #3
	movs r1, #5
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x4c
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #2
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x4f
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x52
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x49
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x3f
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #7
	lsls r2, r2, #0x11
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 ;@ =0xFFFF007F
	adds r1, #0x28
	ands r1, r2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_803087e
	movs r2, #3
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x42
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x3c
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x45
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x41
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xb
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 ;@ =0xFFFF007F
	adds r1, #0x23
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030928
	movs r2, #3
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x36
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x30
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x39
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x41
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xb
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 ;@ =0xFFFF007F
	adds r1, #0x23
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_80309d2
	movs r2, #1
	movs r1, #5
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	ldr r0, _08030A88 ;@ =0x000001FF
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	movs r3, #0x32
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08030A8C ;@ =0x00000202
	movs r3, #0xf
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	adds r0, #1
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	ldr r2, _08030A90 ;@ =0x00017330
	lsls r3, r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #3
	lsls r2, r2, #0x12
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsrs r1, r1, #7
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	ldr r2, _08030A84 ;@ =0xFFFF007F
	lsls r1, r1, #7
	adds r1, #0x41
	ands r1, r2
	lsrs r2, r3, #6
	adds r1, r1, r2
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x10]
	ldr r2, _08030A94 ;@ =0xE00FFFFF
	ands r1, r2
	movs r2, #0x43
	lsls r2, r2, #0x15
	adds r1, r1, r2
	ldr r2, _08030A98 ;@ =0xFFF007FF
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #0xd
	b _08030A9C
	ALIGN
_08030A64 DCDU gUnknown_0803E950
_08030A68 DCDU 0x736E6F4D
_08030A6C DCDU 0x73726574
_08030A70 DCDU 0x72635320
_08030A74 DCDU 0x20747069
_08030A78 DCDU 0x756F7247
_08030A7C DCDU 0x00000070
_08030A80 DCDU 0xF000FFFF
_08030A84 DCDU 0xFFFF007F
_08030A88 DCDU 0x000001FF
_08030A8C DCDU 0x00000202
_08030A90 DCDU 0x00017330
_08030A94 DCDU 0xE00FFFFF
_08030A98 DCDU 0xFFF007FF
_08030A9C
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsrs r1, r1, #0xb
	lsls r1, r1, #0xb
	adds r1, #0xa6
	str r1, [r0, #0x14]
	b _08030708
loc_8030aac
	movs r2, #3
	movs r1, #0x18
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x18
	str r0, [sp]
	movs r2, #1
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x1b
	strh r1, [r4, #0xe]
	movs r2, #0x1c
	strh r2, [r4, #0xa]
	movs r0, #0x1d
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x15
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	lsls r2, r2, #3
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	adds r1, #0x5a
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030b2c
	movs r2, #3
	movs r1, #0x18
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xf
	str r0, [sp]
	movs r2, #1
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x12
	strh r1, [r4, #0xe]
	movs r2, #0x13
	strh r2, [r4, #0xa]
	movs r0, #0x14
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xc
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	lsls r2, r2, #3
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	adds r1, #0x5a
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030bac
	movs r2, #4
	movs r1, #8
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	movs r0, #0xff
	adds r0, #0x24
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #7
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x1b
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x27
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xff
	adds r0, #0x21
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x8d
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EDC ;@ =0x00010CD0
	movs r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #0x1b
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	adds r1, #0x64
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030c5c
	movs r2, #3
	movs r1, #6
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x18
	movs r0, #0xff
	adds r0, #0xe8
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r5, #0x28
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0xe2
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0xeb
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x87
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EDC ;@ =0x00010CD0
	movs r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #7
	lsls r2, r2, #0x11
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	adds r1, #0x3c
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030d08
	movs r2, #2
	movs r1, #7
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xf8
	str r0, [sp]
	movs r2, #1
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xf5
	strh r1, [r4, #0xe]
	movs r2, #0xf6
	strh r2, [r4, #0xa]
	movs r0, #0xf7
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xf2
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x89
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EE0 ;@ =0x00015998
	movs r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #5
	lsls r2, r2, #0x12
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	adds r1, #0x3c
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030d88
	movs r2, #3
	movs r1, #6
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x18
	movs r0, #0xff
	adds r0, #0x57
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r5, #0x28
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x5a
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x60
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x1f
	lsls r2, r2, #0x15
	adds r1, r1, r2
	lsls r2, r5, #0xb
	str r2, [r4, #0x70]
	movs r2, #0xd
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	lsls r3, r5, #0xc
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	adds r1, #0x4b
	ands r1, r2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030e32
	movs r2, #3
	movs r1, #4
	movs r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	ldr r0, _08030EE4 ;@ =0x000002EF
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	movs r3, #0x28
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xbb
	lsls r0, r0, #2
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08030EE8 ;@ =0x000002F5
	movs r3, #0xf
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x8f
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EE0 ;@ =0x00015998
	lsls r3, r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #0x1b
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsrs r1, r1, #7
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	ldr r2, _08030ED8 ;@ =0xFFFF007F
	lsls r1, r1, #7
	adds r1, #0x5a
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
	ALIGN
_08030ED8 DCDU 0xFFFF007F
_08030EDC DCDU 0x00010CD0
_08030EE0 DCDU 0x00015998
_08030EE4 DCDU 0x000002EF
_08030EE8 DCDU 0x000002F5
	END