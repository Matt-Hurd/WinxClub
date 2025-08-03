	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0804AE30
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800CD58
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_80235E4
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT __16__rt_sdiv
	IMPORT __16__rt_udiv
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803D66C
	IMPORT sub_803F9C4
	IMPORT sub_8040034

	thumb_func_start sub_8038528
sub_8038528
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80180BE
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _08038850
	ldr r0, [r0]
	bl sub_8000DE6
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8038544
sub_8038544
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldrb r1, [r4]
	sub sp, #8
	bpl _0803855E
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	subs r1, #1
	bl __16__rt_sdiv
	strb r1, [r4]
	b _0803856C
_0803855E
	cmp r0, #0
	ble _0803856C
	adds r1, #1
	ldrb r0, [r4, #1]
	bl __16__rt_udiv
	strb r1, [r4]
_0803856C
	ldrb r0, [r4]
	ldr r1, _08038854
	movs r2, #0
	ldrb r3, [r1, r0]
	movs r1, #0x72
	adds r0, r4, #4
	bl sub_80138E2
	ldrb r0, [r4]
	movs r1, #0x52
	lsls r3, r0, #4
	subs r0, r3, r0
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #0x36
	strh r0, [r3, #6]
	movs r0, #0xb
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, _08038858
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80385AC
sub_80385AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	add r0, sp, #0x14
	bl sub_80046F8
	add r0, pc, #0x2A0
	bl sub_800EF60
	ldr r5, _08038864
	ldr r0, [r5]
	cmp r0, #0
	beq _080385E4
	bl sub_800B72A
	cmp r0, #0
	beq _080385D8
	ldr r0, [r5]
	bl sub_800B6A8
	cmp r0, #0
	beq _080385E4
_080385D8
	ldr r0, _08038858
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_080385E4
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
	beq _0803869A
	ldr r5, _08038854
_0803862C
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
	bne _0803868C
	strb r0, [r4]
_0803868C
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	ldrb r0, [r5, r0]
	cmp r0, #0xff
	bne _0803862C
_0803869A
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
	bmi _080386EA
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080386EA
	ldr r4, [r5, #0x14]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _08038726
	ldr r0, _08038870
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _08038714
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08038714
	ldr r0, _08038874
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_08038714
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _08038726
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
_08038726
	ldr r0, [r5, #0x14]
	bl sub_8000914
	bl sub_8018070
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
	bne _080387BE
	ldr r0, _08038854
	ldr r1, _0803886C
	ldrb r0, [r0]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _0803887C
	ldr r1, [r1]
	strb r0, [r1, #9]
	movs r0, #2
	bl sub_8018386
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r7, #0
	ldr r3, _08038880
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
_080387B4
	add sp, #0x1fc
	add sp, #0xe0
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080387BE
	adds r0, r4, #0
	bl sub_80385AC
_080387C4
	ldr r0, _08038884
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _080387D2
	ldrh r1, [r0, #6]
_080387D2
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl _080387E4
	movs r1, #0
	mvns r1, r1
	mov r0, sp
	bl sub_8038544
_080387E4
	lsls r0, r4, #0x18
	bpl _080387F0
	movs r1, #1
	mov r0, sp
	bl sub_8038544
_080387F0
	lsls r0, r4, #0x1f
	bpl _080387FE
	ldr r0, _08038858
	movs r6, #1
	ldr r0, [r0]
	bl sub_8028C2E
_080387FE
	bl sub_800EF2A
	cmp r6, #0
	beq _080387C4
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
	bl sub_8018386
	bl sub_80180BE
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
	b _080387B4
	ALIGN
_08038850 DCDU gUnknown_03003448
_08038854 DCDU gUnknown_0804AE30
_08038858 DCDU gUnknown_0300345C
_0803885C DCDU 0x6F506742
_08038860 DCDU 0x00707570
_08038864 DCDU gUnknown_03003460
_08038868 DCDU 0x0000FFFF
_0803886C DCDU gUnknown_03003D30
_08038870 DCDU gUnknown_03003EB8
_08038874 DCDU gUnknown_03003EA0
_08038878 DCDU sub_80143E0
_0803887C DCDU gUnknown_0300344C
_08038880 DCDU sub_8014436
_08038884 DCDU gUnknown_03003444
	END
