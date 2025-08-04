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
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v

	thumb_func_start HandleGameOverScreen
HandleGameOverScreen
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
	ldr r3, _08030658
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	bl sub_8030346
	movs r7, #0
	mvns r7, r7
1
	bl sub_800EF2A
	ldr r0, _0803065C
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %2
	ldrh r1, [r0, #6]
2
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl %3
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_80302CC
3
	lsls r0, r4, #0x18
	bpl %4
	movs r1, #1
	adds r0, r6, #0
	bl sub_80302CC
4
	lsls r0, r4, #0x1f
	beq %1
	ldr r0, _08030660
	ldr r0, [r0]
	bl sub_8028C2E
	adds r0, r6, #0
	bl sub_8030244
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r6, #0
	adds r0, #0xf4
	ldr r3, _08030664
	bl __vecmap1ci__FPvT1iPFPvi_v
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
	END
