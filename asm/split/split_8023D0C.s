    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80268AC
	IMPORT __call_via_r1
	IMPORT __16__rt_sdiv
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_8023D0C
sub_8023D0C ;@ 0x08023D0C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08023D26
	movs r0, #0xff
	adds r0, #0x95
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _08023D26
	adds r0, r4, #0
_08023D20
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08023D26
	movs r5, #0
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc0
	strb r5, [r4, #0xd]
	str r5, [r0, #8]
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	adds r0, #0x5c
	bl sub_80143E0
	movs r0, #0
	adds r1, r5, #0
_08023D40
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	str r1, [r2, #0x1c]
	blo _08023D40
	movs r0, #0
_08023D54
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo _08023D54
	movs r0, #0
_08023D68
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #6
	str r1, [r2, #0x10]
	blo _08023D68
	movs r0, #0
_08023D7A
	lsls r3, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r3, r3, r4
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	str r1, [r3, #0x28]
	blo _08023D7A
	movs r0, #0
_08023D8E
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x48]
	str r2, [r1, #0x60]
	cmp r0, #6
	blo _08023D8E
	movs r0, #0
_08023DA2
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, #0x80
	lsrs r0, r0, #0x18
	cmp r0, #4
	str r2, [r1, #8]
	blo _08023DA2
	movs r0, #0
_08023DB8
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r1, #0x80
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x18]
	str r2, [r1, #0x30]
	cmp r0, #6
	blo _08023DB8
	adds r0, r4, #0
	b _08023D20

	thumb_func_start sub_8023DD0
sub_8023DD0 ;@ 0x08023DD0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xff
	adds r0, #0x1d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
	movs r7, #0
_08023DE6
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _08023DFE
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x10]
_08023DFE
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023DE6
	movs r5, #0
_08023E0A
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _08023E22
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
_08023E22
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08023E0A
	movs r5, #0
_08023E2E
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _08023E46
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x48]
_08023E46
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E2E
	movs r5, #0
_08023E52
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _08023E6E
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0x98
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x18]
_08023E6E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E52
	movs r5, #0
_08023E7A
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq _08023E92
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x78]
_08023E92
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _08023E7A
	movs r5, #0
_08023E9E
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x30]
	cmp r1, #0
	beq _08023EBA
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0xb0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
_08023EBA
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E9E
	movs r5, #0
_08023EC6
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x60]
	cmp r0, #0
	beq _08023EDE
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x60]
_08023EDE
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023EC6
	movs r5, #0
_08023EEA
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #8]
	cmp r1, #0
	beq _08023F06
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0x88
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
_08023F06
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _08023EEA
	movs r5, #0
_08023F12
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _08023F2E
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0xd4
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x14]
_08023F2E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08023F12
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _08023F50
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xd0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0x10]
_08023F50
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08023F64
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xc8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #8]
_08023F64
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08023F78
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0xc]
_08023F78
	ldr r0, _08024070 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xc0
	bl sub_80268AC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023F88
sub_8023F88 ;@ 0x08023F88
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #4
	cmp r0, #0
	beq _08023F9A
	adds r0, r5, #0
	bl sub_8023DD0
_08023F9A
	movs r4, #0
	movs r7, #0
_08023F9E
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _08023FBA
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0xdc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x1c]
_08023FBA
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x10
	blo _08023F9E
	adds r0, r5, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x1d
	bl sub_8014436
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08023FDC
	adds r0, r5, #0
	bl sub_803DA18
_08023FDC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023FE4
sub_8023FE4 ;@ 0x08023FE4
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _08024074 ;@ =gPlayerEntity
	movs r3, #8
	ldr r0, [r0]
	sub sp, #8
	adds r0, #0xa0
	ldrsb r1, [r0, r3]
	lsls r1, r1, #6
	movs r3, #9
	ldrsb r0, [r0, r3]
	bl __16__rt_sdiv
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r4, #2
_08024002
	lsls r0, r4, #4
	subs r0, #0x20
	cmp r0, r6
	bge _08024012
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08024014
_08024012
	movs r0, #0
_08024014
	ldr r2, _08024078 ;@ =0x0000087D
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _08024020
	ldr r1, _0802407C ;@ =0x0000086D
	adds r1, r0, r1
_08024020
	subs r0, r2, r1
	ldr r1, _0802407C ;@ =0x0000086D
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r7, r0, r1
	lsrs r5, r5, #0x10
	adds r7, #0x80
	ldr r1, [r7, #0x30]
	ldr r0, _08024080 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _08024058
	adds r1, r5, #0
	ldr r0, [r7, #0x30]
	bl sub_800065C
_08024058
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _08024002
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802406C DCDU gUnknown_03003448
_08024070 DCDU gUnknown_0300345C
_08024074 DCDU gPlayerEntity
_08024078 DCDU 0x0000087D
_0802407C DCDU 0x0000086D
_08024080 DCDU gUnknown_03003EA0
	END