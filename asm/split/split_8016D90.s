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
	IMPORT sub_8018386
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
sub_8016D90 ;@ 0x08016D90
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r6, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _08016DA0
	cmp r0, #2
	bne _08016DA4
_08016DA0
	movs r1, #1
	b _08016DA6
_08016DA4
	movs r1, #0
_08016DA6
	movs r0, #2
	bl sub_803FEF8
	ldrh r0, [r4, #4]
	ldr r5, _08017104 ;@ =gUnknown_03003458
	cmp r0, #1
	beq _08016DB8
	cmp r0, #2
	bne _08016DC0
_08016DB8
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl sub_8020AB6
_08016DC0
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _08016DCA
	cmp r0, #2
	bne _08016DCE
_08016DCA
	movs r1, #1
	b _08016DD0
_08016DCE
	movs r1, #0
_08016DD0
	ldr r0, [r5]
	bl sub_801CBDE
	ldrh r0, [r4, #4]
	ldr r1, [r5]
	cmp r0, #1
	beq _08016DE2
	cmp r0, #2
	bne _08016DE6
_08016DE2
	movs r0, #1
	b _08016DE8
_08016DE6
	movs r0, #0
_08016DE8
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
	beq _08016E08
	movs r1, #0
_08016E08
	ldr r0, _08017108 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_802459E
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _08016E18
	movs r5, #0
_08016E18
	str r5, [r6, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8016E20
sub_8016E20 ;@ 0x08016E20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r3, [r5]
	ldrh r5, [r5, #0x10]
	ldr r2, [r1]
	ldr r1, _0801710C ;@ =0x0000FFFE
	ldrh r7, [r2, #8]
	ldr r4, _08017110 ;@ =gUnknown_03003454
	lsls r5, r5, #0x1a
	lsrs r5, r5, #0x1a
	movs r6, #0
	ldrh r3, [r3, #4]
	ldr r4, [r4]
	cmp r7, r1
	beq _08016E5E
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
_08016E58
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08016E5E
	ldrh r2, [r2, #6]
	cmp r2, r1
	beq _08016E7C
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
	b _08016E58
_08016E7C
	adds r1, r3, #0
	adds r3, r6, #0
	str r0, [sp]
	adds r2, r5, #0
	adds r0, r4, #0
	bl sub_8017884
	b _08016E58

	thumb_func_start sub_8016E8C
sub_8016E8C ;@ 0x08016E8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08017114 ;@ =gPlayerEntity
	ldr r0, [r1]
	ldr r1, [r6]
	ldrh r0, [r0, #4]
	adds r1, #0x80
	movs r4, #0
	strb r0, [r1, #4]
_08016E9C
	ldr r6, _08017114 ;@ =gPlayerEntity
	movs r7, #1
	ldr r0, [r6]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	cmp r0, r4
	bhi _08016EAE
	movs r1, #0
_08016EAE
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_803FEF8
	cmp r4, #6
	bhs _08016F40
	movs r5, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	str r0, [sp]
_08016EC2
	ldr r0, _08017114 ;@ =gPlayerEntity
	movs r7, #1
	ldr r0, [r0]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt _08016ED6
	movs r1, #0
_08016ED6
	ldr r0, [sp]
	adds r0, r0, r5
	lsls r6, r0, #2
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x55
	bl sub_803FEF8
	ldr r7, _08017114 ;@ =gPlayerEntity
	movs r1, #1
	ldr r0, [r7]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt _08016EF8
	movs r1, #0
_08016EF8
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
	bgt _08016F12
	movs r1, #0
_08016F12
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
	bgt _08016F2C
	movs r1, #0
_08016F2C
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x58
	bl sub_803FEF8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08016EC2
_08016F40
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #7
	blo _08016E9C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8016F50
sub_8016F50 ;@ 0x08016F50
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r1, [r0, r3]
	cmp r1, #0
	ble _08016F6A
	ldrh r0, [r0, #4]
	movs r1, #1
	bl sub_803FEF8
_08016F64
	add sp, #4
	pop {r3}
	bx r3
_08016F6A
	NEGS r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _08016F64

	thumb_func_start sub_8016F78
sub_8016F78 ;@ 0x08016F78
	ldr r0, _08017118 ;@ =gUnknown_03003E98
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r4, [r1]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08016F96
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
_08016F96
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016FA2
sub_8016FA2 ;@ 0x08016FA2
	push {r3, r4, r5, lr}
	ldr r4, [r1]
	ldrb r2, [r4]
	cmp r2, #0x15
	bhs _08016FEA
	add r3, pc, #0x4 ;@ =_08016FB4
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_08016FB4
	DCB 0x1A
_08016FB5
	DCB 0x79
_08016FB6
	DCB 0x1A
_08016FB7
	DCB 0x0A
_08016FB8
	DCB 0x30
_08016FB9
	DCB 0x1D
_08016FBA
	DCB 0x33
_08016FBB
	DCB 0x36
_08016FBC
	DCB 0x4C
_08016FBD
	DCB 0x53
_08016FBE
	DCB 0x68
_08016FBF
	DCB 0x7C
_08016FC0
	DCB 0x7F
_08016FC1
	DCB 0x82
_08016FC2
	DCB 0x85
_08016FC3
	DCB 0x2D
_08016FC4
	DCB 0x98
_08016FC5
	DCB 0x95
_08016FC6
	DCB 0x1A
_08016FC7
	DCB 0xA2
_08016FC8
	DCB 0x9C, 0x00
loc_8016fca
	ldr r0, _08017118 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08016FE4
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
_08016FE4
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
_08016FEA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8016ff0
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _08017002
	ldrh r0, [r4, #4]
	movs r1, #1
	bl sub_803FEF8
	b _08016FEA
_08017002
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _08016FEA
loc_8017010
	bl sub_8016E8C
	b _08016FEA
loc_8017016
	bl sub_8016E20
	b _08016FEA
loc_801701c
	bl sub_8016D90
	b _08016FEA
loc_8017022
	ldr r0, _08017114 ;@ =gPlayerEntity
	movs r1, #0x84
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	cmp r1, #7
	bhs _0801703A
	movs r1, #0xb0
	ldrb r1, [r1, r0]
	adds r0, #0xa0
	strb r1, [r0, #0xd]
	movs r1, #0
	strb r1, [r0, #0xe]
_0801703A
	ldrh r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	bne _08017044
	movs r1, #0
_08017044
	ldr r0, _08017108 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80247A4
	b _08016FEA
loc_801704e
	ldrh r0, [r4, #4]
	ldr r1, _0801711C ;@ =gUnknown_03003C58
	strh r0, [r1]
	movs r0, #0x15
	bl sub_8018386
	b _08016FEA
loc_801705c
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _08017074
	ldr r1, _08017120 ;@ =gUnknown_0300345C
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	b _08016FEA
_08017074
	ldr r1, _08017120 ;@ =gUnknown_0300345C
	NEGS r0, r0
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_80268AC
	b _08016FEA
loc_8017086
	ldr r0, _08017124 ;@ =gUnknown_03003460
	ldr r0, [r0]
	cmp r0, #0
	beq _08016FEA
	bl sub_800B6A8
	ldrh r1, [r4, #4]
	cmp r0, r1
	beq _08016FEA
	lsls r2, r1, #0x18
	ldr r0, _08017120 ;@ =gUnknown_0300345C
	lsrs r2, r2, #0x18
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
	b _08016FEA
loc_80170a8
	bl sub_8016BE0
	b _08016FEA
loc_80170ae
	bl sub_8016BAC
	b _08016FEA
loc_80170b4
	bl sub_80168E8
	b _08016FEA
loc_80170ba
	bl sub_8016850
	b _08016FEA
loc_80170c0
	ldr r1, _08017128 ;@ =gUnknown_03003D34
	movs r0, #0x11
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, _0801712C ;@ =gUnknown_03003D35
	asrs r0, r0, #2
	strb r0, [r1]
	movs r0, #0xd
	bl sub_8018386
	b _08016FEA
loc_80170e0
	bl sub_80167AC
	b _08016FEA
loc_80170e6
	movs r0, #0x14
	bl sub_8018386
	b _08016FEA
loc_80170ee
	ldr r0, _08017104 ;@ =gUnknown_03003458
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBAA
	b _08016FEA
loc_80170fa
	movs r2, #0
	str r2, [r0, #8]
	bl sub_80166FE
	b _08016FEA
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