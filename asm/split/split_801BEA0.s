    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E88
	IMPORT sub_80179BE
	IMPORT sub_80187A0
	IMPORT sub_801B56C
	IMPORT sub_801BBE0
	IMPORT sub_801D9B0
	IMPORT sub_801F28C
	IMPORT sub_8024D30
	IMPORT sub_803B8CA
	IMPORT sub_803B8D0
	IMPORT sub_803F72C
	IMPORT sub_803FEF8

	thumb_func_start sub_801BEA0
sub_801BEA0 ;@ 0x0801BEA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801BBE0
	adds r0, r4, #0
	bl sub_801B56C
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start nullsub_47
nullsub_47 ;@ 0x0801BEB4
	bx lr

	non_word_aligned_thumb_func_start sub_801BEB6
sub_801BEB6 ;@ 0x0801BEB6
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r0, #0
	ldr r0, _0801C1F0 ;@ =0x000003E7
	movs r7, #0
	str r7, [sp, #0x28]
	str r7, [sp, #0x20]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	movs r2, #5
	ldr r0, [r0, #0x30]
	lsls r2, r2, #8
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	adds r0, r6, r2
	str r0, [sp, #0x30]
	ldr r0, [r0, #0x1c]
	movs r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	bls _0801BFCE
_0801BEEA
	lsls r0, r7, #2
	adds r4, r0, r6
	ldr r0, [r4, #0x20]
	ldr r1, [r0, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne _0801BFD0
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r2, [r1, #0xd]
	cmp r2, #0
	beq _0801BF0A
	ldrb r1, [r1, #0xc]
	cmp r1, #0
	beq _0801BF28
_0801BF0A
	movs r1, #0x80
	ldr r1, [r1, r0]
	lsls r1, r1, #9
	lsrs r1, r1, #0x14
	beq _0801BFEA
	ldr r1, [r0, #0x28]
	bl sub_801D9B0
	cmp r0, #0
	beq _0801BF22
	movs r0, #1
	b _0801BF24
_0801BF22
	movs r0, #0
_0801BF24
	cmp r0, #0
	beq _0801BFEA
_0801BF28
	ldr r0, [r4, #0x20]
	movs r1, #0x7d
	ldrsb r5, [r1, r0]
	cmp r5, #0
	beq _0801BFD0
	ldr r0, [r0, #0x30]
	ldr r2, _0801C1F4 ;@ =gUnknown_03003D20
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #4]
	str r1, [sp, #8]
	subs r0, r0, r2
	str r0, [sp, #0xc]
	add r0, sp, #8
	add r1, sp, #0x10
	bl sub_80187A0
	cmp r0, r5
	bhs _0801BF70
	cmp r5, #0
	bgt _0801BF7A
_0801BF70
	NEGS r1, r5
	cmp r0, r1
	bls _0801BFD0
	cmp r5, #0
	bge _0801BFD0
_0801BF7A
	ldr r1, [r4, #0x20]
	adds r1, #0x70
	ldrb r2, [r1, #0xd]
	cmp r2, #0
	beq _0801BFEC
	ldrb r2, [r1, #0xc]
	cmp r2, #0
	bne _0801BFEC
	strb r2, [r1, #0xd]
	ldr r1, _0801C1F8 ;@ =gUnknown_03003458
	movs r2, #5
	ldr r1, [r1]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _0801BFEC
	movs r1, #1
	cmp r5, #0
	bgt _0801BFA6
	movs r1, #0
_0801BFA6
	movs r0, #5
	bl sub_803FEF8
	lsrs r1, r5, #0x1f
	movs r0, #6
	bl sub_803FEF8
	movs r1, #1
	movs r0, #7
	bl sub_803FEF8
	ldr r0, _0801C1FC ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x2c
	strh r1, [r0]
	b _0801BFD2
_0801BFCE
	b _0801C1A0
_0801BFD0
	b _0801C0A6
_0801BFD2
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r0, #0
	ldr r0, _0801C200 ;@ =gUnknown_03003454
	ldr r1, [r4, #0x20]
	ldr r0, [r0]
	bl sub_80179BE
	b _0801C0A6
_0801BFEA
	b _0801C00C
_0801BFEC
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bhs _0801BFF6
	str r0, [sp, #0x2c]
	str r7, [sp, #0x28]
_0801BFF6
	ldr r1, [r4, #0x20]
	adds r1, #0x70
	ldrb r1, [r1, #0xc]
	cmp r0, r1
	bhs _0801C0A6
	ldr r1, [sp, #0x24]
	cmp r0, r1
	bhs _0801C0A6
	str r0, [sp, #0x24]
	str r7, [sp, #0x20]
	b _0801C0A6
_0801C00C
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x14
	bpl _0801C0A6
	ldr r0, [r6, #0x20]
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	cmp r0, #5
	beq _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x2c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r5, r0, #0
	beq _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r1, r2, r1
	bl sub_803B8CA
	cmp r0, #0
	bne _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r2, _0801C1F4 ;@ =gUnknown_03003D20
	adds r0, #0x58
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #4]
	str r1, [sp, #8]
	subs r0, r0, r2
	str r0, [sp, #0xc]
	add r0, sp, #8
	add r1, sp, #0x10
	bl sub_80187A0
	cmp r0, r5
	bhs _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x24]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #0x20]
	movs r2, #0xac
	ldr r2, [r2, r1]
	ldr r0, [r6, #0x20]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r1
	adds r2, #0x80
	ldr r2, [r2, #0x38]
	lsls r2, r2, #2
	lsrs r3, r2, #0x19
	ldr r2, [r0]
	ldr r4, [r2, #0x34]
	adds r4, r4, r2
	movs r2, #1
	bl sub_803B8D0
_0801C0A6
	ldr r0, [sp, #0x30]
	adds r7, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r7
	bls _0801C0B6
	b _0801BEEA
_0801C0B6
	ldr r7, [sp, #0x28]
	cmp r7, #0
	beq _0801C1A0
	movs r5, #1
	ldr r7, [sp, #0x20]
	lsls r5, r5, #0x18
	cmp r7, #0
	beq _0801C178
	ldr r0, [r6, #0x20]
	ldr r1, [r0, #0x7c]
	adds r0, #0x58
	lsls r1, r1, #4
	lsrs r2, r1, #0x1c
	ldr r1, [r0]
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	ldr r7, [sp, #0x20]
	str r0, [sp, #0xc]
	lsls r0, r7, #2
	adds r4, r0, r6
	ldr r0, [r4, #0x20]
	add r1, sp, #8
	bl sub_801F28C
	cmp r0, #0
	beq _0801C178
	ldr r0, [r4, #0x20]
	movs r1, #0x80
	ldr r1, [r1, r0]
	lsls r1, r1, #9
	lsrs r2, r1, #0x14
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x24]
	lsls r3, r0, #0x10
	ldr r0, _0801C204 ;@ =gUnknown_030034F8
	lsrs r3, r3, #0x10
	ldr r0, [r0]
	bl sub_8024D30
	ldr r1, [r4, #0x20]
	adds r1, #0x80
	ldr r0, [r1]
	lsls r2, r0, #7
	lsrs r2, r2, #0x1f
	bne _0801C126
	bics r0, r5
	orrs r0, r5
	str r0, [r1]
	ldr r0, [r4, #0x20]
	adds r0, #0x80
	ldr r1, [r0]
	lsrs r2, r5, #1
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	str r1, [r0]
_0801C126
	ldr r0, _0801C208 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	lsls r1, r1, #0x1c
	bmi _0801C134
	ldrh r2, [r0, #8]
_0801C134
	lsls r0, r2, #0x1f
	bpl _0801C170
	ldr r0, _0801C1F8 ;@ =gUnknown_03003458
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	adds r0, r0, r2
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne _0801C170
	ldr r0, _0801C1FC ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x2c
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r0, #0
	ldr r0, _0801C200 ;@ =gUnknown_03003454
	ldr r1, [r4, #0x20]
	ldr r0, [r0]
	bl sub_80179BE
_0801C170
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801C178
	ldr r7, [sp, #0x20]
	lsls r0, r7, #2
	adds r0, r0, r6
	ldr r2, [r0, #0x20]
	adds r2, #0x80
	ldr r1, [r2]
	lsls r3, r1, #7
	lsrs r3, r3, #0x1f
	beq _0801C192
	bics r1, r5
	movs r3, #0
	orrs r1, r3
	str r1, [r2]
_0801C192
	ldr r2, [r0, #0x20]
	adds r2, #0x80
	ldr r1, [r2]
	lsls r3, r1, #8
	lsrs r3, r3, #0x1f
	bne _0801C1AC
	b _0801C1A2
_0801C1A0
	b _0801C1C2
_0801C1A2
	movs r3, #1
	lsls r3, r3, #0x17
	bics r1, r3
	orrs r1, r3
	str r1, [r2]
_0801C1AC
	ldr r0, [r0, #0x20]
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x2c]
	lsls r3, r0, #0x10
	ldr r0, _0801C204 ;@ =gUnknown_030034F8
	lsrs r3, r3, #0x10
	movs r2, #0
	ldr r0, [r0]
	bl sub_8024D30
	b _0801C170
_0801C1C2
	ldr r0, [r6, #0x20]
	movs r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1f
	beq _0801C170
	ldr r0, _0801C204 ;@ =gUnknown_030034F8
	adds r3, r4, #0
	movs r2, #0
	ldr r1, _0801C20C ;@ =0x0000FFFE
	ldr r0, [r0]
	bl sub_8024D30
	ldr r0, [r6, #0x20]
	movs r2, #1
	adds r0, #0x80
	ldr r1, [r0]
	lsls r2, r2, #0x17
	bics r1, r2
	orrs r1, r4
	str r1, [r0]
	b _0801C170
	ALIGN
_0801C1F0 DCDU 0x000003E7
_0801C1F4 DCDU gUnknown_03003D20
_0801C1F8 DCDU gUnknown_03003458
_0801C1FC DCDU gUnknown_03003E88
_0801C200 DCDU gUnknown_03003454
_0801C204 DCDU gUnknown_030034F8
_0801C208 DCDU gUnknown_03003444
_0801C20C DCDU 0x0000FFFE
	END