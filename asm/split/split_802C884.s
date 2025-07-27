    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_030032A0
	IMPORT gUnknown_030032B0
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E578
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_800CD58
	IMPORT sub_8023A70
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E47A
	IMPORT sub_802E4AA
	IMPORT sub_802E5D2
	IMPORT __call_via_r1
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_8040594


	thumb_func_start sub_802C884
sub_802C884 ;@ 0x0802C884
	push {r4, lr}
	adds r4, r0, #0
	bne _0802C89C
	movs r0, #0x48
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802C89C
	adds r0, r4, #0
_0802C896
	pop {r4}
	pop {r3}
	bx r3
_0802C89C
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802CC68 ;@ =gUnknown_0803E578
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b _0802C896

	thumb_func_start sub_802C8B0
sub_802C8B0 ;@ 0x0802C8B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802CC68 ;@ =gUnknown_0803E578
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802C8CC
	adds r0, r4, #0
	bl sub_803DA18
_0802C8CC
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C8D2
sub_802C8D2 ;@ 0x0802C8D2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne _0802C914
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802C922
_0802C914
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802C922
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _0802CC6C ;@ =gUnknown_030032A0
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #8
	str r1, [r4, #0x38]
	bhs _0802C94C
	add r3, pc, #0xC ;@ =_0802C950
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802C94C
	b _0802CAF8
	ALIGN
_0802C950
	DCB 0x09, 0x00
_0802C952
	DCB 0x75, 0x00
_0802C954
	DCB 0xD6, 0x00
_0802C956
	DCB 0x41, 0x01
_0802C958
	DCB 0xB2, 0x01
_0802C95A
	DCB 0x1D, 0x02
_0802C95C
	DCB 0x7E, 0x02
_0802C95E
	DCB 0xDF, 0x02
loc_802c960
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802C9EC
	cmp r1, #1
	beq _0802C998
	cmp r1, #2
	beq _0802C9BE
	cmp r1, #3
	bne _0802CA1A
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C998
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C9BE
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C9EC
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CA1A
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	ldr r0, _0802CC74 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CAF8
	ldr r0, _0802CC78 ;@ =gPlayerEntity
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802CAF8
loc_802ca38
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CAC4
	cmp r1, #1
	beq _0802CA70
	cmp r1, #2
	beq _0802CA96
	cmp r1, #3
	bne _0802CAF2
	movs r2, #0x1d
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CA70
	movs r2, #7
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CA96
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CAC4
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CAF2
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CAF8
	b _0802CF0A
loc_802cafa
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CB9A
	cmp r1, #1
	beq _0802CB3C
	cmp r1, #2
	beq _0802CB6C
	cmp r1, #3
	bne _0802CB98
	movs r2, #0x15
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CB98
_0802CB3C
	movs r2, #5
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #7
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CB98
_0802CB6C
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CB98
	b _0802CBC8
_0802CB9A
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CBC8
	movs r0, #3
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802cbd0
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CC7C
	cmp r1, #1
	beq _0802CC12
	cmp r1, #2
	beq _0802CC38
	cmp r1, #3
	bne _0802CC64
	movs r2, #3
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CC64
_0802CC12
	movs r2, #0x19
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CC64
_0802CC38
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CC64
	b _0802CCAA
	ALIGN
_0802CC68 DCDU gUnknown_0803E578
_0802CC6C DCDU gUnknown_030032A0
_0802CC70 DCDU 0xFFFE0000
_0802CC74 DCDU gUnknown_03003D20
_0802CC78 DCDU gPlayerEntity
_0802CC7C
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CCAA
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802ccb2
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CD52
	cmp r1, #1
	beq _0802CCF4
	cmp r1, #2
	beq _0802CD24
	cmp r1, #3
	bne _0802CD50
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CD50
_0802CCF4
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x15
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CD50
_0802CD24
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CD50
	b _0802CD80
_0802CD52
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CD80
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802cd88
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CE14
	cmp r1, #1
	beq _0802CDC0
	cmp r1, #2
	beq _0802CDE6
	cmp r1, #3
	bne _0802CE42
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CDC0
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CDE6
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CE14
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CE42
	movs r0, #1
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802ce4a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CED6
	cmp r1, #1
	beq _0802CE82
	cmp r1, #2
	beq _0802CEA8
	cmp r1, #3
	bne _0802CF04
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CE82
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CEA8
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CED6
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CF04
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CF0A
	b _0802CFCC
loc_802cf0c
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CF98
	cmp r1, #1
	beq _0802CF44
	cmp r1, #2
	beq _0802CF6A
	cmp r1, #3
	bne _0802CFC6
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF44
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF6A
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF98
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CFC6
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CFCC
	ldr r7, _0802D0BC ;@ =gUnknown_03003EB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r6, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802D02C
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802D02C
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D08C
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D08C
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	movs r6, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802D0DA
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802D0C8
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802D0C8
	ldr r0, _0802D0C0 ;@ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	b _0802D0C4
	ALIGN
_0802D0B8 DCDU 0xFFFE0000
_0802D0BC DCDU gUnknown_03003EB8
_0802D0C0 DCDU gUnknown_03003EA0
_0802D0C4
	bl sub_800CD58
_0802D0C8
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802D0DA
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r5]
_0802D0DA
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8 ;@ =gUnknown_030032B0
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _0802D0F8
	ldr r1, _0802D2DC ;@ =gUnknown_0300345C
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
_0802D0F8
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D100
sub_802D100 ;@ 0x0802D100
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	beq _0802D180
	adds r6, r4, #4
	movs r7, #0
	cmp r0, #1
	beq _0802D1E0
	cmp r0, #2
	bne _0802D178
	ldr r0, _0802D2E0 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq _0802D13A
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802D13A
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802D218
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802D160
	ldr r0, _0802D2E4 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802D160
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802D178
	bl sub_8000914
_0802D178
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802D180
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq _0802D1B0
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	b _0802D178
_0802D1B0
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r5]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0802D178
_0802D1E0
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _0802D21A
	cmp r0, #0
	beq _0802D178
	ldr r0, _0802D2E4 ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0802D178
_0802D218
	b _0802D222
_0802D21A
	adds r1, r5, #0
	bl sub_803FF24
	b _0802D178
_0802D222
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802D178
	cmp r0, #0
	beq _0802D178
	ldr r0, _0802D2E4 ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0802D178

	thumb_func_start sub_802D23C
sub_802D23C ;@ 0x0802D23C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8 ;@ =gUnknown_030032B0
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	blt _0802D26E
	ldr r5, _0802D2DC ;@ =gUnknown_0300345C
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r4, r1, #0x13
	adds r0, r4, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802D26E
	ldr r0, [r5]
	adds r0, r4, r0
	bl sub_80268AC
_0802D26E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D274
sub_802D274 ;@ 0x0802D274
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802D2C8
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4
	lsrs r2, r4, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_0802D2C8
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D2D0
sub_802D2D0 ;@ 0x0802D2D0
	adds r0, #0x40
	ldrb r0, [r0, #4]
	bx lr
	ALIGN
_0802D2D8 DCDU gUnknown_030032B0
_0802D2DC DCDU gUnknown_0300345C
_0802D2E0 DCDU gUnknown_03003EA0
_0802D2E4 DCDU gUnknown_03003EB8
	END