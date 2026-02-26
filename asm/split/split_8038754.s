	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_0804AE30
	IMPORT sub_8000DE6
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80235E4
	IMPORT sub_8028C2E
	IMPORT sub_8038544
	IMPORT sub_80385AC

	thumb_func_start sub_8038754

sub_8038754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe0
	add r0, sp, #4
	adds r5, r0, #0
	mov r4, sp
	bl sub_80143E0
	movs r2, #0x78
	movs r1, #0xb5
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x2d8]
	ldr r3, _08038878
	add r0, sp, #0x7c
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _08038854
	movs r1, #0x97
	ldrb r0, [r0, #1]
	lsls r1, r1, #2
	mov r7, sp
	adds r7, r7, r1
	movs r6, #0
	cmp r0, #0xff
	bne %12
	ldr r0, _08038854
	ldr r1, _0803886C
	ldrb r0, [r0]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _0803887C
	ldr r1, [r1]
	strb r0, [r1, #9]
	movs r0, #2
	bl SetNextGlobalFunction
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r7, #0
	ldr r3, _08038880
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
11
	add sp, #0x1fc
	add sp, #0xe0
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
12
	adds r0, r4, #0
	bl sub_80385AC
13
	ldr r0, _08038884
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %14
	ldrh r1, [r0, #6]
14
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl %15
	movs r1, #0
	mvns r1, r1
	mov r0, sp
	bl sub_8038544
15
	lsls r0, r4, #0x18
	bpl %16
	movs r1, #1
	mov r0, sp
	bl sub_8038544
16
	lsls r0, r4, #0x1f
	bpl %17
	ldr r0, _08038858
	movs r6, #1
	ldr r0, [r0]
	bl sub_8028C2E
17
	bl sub_800EF2A
	cmp r6, #0
	beq %13
	add r3, sp, #0
	ldrb r0, [r3]
	ldr r1, _08038854
	ldr r4, _0803886C
	ldrb r0, [r1, r0]
	ldr r1, [r4]
	strb r0, [r1, #3]
	bl sub_80235E4
	ldr r1, [r4]
	ldr r0, _0803887C
	ldrb r1, [r1, #3]
	ldr r0, [r0]
	strb r1, [r0, #9]
	movs r0, #2
	bl SetNextGlobalFunction
	bl FadeToBlack
	ldr r0, _08038850
	ldr r1, [sp, #0x2d8]
	ldr r0, [r0]
	bl sub_8000DE6
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r7, #0
	ldr r3, _08038880
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	b %11
	ALIGN

	ALIGN
_08038850 DCDU gUnknown_03003448
_08038854 DCDU gUnknown_0804AE30
_08038858 DCDU gUnknown_0300345C
_0803886C DCDU gUnknown_03003D30
_08038878 DCDU sub_80143E0
_0803887C DCDU gUnknown_0300344C
_08038880 DCDU sub_8014436
_08038884 DCDU gUnknown_03003444

	END
