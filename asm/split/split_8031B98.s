	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003E88
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80158E0
	IMPORT sub_8016108
	IMPORT sub_8017620
	IMPORT sub_8017A0A
	IMPORT sub_8018C48
	IMPORT sub_8031830
	IMPORT sub_80318BC
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803F72C

	thumb_func_start sub_8031B98
sub_8031B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x114
	add r6, sp, #0x10
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #1
	adds r0, r6, #0
	movs r2, #0x78
	adds r0, #0x10
	str r0, [sp, #0x110]
	ldr r3, _08031CE8
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80318BC
	ldr r0, _08031CEC
	movs r2, #3
	ldr r1, [r0]
	lsls r2, r2, #9
	adds r1, #0xc
	adds r1, r1, r2
	ldr r4, [r1, #0x1c]
	movs r5, #0
	add r6, sp, #0x18
_08031BCE
	add r3, sp, #0
	ldr r7, _08031CEC
	ldrb r1, [r3, #0x14]
	ldr r0, [r7]
	bl sub_8017620
	ldr r0, _08031CF0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08031BE8
	ldrh r1, [r0, #6]
_08031BE8
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	lsls r0, r7, #0x1e
	bpl _08031C00
	adds r0, r4, #0
	bl sub_80158E0
	cmp r0, #0
	bne _08031C00
	movs r0, #1
	str r0, [sp, #0xc]
	b _08031C94
_08031C00
	lsls r0, r7, #0x1f
	bpl _08031C94
	adds r0, r4, #0
	bl sub_80158E0
	cmp r0, #0
	bne _08031C94
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	ldr r1, [sp, #0x110]
	bl sub_8018C48
	add r3, sp, #0
	ldrb r2, [r3, #0x14]
	ldrh r0, [r3, #0x10]
	cmp r2, #0xff
	str r0, [sp, #4]
	ldrh r0, [r3, #0x12]
	str r0, [sp, #8]
	bne _08031C30
	ldr r7, _08031CEC
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_08031C30
	ldr r0, _08031CF4
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, [sp, #4]
	add r3, sp, #0
	strh r2, [r0, #8]
	ldr r2, [sp, #8]
	ldr r7, _08031CEC
	strh r2, [r0, #0xa]
	strh r1, [r0, #0xc]
	ldrb r2, [r3, #0x14]
	movs r3, #1
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	add r3, sp, #0
	ldrb r2, [r3, #0x14]
	cmp r2, #0xff
	bne _08031C70
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_08031C70
	ldr r0, _08031CF4
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	add r3, sp, #0
	ldrb r2, [r3, #0x14]
	movs r3, #2
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
_08031C94
	adds r0, r4, #0
	bl sub_80158E0
	cmp r0, #0
	beq _08031CA8
	movs r5, #1
	adds r0, r4, #0
	bl sub_8016108
	b _08031CBA
_08031CA8
	cmp r5, #0
	beq _08031CBA
	movs r5, #0
	movs r2, #6
	adds r0, r6, #0
	ldr r3, _08031CF8
	ldr r1, [sp, #0x110]
	bl sub_8018C48
_08031CBA
	bl sub_800EF2A
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08031BCE
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_8031830
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x68
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x88
	ldr r3, _08031CFC
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x114
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08031CE8 DCDU sub_80143E0
_08031CEC DCDU gUnknown_03003454
_08031CF0 DCDU gUnknown_03003444
_08031CF4 DCDU gUnknown_03003E88
_08031CF8 DCDU 0x000004F5
_08031CFC DCDU sub_8014436
	END