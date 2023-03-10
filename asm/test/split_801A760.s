    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080507E4
	IMPORT sub_800065C
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800EF60
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_8013B76
	IMPORT sub_80147FA
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803B8D6
	IMPORT sub_803D66C
	IMPORT sub_80401E4
	IMPORT sub_8040640

	thumb_func_start sub_801A760
sub_801A760 ;@ 0x0801A760
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
_0801A766
	ldrb r0, [r5]
	cmp r0, r4
	beq _0801A796
	lsls r0, r4, #3
	adds r6, r0, r5
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	movs r1, #0
	bl sub_80401E4
	movs r1, #0
	ldr r0, [r6, #0x28]
	bl sub_80401E4
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, #0x7c
	movs r2, #0
	add r1, pc, #0x374 ;@ =_0801AB08
	bl sub_80137F8
_0801A796
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0801A766
	movs r3, #0
	movs r0, #0
	movs r1, #0
	lsls r2, r1, #0xa
_0801A7A8
	lsls r1, r0, #3
	adds r4, r1, r5
	adds r4, #0xff
	adds r4, #0xc1
	ldr r1, [r4, #0x24]
	ldrh r6, [r1, #0x26]
	lsls r7, r6, #0x14
	lsrs r7, r7, #0x1e
	cmp r7, r3
	beq _0801A7E2
	movs r7, #3
	lsls r7, r7, #0xa
	bics r6, r7
	orrs r6, r2
	strh r6, [r1, #0x26]
	ldr r6, [r1]
	movs r7, #0x80
	orrs r6, r7
	str r6, [r1]
	ldr r1, [r4, #0x28]
	movs r6, #3
	ldrh r4, [r1, #0x26]
	lsls r6, r6, #0xa
	bics r4, r6
	orrs r4, r2
	strh r4, [r1, #0x26]
	ldr r4, [r1]
	orrs r4, r7
	str r4, [r1]
_0801A7E2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo _0801A7A8
	ldr r0, _0801AB0C ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_80180BE
	movs r6, #0
_0801A7FE
	movs r4, #0
	lsls r0, r6, #3
	adds r7, r0, r5
_0801A804
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _0801AB10 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0801A804
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _0801A7FE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801A82E
sub_801A82E ;@ 0x0801A82E
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r1, #0
	ldrb r0, [r0]
	bge _0801A844
	adds r0, #2
	bl sub_8040640
	strb r0, [r4]
	b _0801A850
_0801A844
	cmp r5, #0
	ble _0801A850
	adds r0, #1
	bl sub_8040640
	strb r0, [r4]
_0801A850
	movs r0, #0
_0801A852
	ldrb r1, [r4]
	movs r2, #1
	cmp r1, r0
	bne _0801A85C
	movs r2, #0
_0801A85C
	lsls r1, r0, #3
	adds r3, r1, r4
	adds r3, #0xff
	adds r3, #0xc1
	ldr r1, [r3, #0x24]
	ldrh r6, [r1, #0x26]
	lsls r7, r6, #0x14
	lsrs r7, r7, #0x1e
	cmp r7, r2
	beq _0801A89A
	movs r7, #3
	lsls r7, r7, #0xa
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x14
	bics r6, r7
	orrs r6, r2
	strh r6, [r1, #0x26]
	ldr r6, [r1]
	movs r7, #0x80
	orrs r6, r7
	str r6, [r1]
	ldr r1, [r3, #0x28]
	movs r6, #3
	ldrh r3, [r1, #0x26]
	lsls r6, r6, #0xa
	bics r3, r6
	orrs r2, r3
	strh r2, [r1, #0x26]
	ldr r2, [r1]
	orrs r2, r7
	str r2, [r1]
_0801A89A
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo _0801A852
	cmp r5, #0
	beq _0801A8B2
	ldr r0, _0801AB0C ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_0801A8B2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801A8B8
sub_801A8B8 ;@ 0x0801A8B8
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r0, sp, #8
	bl sub_80046F8
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	add r0, pc, #0x244 ;@ =_0801AB14
	bl sub_800EF60
	ldr r4, _0801AB24 ;@ =gUnknown_03003460
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A8FA
	bl sub_800B72A
	cmp r0, #0
	beq _0801A8EE
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _0801A8FA
_0801A8EE
	ldr r0, _0801AB0C ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_0801A8FA
	movs r0, #0
	ldr r1, [sp, #0x18]
	movs r4, #0
	strb r0, [r1]
_0801A902
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r1, [sp, #0x18]
	lsls r0, r0, #3
	adds r5, r0, r1
	adds r5, #0x7c
	ldr r0, [r5]
	lsls r7, r4, #5
	ldr r1, [r0, #0x18]
	adds r7, r7, r4
	adds r2, r1, r0
	movs r1, #0
	adds r7, #0x3e
	adds r6, r5, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	adds r2, r7, #0
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0xa
	adds r0, r5, #0
	bl sub_803B8CE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x10
	movs r1, #0x50
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r7, r2, r1
	movs r2, #0xff
	movs r1, #4
	bl sub_803B8D6
	adds r0, r5, #0
	bl sub_8013B76
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801AB28 ;@ =gUnknown_080507E4
	lsls r0, r4, #1
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r6, #0
	bl sub_80138E2
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0801A902
	movs r7, #0
_0801A992
	lsls r0, r7, #5
	adds r0, r0, r7
	adds r0, #0x3c
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsls r0, r7, #3
	movs r5, #0
	adds r1, r0, r1
	str r1, [sp, #0x10]
_0801A9A4
	ldr r0, _0801AB10 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x10]
	lsls r2, r5, #2
	adds r6, r1, r2
	adds r6, #0xff
	adds r6, #0xc1
	ldr r1, _0801AB2C ;@ =0x00000CA9
	str r0, [r6, #0x24]
	adds r1, r5, r1
	bl sub_800065C
	lsls r1, r5, #6
	adds r1, #0xa
	ldr r4, [r6, #0x24]
	ldr r0, [sp, #0x14]
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	lsls r2, r1, #0x10
	ldrh r1, [r3, #6]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	blt _0801AA1C
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x14
	cmp r0, r1
	bge _0801AA1C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _0801AA1C
	movs r1, #5
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x15
	cmp r0, r1
	blt _0801AA3C
_0801AA1C
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0801AA96
	ldr r0, _0801AB30 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _0801AA96
_0801AA3C
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _0801AA5E
	ldr r0, _0801AB30 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0801AA5E
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0801AA96
	ldr r0, [r6, #0x24]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801AAB6
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801AAB6
	movs r1, #1
	ldr r0, [r6, #0x24]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	bhs _0801AACA
	b _0801A9A4
_0801AACA
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #3
	bhs _0801AAD6
	b _0801A992
_0801AAD6
	bl sub_8018070
	movs r1, #8
	mov r4, sp
	adds r4, r4, r1
	movs r2, #0x3f
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_801A82E
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801AB08 DCDU 0x00000020
_0801AB0C DCDU gUnknown_0300345C
_0801AB10 DCDU gUnknown_03003448
_0801AB14 DCDU 0x69544742
_0801AB18 DCDU 0x53656C74
_0801AB1C DCDU 0x65657263
_0801AB20 DCDU 0x0000006E
_0801AB24 DCDU gUnknown_03003460
_0801AB28 DCDU gUnknown_080507E4
_0801AB2C DCDU 0x00000CA9
_0801AB30 DCDU gUnknown_03003EA0
