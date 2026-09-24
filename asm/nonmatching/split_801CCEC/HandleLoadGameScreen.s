	thumb_func_start HandleLoadGameScreen
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801D53C
	ldr r4, _0801D540
	add sp, r3
	add r5, sp, #4
	adds r1, r5, #0
	adds r1, #0xf8
	adds r0, r5, #0
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x3d
	adds r7, r0, #0
	bl sub_80143E0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0xb5
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801D524
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	str r1, [r3, #0x48]
	adds r0, r6, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801D4FC
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	ldr r0, [r3, #0x48]
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801D544
	movs r2, #0x78
	adds r1, r5, r0
	adds r0, r6, #0
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r5, #0
	bl sub_801CEC6
	movs r0, #0x4d
	lsls r0, r0, #5
	ldr r6, _0801D538
	adds r4, r5, r0
28
	ldr r0, _0801D548
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %29
	ldrh r1, [r0, #6]
29
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x19
	bpl %30
	movs r1, #0
	mvns r1, r1
	adds r0, r5, #0
	bl sub_801CD96
	b %34
30
	lsls r1, r0, #0x18
	bpl %31
	movs r1, #1
	adds r0, r5, #0
	bl sub_801CD96
	b %34
31
	lsls r1, r0, #0x1e
	bpl %32
	ldr r0, [r6]
	bl sub_8028C2E
	movs r0, #3
	strb r0, [r4, #0xc]
	b %34
32
	lsls r0, r0, #0x1f
	bpl %34
	ldrb r0, [r4, #0xd]
	movs r2, #0x13
	lsls r2, r2, #7
	lsls r1, r0, #2
	adds r1, r1, r5
	adds r1, r1, r2
	ldr r1, [r1, #0x30]
	cmp r1, #0
	beq %33
	ldr r1, _0801D528
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, [r6]
	bl sub_8028C2E
	bl sub_802383A
	b %34
33
	ldr r0, [r6]
	adds r0, #0x60
	bl sub_8028C2E
34
	bl sub_800EF2A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq %28
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq %36
	cmp r0, #4
	bne %35
	movs r0, #0x10
	bl SetNextGlobalFunction
35
	adds r0, r5, #0
	bl sub_801CCEC
	ldr r0, _0801D550
	ldr r4, _0801D54C
	adds r1, r5, r0
	ldr r0, _0801D554
	movs r2, #0x77
	mvns r2, r2
	adds r6, r1, #0
	adds r0, r5, r0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0xe5
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	str r1, [r3, #0x44]
	adds r0, r6, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0x8b
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	ldr r0, [r3, #0x44]
	adds r6, r1, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r2, #0x77
	mvns r2, r2
	adds r1, r7, #0
	adds r0, r6, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r5, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	ldr r3, _0801D558
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
36
	b %37
	ALIGN
_0801D4F4 DCDU gUnknown_08050FC0
_0801D4F8 DCDU 0x0000FFFF
_0801D4FC DCDU 0x00000574
_0801D500 DCDU gPlayerEntity
_0801D504 DCDU 0x00006925
_0801D508 DCDU 0x000005EC
_0801D50C DCDU 0x69323025
_0801D510 DCDU 0x00000000
_0801D514 DCDU 0x00000664
_0801D518 DCDU 0x69323025
_0801D51C DCDU 0x3230253A
_0801D520 DCDU 0x00000069
_0801D524 DCDU 0x0000040C
_0801D528 DCDU gPlayerPointer
_0801D52C DCDU gUnknown_03003448
_0801D530 DCDU gUnknown_08050716
_0801D534 DCDU gUnknown_03003460
_0801D538 DCDU gUnknown_0300345C
_0801D53C DCDU 0xFFFFF634
_0801D540 DCDU sub_80143E0
_0801D544 DCDU 0x000009AC
_0801D548 DCDU gUnknown_03003444
_0801D54C DCDU sub_8014436
_0801D550 DCDU 0x000004FC
_0801D554 DCDU 0x00000934
_0801D558 DCDU 0x000009CC
37
	movs r0, #2
	bl SetNextGlobalFunction
	b %35
	thumb_func_end HandleLoadGameScreen
