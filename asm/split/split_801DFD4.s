    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_8001432
	IMPORT sub_803B8CA
	IMPORT sub_803B8CC
	IMPORT sub_803DA18
	IMPORT sub_803F170
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_801DFD4
sub_801DFD4 ;@ 0x0801DFD4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _0801DFF0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0801DFF0
	movs r1, #1
	bl sub_80401E4
_0801DFF0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x19
	ldr r0, [r4, #0x2c]
	lsls r7, r6, #4
	cmp r0, #0
	beq _0801E0B8
	bl sub_803F6B4
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r0, _0801E2C4 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x2c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r2, [r1]
	lsrs r3, r6, #1
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1f
	lsls r2, r2, #0x18
	bics r0, r3
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	bics r2, r6
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r2, r0
	str r2, [r4, #0x50]
	ldrh r0, [r1, #0x28]
	lsls r3, r3, #3
	bics r2, r3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	orrs r2, r0
	str r2, [r4, #0x50]
	ldrh r0, [r1, #0x28]
	bics r2, r3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	orrs r0, r2
	orrs r0, r7
	str r0, [r4, #0x50]
	ldrb r2, [r1, #5]
	cmp r2, #0x42
	bhi _0801E09C
	lsls r2, r3, #3
	orrs r0, r2
	str r0, [r4, #0x50]
_0801E09C
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0801E0B8
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0801E2C8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0801E0B8
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0801E0EC
	ldr r0, _0801E2C4 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r1, [r4, #0x54]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x30]
	bics r1, r6
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r7
	str r0, [r4, #0x54]
_0801E0EC
	movs r5, #0
_0801E0EE
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801E102
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
_0801E102
	adds r5, #1
	cmp r5, #5
	blo _0801E0EE
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _0801E11A
_0801E10E
	adds r0, r5, #0
	ldr r5, [r5, #0x18]
	bl sub_803DA18
	cmp r5, #0
	bne _0801E10E
_0801E11A
	movs r0, #0
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801E124
sub_801E124 ;@ 0x0801E124
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x50]
	adds r7, r4, #0
	adds r5, r4, #0
	adds r5, #0x80
	adds r7, #0x58
	lsls r0, r0, #2
	cmp r0, #0
	sub sp, #0xc
	bge _0801E20A
	ldr r0, _0801E2C8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x50]
	ldr r6, [r4, #0x2c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1a
	str r0, [sp, #8]
	ldr r0, _0801E2C4 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	ldr r3, _0801E2CC ;@ =0x0010BE20
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	movs r2, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [sp, #8]
	strb r0, [r6, #3]
	ldr r0, [sp, #8]
	muls r0, r3
	str r0, [r6, #8]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x12
	bpl _0801E1A4
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_803F170
_0801E1A4
	ldr r0, [r4, #0x50]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	adds r1, r7, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r5, #0x14]
	movs r6, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	lsls r6, r6, #0xe
	cmp r0, #1
	bne _0801E1D6
	movs r1, #0xbf
	ldr r0, [r4, #0x2c]
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b _0801E1F0
_0801E1D6
	cmp r0, #2
	ldr r0, [r4, #0x2c]
	bne _0801E1EA
	movs r1, #0x7f
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b _0801E1F0
_0801E1EA
	movs r1, #0x82
	bl sub_80401C0
_0801E1F0
	ldr r0, [r4, #0x50]
	lsls r0, r0, #7
	bpl _0801E1FC
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0801E1FC
	ldr r0, [r4, #0x50]
	lsls r0, r0, #6
	bpl _0801E20A
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_80401E4
_0801E20A
	ldr r0, [r4, #0x54]
	lsls r0, r0, #2
	bpl _0801E284
	ldr r0, _0801E2C8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x13
	bpl _0801E24C
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_803F170
_0801E24C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #0xbe
	bl sub_80401C0
	adds r1, r7, #0
	ldr r0, [r4, #0x30]
	bl sub_803FF24
	ldr r0, [r4, #0x54]
	lsls r0, r0, #6
	bpl _0801E284
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_80401E4
_0801E284
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r5, #0
_0801E292
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801E2A8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl sub_803B8CC
_0801E2A8
	adds r5, #1
	cmp r5, #5
	blo _0801E292
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801E2C4 DCDU gUnknown_03003EA0
_0801E2C8 DCDU gUnknown_03003EB8
_0801E2CC DCDU 0x0010BE20
	END