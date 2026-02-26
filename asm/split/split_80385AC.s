	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToImage
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0804AE30
	IMPORT maybeLoadOrRenderBgImage
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800CD58
	IMPORT sub_80138E2
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_8028A7C
	IMPORT sub_803D66C
	IMPORT sub_803F9C4
	IMPORT sub_8040034

	thumb_func_start sub_80385AC

sub_80385AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	add r0, sp, #0x14
	bl sub_80046F8
	add r0, pc, #0x2A0
	bl maybeLoadOrRenderBgImage
	ldr r5, _08038864
	ldr r0, [r5]
	cmp r0, #0
	beq %4
	bl sub_800B72A
	cmp r0, #0
	beq %3
	ldr r0, [r5]
	bl sub_800B6A8
	cmp r0, #0
	beq %4
3
	ldr r0, _08038858
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
4
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #8
	str r2, [sp, #0xc]
	ldr r7, _08038868
	movs r2, #0
	movs r3, #5
	movs r1, #1
	adds r0, r5, #0
	str r2, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r6, _0803886C
	movs r2, #0
	ldr r0, [r6]
	movs r1, #0x72
	ldrb r3, [r0, #3]
	adds r0, r5, #0
	bl sub_80138E2
	movs r0, #0
	strb r0, [r4, #1]
	ldr r0, _08038854
	ldrb r0, [r0]
	cmp r0, #0xff
	beq %7
	ldr r5, _08038854
5
	ldr r0, _08038868
	movs r2, #0xff
	str r2, [sp, #0xc]
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldrb r0, [r4, #1]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r3, r0, #4
	subs r0, r3, r0
	adds r2, #0x3c
	lsls r0, r0, #3
	adds r0, r0, r4
	str r2, [sp]
	movs r2, #0
	adds r0, #0x7c
	movs r3, #0x64
	movs r1, #0
	bl sub_803F9C4
	ldrb r0, [r4, #1]
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0x7c
	movs r1, #4
	bl sub_80147FA
	ldrb r0, [r4, #1]
	movs r2, #0
	ldrb r1, [r5, r0]
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0x7c
	adds r3, r1, #0
	movs r1, #0x75
	bl sub_80138E2
	ldr r0, [r6]
	ldrb r1, [r0, #3]
	ldrb r0, [r4, #1]
	ldrb r2, [r5, r0]
	cmp r1, r2
	bne %6
	strb r0, [r4]
6
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	ldrb r0, [r5, r0]
	cmp r0, #0xff
	bne %5
7
	ldr r0, _08038850
	ldr r0, [r0]
	bl sub_800116A
	movs r1, #0xb
	lsls r1, r1, #6
	adds r5, r4, r1
	movs r2, #0
	movs r1, #0xa4
	str r0, [r5, #0x14]
	bl sub_80007A0
	ldrb r0, [r4]
	lsls r3, r0, #4
	subs r0, r3, r0
	adds r0, #0x36
	movs r1, #0x52
	add r3, sp, #0
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x10
	bl sub_8040034
	ldr r0, [r5, #0x14]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #5
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
8
	ldr r4, [r5, #0x14]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi %10
	ldr r0, _08038870
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %9
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %9
	ldr r0, _08038874
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
9
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl %10
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
10
	ldr r0, [r5, #0x14]
	bl sub_8000914
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x14
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08038850 DCDU gUnknown_03003448
_08038854 DCDU gUnknown_0804AE30
_08038858 DCDU gUnknown_0300345C
_08038864 DCDU gUnknown_03003460
_08038868 DCDU 0x0000FFFF
_0803886C DCDU gUnknown_03003D30
_08038870 DCDU gUnknown_03003EB8
_08038874 DCDU gUnknown_03003EA0

	END
