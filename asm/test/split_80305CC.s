    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_0300345C
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_8028C2E
	IMPORT sub_8030244
	IMPORT sub_80302CC
	IMPORT sub_8030346
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8

	thumb_func_start sub_80305CC
sub_80305CC ;@ 0x080305CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x17c
	add r0, sp, #4
	adds r5, r0, #0
	mov r6, sp
	bl sub_80143E0
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x6d
	movs r2, #0x78
	adds r0, r6, #0
	adds r0, #0x7c
	ldr r3, _08030658 ;@ =sub_80143E0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_8030346
	movs r7, #0
	mvns r7, r7
_080305F6
	bl sub_800EF2A
	ldr r0, _0803065C ;@ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08030608
	ldrh r1, [r0, #6]
_08030608
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl _08030618
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_80302CC
_08030618
	lsls r0, r4, #0x18
	bpl _08030624
	movs r1, #1
	adds r0, r6, #0
	bl sub_80302CC
_08030624
	lsls r0, r4, #0x1f
	beq _080305F6
	ldr r0, _08030660 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	bl sub_8028C2E
	adds r0, r6, #0
	bl sub_8030244
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r6, #0
	adds r0, #0xf4
	ldr r3, _08030664 ;@ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	add sp, #0x17c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08030658 DCDU sub_80143E0
_0803065C DCDU gUnknown_03003444
_08030660 DCDU gUnknown_0300345C
_08030664 DCDU sub_8014436
