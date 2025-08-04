	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003444
	IMPORT gUnknown_080514B0
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT SetNextGlobalFunction
	IMPORT sub_8038888
	IMPORT sub_803894A
	IMPORT sub_80389CC
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v

	thumb_func_start HandleTeleportMenu
HandleTeleportMenu
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r5, sp, #4
	adds r1, r5, #0
	adds r1, #0xf8
	adds r6, r1, #0
	adds r0, r5, #0
	movs r2, #0x78
	adds r0, #8
	ldr r3, _08038E2C
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x71
	adds r7, r0, #0
	bl sub_80143E0
	movs r4, #0
	adds r0, r5, #0
	bl sub_80389CC
1
	ldr r0, _08038E30
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %2
	ldrh r1, [r0, #6]
2
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x1e
	bpl %3
	movs r4, #1
	b %8
3
	lsls r1, r0, #0x1f
	bpl %4
	movs r4, #2
	b %8
4
	lsls r1, r0, #0x1a
	bpl %5
	movs r1, #0
	mvns r1, r1
	adds r0, r5, #0
	bl sub_803894A
	b %8
5
	lsls r1, r0, #0x1b
	bpl %6
	movs r1, #1
	adds r0, r5, #0
	bl sub_803894A
	b %8
6
	lsls r1, r0, #0x19
	bpl %7
	movs r1, #3
	mvns r1, r1
	adds r0, r5, #0
	bl sub_803894A
	b %8
7
	lsls r0, r0, #0x18
	bpl %8
	movs r1, #4
	adds r0, r5, #0
	bl sub_803894A
8
	bl sub_800EF2A
	cmp r4, #0
	beq %1
	cmp r4, #2
	bne %9
	movs r0, #0x21
	lsls r0, r0, #4
	adds r0, r5, r0
	ldrb r0, [r0, #4]
	lsls r1, r4, #8
	movs r2, #0x90
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038E34
	ldrb r1, [r1, r0]
	ldr r0, _08038E38
	ldr r0, [r0]
	strb r1, [r2, r0]
	ldr r1, _08038E3C
	adds r0, #0x80
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl SetNextGlobalFunction
	b %10
9
	movs r0, #0x11
	bl SetNextGlobalFunction
10
	adds r0, r5, #0
	bl sub_8038888
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r6, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r5, #0
	adds r0, #0x80
	ldr r3, _08038E40
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08038E2C DCDU sub_80143E0
_08038E30 DCDU gUnknown_03003444
_08038E34 DCDU gUnknown_080514B0
_08038E38 DCDU gPlayerEntity
_08038E3C DCDU 0x0000FFFF
_08038E40 DCDU sub_8014436
	END
