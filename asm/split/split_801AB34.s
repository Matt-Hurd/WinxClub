	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_0300345C
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_8018386
	IMPORT sub_801A760
	IMPORT sub_801A82E
	IMPORT sub_801A8B8
	IMPORT sub_8028C2E
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v

	thumb_func_start HandleMainMenu
HandleMainMenu
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	add r0, sp, #4
	adds r5, r0, #0
	mov r6, sp
	bl sub_80143E0
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0xe5
	movs r2, #0x78
	adds r0, r6, #0
	adds r0, #0x7c
	ldr r3, _0801ABEC
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	bl sub_801A8B8
	movs r7, #0
_0801AB5C
	ldr r0, _0801ABF0
	adds r1, r7, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0801AB6A
	ldrh r1, [r0, #6]
_0801AB6A
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl _0801AB7C
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_801A82E
_0801AB7C
	lsls r0, r4, #0x18
	bpl _0801AB88
	movs r1, #1
	adds r0, r6, #0
	bl sub_801A82E
_0801AB88
	lsls r4, r4, #0x1f
	lsrs r4, r4, #0x1f
	bl sub_800EF2A
	cmp r4, #0
	beq _0801AB5C
	ldr r0, _0801ABF4
	ldr r0, [r0]
	bl sub_8028C2E
	add r3, sp, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801ABDA
	cmp r0, #1
	beq _0801ABE2
	cmp r0, #2
	bne _0801ABB2
	movs r0, #8
	bl sub_8018386
_0801ABB2
	adds r0, r6, #0
	bl sub_801A760
	movs r2, #0x77
	adds r0, r6, #0
	adds r0, #0xff
	mvns r2, r2
	adds r1, r5, #0
	adds r0, #0x6d
	ldr r3, _0801ABF8
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	add sp, #0x1fc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801ABDA
	movs r0, #0x13
	bl sub_8018386
	b _0801ABB2
_0801ABE2
	movs r0, #9
	bl sub_8018386
	b _0801ABB2
	ALIGN
_0801ABEC DCDU sub_80143E0
_0801ABF0 DCDU gUnknown_03003444
_0801ABF4 DCDU gUnknown_0300345C
_0801ABF8 DCDU sub_8014436
	END
