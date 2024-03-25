    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803B8D6
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4

	thumb_func_start sub_8018C48
sub_8018C48 ;@ 0x08018C48
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	sub sp, #0x14
	bne _08018CE4
	movs r4, #0
_08018C58
	ldr r0, _08018E24 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r7, r4, #2
	ldr r1, _08018E28 ;@ =0x00000C8A
	str r0, [r5, r7]
	subs r1, r1, r4
	bl sub_800065C
	movs r0, #0x32
	muls r0, r4
	str r0, [sp, #0x10]
	adds r0, #0xa
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0x96
	strh r0, [r3, #0xe]
	ldr r0, [r5, r7]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #9
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08018CA4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08018CA4
	ldr r1, _08018E2C ;@ =0x0000FFFF
	movs r2, #0xff
	str r1, [sp, #4]
	str r1, [sp, #8]
	lsls r1, r4, #4
	subs r1, r1, r4
	str r2, [sp, #0xc]
	ldr r0, [sp, #0x10]
	movs r2, #0x94
	lsls r1, r1, #3
	adds r7, r1, r6
	str r2, [sp]
	adds r0, #0x14
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803F9C4
	movs r1, #1
	adds r0, r7, #0
	bl sub_8014B02
	movs r1, #9
	adds r0, r7, #0
	bl sub_80147FA
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _08018C58
_08018CE4
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08018CF8
	movs r3, #0xff
	movs r2, #0
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_80138E2
	b _08018D02
_08018CF8
	movs r2, #0
	adds r0, r6, #0
	add r1, pc, #0x130
	bl sub_80137F8
_08018D02
	ldr r0, [r5]
	movs r4, #1
	ldr r1, [r0]
	ldr r3, [sp, #0x1c]
	lsls r2, r1, #0x1f
	lsrs r2, r2, #0x1f
	adds r1, r4, #0
	cmp r3, #0
	bne _08018D16
	movs r1, #0
_08018D16
	cmp r2, r1
	beq _08018D20
	ldr r3, [sp, #0x1c]
	bl sub_80401E4
_08018D20
	adds r7, r6, #0
	ldr r0, [sp, #0x20]
	adds r7, #0x78
	cmp r0, #0
	beq _08018D38
	movs r3, #0xff
	movs r2, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl sub_80138E2
	b _08018D42
_08018D38
	movs r2, #0
	adds r0, r7, #0
	add r1, pc, #0xF0
	bl sub_80137F8
_08018D42
	ldr r0, [r5, #4]
	ldr r1, [r0]
	ldr r2, [sp, #0x20]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r2, #0
	bne _08018D52
	movs r4, #0
_08018D52
	cmp r1, r4
	beq _08018D5E
	adds r1, r4, #0
	ldr r2, [sp, #0x20]
	bl sub_80401E4
_08018D5E
	movs r1, #0
	adds r0, r6, #0
	bl sub_80139AC
	movs r1, #0
	adds r0, r7, #0
	bl sub_80139AC
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018D76
sub_8018D76 ;@ 0x08018D76
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, [sp, #4]
	movs r5, #0
	cmp r0, #0
	ldr r6, [sp, #0x2c]
	bls _08018E1C
_08018D84
	lsls r0, r5, #4
	subs r0, r0, r5
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #1
	adds r0, r4, #0
	bl sub_803B8CC
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803B8CC
	ldr r0, [r4]
	movs r3, #2
	ldr r1, [r0, #0x14]
	adds r7, r1, r0
	ldr r1, [sp, #0xc]
	lsls r0, r5, #2
	adds r1, r0, r1
	ldrsh r2, [r1, r3]
	ldr r1, [sp, #0xc]
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	bl sub_803B8D6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r1, #0x10
	cmp r6, #0
	beq _08018DD6
	ldrb r1, [r6, r5]
_08018DD6
	lsls r2, r1, #0x10
	ldr r1, [sp, #0x10]
	lsrs r2, r2, #0x10
	ldrb r1, [r1, r5]
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r2, #0xff
	ldr r1, [r0, #0x20]
	movs r3, #0
	adds r7, r1, r0
	movs r1, #4
	adds r0, r4, #0
	bl sub_803B8D6
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	ldr r1, [sp, #0x28]
	lsls r0, r5, #1
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	ldr r0, [sp, #4]
	lsrs r5, r5, #0x18
	cmp r5, r0
	blo _08018D84
_08018E1C
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08018E24 DCDU gUnknown_03003448
_08018E28 DCDU 0x00000C8A
_08018E2C DCDU 0x0000FFFF
_08018E30
	DCB 0x20, 0x00, 0x00, 0x00
	END