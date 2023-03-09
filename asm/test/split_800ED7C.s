    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003438
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003E9C
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_0804AE1E
	IMPORT sub_80014E4
	IMPORT sub_80049B4
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800B09A
	IMPORT sub_800B12C
	IMPORT sub_800E2F6
	IMPORT sub_800E5EA
	IMPORT sub_800EC0E
	IMPORT sub_800FE90
	IMPORT sub_800FF00
	IMPORT sub_800FF5E
	IMPORT sub_801006A
	IMPORT sub_8010234
	IMPORT sub_8010278
	IMPORT sub_80137F8
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_8013D52
	IMPORT sub_8013DEA
	IMPORT sub_8013FF8
	IMPORT sub_801402C
	IMPORT sub_80180BE
	IMPORT sub_8028B2C
	IMPORT sub_802EF0A
	IMPORT sub_8031622
	IMPORT sub_803B8A4
	IMPORT sub_803B8CC
	IMPORT sub_803B8D6

	thumb_func_start sub_800ED7C
sub_800ED7C ;@ 0x0800ED7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _0800EFC4 ;@ =0xFFFFE81C
	ldr r0, _0800EFC8 ;@ =gUnknown_03003EAC
	ldr r2, _0800EFCC ;@ =0x04000200
	add sp, r3
	ldr r0, [r0]
	movs r1, #0
	strh r1, [r2, #8]
	movs r3, #1
	movs r2, #0
	bl sub_800B12C
	add r0, sp, #0xb0
	bl sub_8010234
	add r0, sp, #0x88
	bl sub_800FF00
	add r0, sp, #0x68
	bl sub_800FE90
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_8013FF8
	movs r0, #0
	ldr r6, _0800EFD0 ;@ =gUnknown_03003438
	mvns r0, r0
	strh r0, [r6, #4]
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	str r5, [r6, #0x38]
	lsls r0, r4, #1
	ldr r1, _0800EFD4 ;@ =gUnknown_0804AE1E
	str r0, [r3, #0x60]
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0800EE94
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #3
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	movs r2, #0
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #8]
	adds r7, r0, r1
	movs r1, #4
	adds r0, r5, #0
	bl sub_803B8D6
	ldr r1, [sp, #8]
	adds r0, r5, #0
	ldr r1, [r1, #0x10]
	ldr r2, [sp, #8]
	adds r7, r1, r2
	movs r2, #0x16
	movs r1, #0xe8
	bl sub_803B8D6
	adds r0, r5, #0
	bl sub_8013B76
	ldr r0, _0800EFD8 ;@ =0x060102C0
	movs r1, #0x5c
	str r0, [sp, #0x5c]
	movs r0, #0xa5
	lsls r0, r0, #6
	str r0, [sp, #0x60]
	movs r0, #0xf0
	strh r0, [r1, r5]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #2
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x30]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #1
	adds r0, r5, #0
	bl sub_803B8CC
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x60]
	ldr r1, _0800EFD4 ;@ =gUnknown_0804AE1E
	ldrh r1, [r1, r0]
	strh r1, [r6, #2]
	ldr r0, [r6, #0x14]
	adds r3, r1, #0
	ldrb r1, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r7, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r1, #2
	lsls r3, r7
	adds r2, r2, r3
	ldr r1, [r2, r1]
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	adds r7, r0, r1
	ldr r0, [r7]
	str r0, [sp]
	movs r0, #0
	strb r0, [r3, #4]
	mov r0, sp
	bl sub_803B8A4
	strh r0, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	movs r2, #0
	adds r1, r7, #5
	ldr r0, [r6, #0x38]
	bl sub_80137F8
	movs r1, #1
	ldr r0, [r6, #0x38]
	bl sub_80139AC
_0800EE94
	ldr r0, _0800EFDC ;@ =gUnknown_03003EA8
	ldr r2, _0800EFD4 ;@ =gUnknown_0804AE1E
	lsls r1, r4, #2
	subs r2, #0xb6
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl sub_8004FFC
	add r7, sp, #0xb0
	str r7, [sp, #0x6c]
	str r0, [sp, #0x68]
	cmp r4, #0
	beq _0800EEB2
	cmp r4, #1
	bne _0800EEB8
_0800EEB2
	ldr r0, _0800EFE0 ;@ =0xFFFF0000
	str r0, [sp, #0x70]
	b _0800EEBE
_0800EEB8
	movs r0, #1
	lsls r0, r0, #0x13
	str r0, [sp, #0x70]
_0800EEBE
	ldrh r0, [r6, #4]
	ldr r1, _0800EFE4 ;@ =0x0000FFFF
	cmp r0, r1
	beq _0800EECC
	ldr r0, _0800EFE8 ;@ =sub_800EC0E
	str r0, [sp, #0x84]
	b _0800EED0
_0800EECC
	movs r0, #0
	str r0, [sp, #0x84]
_0800EED0
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _0800EEDE
	add r1, sp, #0x68
	add r0, sp, #0x88
	bl sub_801006A
_0800EEDE
	movs r1, #0
	adds r0, r5, #0
	bl sub_801402C
	movs r1, #0
	add r0, sp, #0x88
	bl sub_800FF5E
	movs r1, #0
	adds r0, r7, #0
	bl sub_8010278
	movs r0, #0
	str r0, [r6, #0x38]
	ldr r0, _0800EFC8 ;@ =gUnknown_03003EAC
	movs r4, #1
	movs r1, #0
	adds r3, r4, #0
	ldr r2, _0800EFEC ;@ =sub_800E5EA
	ldr r0, [r0]
	bl sub_800B12C
	ldr r0, _0800EFCC ;@ =0x04000200
	strh r4, [r0, #8]
	bl sub_80180BE
	ldr r3, _0800EFF0 ;@ =0x000017E4
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800EF1C
sub_800EF1C ;@ 0x0800EF1C
	push {r3, lr}
	movs r0, #3
	bl sub_8013DEA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800EF2A
sub_800EF2A ;@ 0x0800EF2A
	push {r4, lr}
	movs r0, #1
	bl sub_8013D52
	ldr r4, _0800EFD0 ;@ =gUnknown_03003438
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0800EF3E
	bl sub_80049B4
_0800EF3E
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800EF48
	bl sub_80014E4
_0800EF48
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0800EF52
	bl sub_8028B2C
_0800EF52
	ldr r0, _0800EFF4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800EF60
sub_800EF60 ;@ 0x0800EF60
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800EFD0 ;@ =gUnknown_03003438
	ldr r0, [r0, #0x30]
	bl sub_80050FA
	ldr r0, _0800EFDC ;@ =gUnknown_03003EA8
	add r1, pc, #0x88 ;@ =_0800EFF8
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #4
	bl sub_802EF0A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r5, _0800F00C ;@ =gUnknown_03003E9C
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0800EF94
	movs r1, #0
	ldr r0, [r5]
	bl sub_8031622
_0800EF94
	ldr r0, _0800EFF4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B09A
	adds r1, r0, #0
	movs r2, #3
	adds r0, r4, #0
	bl sub_800E2F6
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0800EFB6
	movs r1, #1
	ldr r0, [r5]
	bl sub_8031622
_0800EFB6
	movs r0, #0
	bl sub_80050FA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0800EFC4 DCDU 0xFFFFE81C
_0800EFC8 DCDU gUnknown_03003EAC
_0800EFCC DCDU 0x04000200
_0800EFD0 DCDU gUnknown_03003438
_0800EFD4 DCDU gUnknown_0804AE1E
_0800EFD8 DCDU 0x060102C0
_0800EFDC DCDU gUnknown_03003EA8
_0800EFE0 DCDU 0xFFFF0000
_0800EFE4 DCDU 0x0000FFFF
_0800EFE8 DCDU sub_800EC0E
_0800EFEC DCDU sub_800E5EA
_0800EFF0 DCDU 0x000017E4
_0800EFF4 DCDU gUnknown_03003E98
_0800EFF8 DCDU 0x706D6F43
_0800EFFC DCDU 0x73736572
_0800F000 DCDU 0x2E636950
_0800F004 DCDU 0x74736D6D
_0800F008 DCDU 0x00000072
_0800F00C DCDU gUnknown_03003E9C
