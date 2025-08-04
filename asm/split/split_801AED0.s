	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080506E8
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT SetNextGlobalFunction
	IMPORT sub_801ABFC
	IMPORT sub_801AC60
	IMPORT sub_801AD22
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v

	thumb_func_start HandleObjectivesScreen
HandleObjectivesScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xa8
	add r5, sp, #0x14
	adds r1, r5, #0
	adds r1, #0xf8
	adds r0, r5, #0
	movs r2, #0x78
	adds r0, #8
	ldr r3, _0801B0EC
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x2a0]
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x8d
	str r0, [sp, #0x29c]
	bl sub_80143E0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x298]
	bl sub_80143E0
	adds r0, r5, #0
	bl sub_801AD22
	add r1, sp, #0xd4
	str r1, [sp, #0x294]
	add r4, sp, #0x194
	add r7, sp, #0x174
1
	ldr r0, _0801B0F0
	movs r2, #0
	ldr r0, [r0]
	adds r3, r2, #0
	ldr r1, [r0, #0x14]
	lsls r5, r1, #0x1c
	bmi %2
	ldrh r3, [r0, #8]
2
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r1, #0x1c
	bmi %3
	ldrh r2, [r0, #4]
3
	ldrh r0, [r7, #0x1c]
	ldrh r1, [r7, #0x1e]
	lsls r6, r2, #0x10
	lsrs r6, r6, #0x10
	str r1, [sp, #8]
	ldr r1, [sp, #0x294]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x294]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0x10]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B0F4
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_800065C
4
	lsls r0, r6, #0x17
	ldr r1, [sp, #8]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B0F4
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %5
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	bl sub_800065C
5
	lsls r0, r5, #0x16
	bpl %6
	movs r0, #2
	strb r0, [r4, #1]
	b %11
6
	lsls r0, r5, #0x17
	bpl %7
	movs r0, #1
	strb r0, [r4, #1]
	b %11
7
	lsls r0, r5, #0x1e
	bpl %8
	movs r0, #3
	strb r0, [r4, #1]
	b %11
8
	lsls r0, r5, #0x1d
	bpl %9
	movs r0, #3
	strb r0, [r4, #1]
	b %11
9
	lsls r0, r5, #0x1a
	bpl %10
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_801AC60
	b %11
10
	lsls r0, r5, #0x1b
	bpl %11
	movs r1, #1
	add r0, sp, #0x14
	bl sub_801AC60
11
	lsls r0, r6, #0x1a
	ldr r1, _0801B0F8
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r1, [r4, #4]
	ldr r0, _0801B0F4
	str r1, [sp, #0x10]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %12
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_800065C
12
	lsls r0, r6, #0x1b
	ldr r1, _0801B0FC
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r0, _0801B0F4
	ldr r6, [r4, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %13
	adds r1, r5, #0
	ldr r0, [r4, #8]
	bl sub_800065C
13
	bl sub_800EF2A
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne %14
	b %1
14
	ldrh r2, [r7, #0x1a]
	ldr r1, _0801B100
	ldrb r0, [r4, #1]
	ldrb r4, [r1, r2]
	ldrh r2, [r7, #0x18]
	add r5, sp, #0x14
	ldr r6, _0801B104
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq %16
	cmp r0, #2
	beq %15
	cmp r0, #3
	beq %17
	cmp r0, #6
	bne %18
	movs r0, #0xb
	bl SetNextGlobalFunction
	b %18
15
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %19
16
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %19
17
	movs r0, #0x11
	bl SetNextGlobalFunction
18
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
19
	adds r0, r5, #0
	bl sub_801ABFC
	movs r1, #0
	ldr r0, [sp, #0x298]
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x29c]
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x2a0]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r5, #0
	adds r0, #0x80
	ldr r3, _0801B108
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0xa8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801B0EC DCDU sub_80143E0
_0801B0F0 DCDU gUnknown_03003444
_0801B0F4 DCDU gUnknown_03003EA0
_0801B0F8 DCDU 0x00000C83
_0801B0FC DCDU 0x00000C85
_0801B100 DCDU gUnknown_080506E8
_0801B104 DCDU gUnknown_0300345C
_0801B108 DCDU sub_8014436
	END
