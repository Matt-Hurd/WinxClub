    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_801F286
	IMPORT sub_801F450
	IMPORT sub_8023AA2
	IMPORT sub_8023FE4
	IMPORT sub_8028C2E
	IMPORT sub_802B0CA
	IMPORT sub_803490C
	IMPORT sub_8034A86
	IMPORT sub_803B8CA

	thumb_func_start sub_8039DAC
sub_8039DAC ;@ 0x08039DAC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r0, #0
	ldr r0, _0803A030 ;@ =gUnknown_03003E98
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xe0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	adds r7, #0x80
	movs r2, #0
	cmp r0, #0
	bne _08039E2E
	movs r3, #9
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #8]
	bpl _08039DE0
	strb r2, [r5, #8]
	NEGS r0, r0
	strb r0, [r5, #9]
	b _08039DEC
_08039DE0
	cmp r1, #4
	ble _08039DEC
	movs r1, #4
	strb r1, [r5, #8]
	NEGS r0, r0
	strb r0, [r5, #9]
_08039DEC
	movs r3, #8
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls _08039E00
	movs r6, #3
	b _08039E06
_08039E00
	cmp r6, #1
	bhs _08039E06
	movs r6, #1
_08039E06
	ldr r1, [r4, #0x30]
	ldr r0, _0803A034 ;@ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _0803A038 ;@ =0x000011EF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq _08039E2E
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08039E2E
	movs r3, #8
	ldrsb r0, [r5, r3]
	ldr r1, [r7, #0x24]
	ldr r2, [r4, #0x5c]
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x2c]
	subs r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r3, [r4, #0x58]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r2, [r1]
	movs r0, #0xff
	adds r0, #1
	orrs r2, r0
	str r2, [r1]
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _08039EB0
	ldr r3, [r4, #0x58]
	ldr r5, [r2, #0x2c]
	ldr r6, [r2, #0x30]
	subs r5, r3, r5
	ldr r3, [r4, #0x5c]
	adds r1, r2, #0
	subs r3, r3, r6
	ldr r6, [r2, #0x34]
	adds r1, #0x34
	adds r6, r6, r5
	str r6, [r2, #0x34]
	ldr r6, [r2, #0x38]
	adds r6, r6, r3
	str r6, [r1, #4]
	ldr r6, [r1, #8]
	adds r5, r6, r5
	str r5, [r1, #8]
	ldr r5, [r1, #0xc]
	adds r3, r5, r3
	str r3, [r1, #0xc]
	adds r4, #0x58
	ldm r4!, {r3, r4}
	str r3, [r2, #0x2c]
	str r4, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
_08039EB0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8039EB6
sub_8039EB6 ;@ 0x08039EB6
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r1, #0
	adds r6, r3, #0
	cmp r0, #0xf
	sub sp, #4
	beq _08039ECE
	cmp r0, #0x10
	bne _08039ED8
_08039ECE
	movs r0, #0
_08039ED0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08039ED8
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _08039EF4
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b _08039ED0
_08039EF4
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _08039F0C
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _08039F0C
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_801F450
_08039F0C
	movs r3, #0x97
	ldrsb r0, [r7, r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #2
	cmp r0, #6
	bhs _08039FB4
	add r3, pc, #0x8 ;@ =_08039F24
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08039F24
	DCB 0x03
_08039F25
	DCB 0x03
_08039F26
	DCB 0x44
_08039F27
	DCB 0x07
_08039F28
	DCB 0x1E
_08039F29
	DCB 0x07
loc_8039f2a
	adds r0, r4, #0
	bl sub_801F286
	b _08039FBA
loc_8039f32
	ldr r0, _0803A03C ;@ =gPlayerEntity
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r6
	strb r1, [r0, #6]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08039FBA
loc_8039f60
	ldr r0, _0803A040 ;@ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _08039FA4
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _08039FA4
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r2, r2, r0
	strb r2, [r1, #6]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08039FBA
_08039FA4
	adds r0, r4, #0
	bl sub_801F286
	b _08039FBA
loc_8039fac
	adds r0, r4, #0
	bl sub_801F286
	b _08039FBA
_08039FB4
	adds r0, r4, #0
	bl sub_801F286
_08039FBA
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt _08039FDE
	ldr r2, _0803A044 ;@ =gUnknown_03003478
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq _08039FDE
	ldr r0, _0803A03C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _0803A048 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
	b _0803A01E
_08039FDE
	ldr r1, _0803A03C ;@ =gPlayerEntity
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _0803A048 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _0803A04C ;@ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_8034A86
	adds r0, r4, #0
	bl sub_802B0CA
_0803A01E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08039ED0
	ALIGN
_0803A030 DCDU gUnknown_03003E98
_0803A034 DCDU gUnknown_03003EA0
_0803A038 DCDU 0x000011EF
_0803A03C DCDU gPlayerEntity
_0803A040 DCDU gUnknown_03003458
_0803A044 DCDU gUnknown_03003478
_0803A048 DCDU gUnknown_030034F8
_0803A04C DCDU gUnknown_0300345C
	END