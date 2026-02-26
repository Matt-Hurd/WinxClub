	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_08050684
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_80143E0
	IMPORT sub_80401E4
	IMPORT sub_804025C

	thumb_func_start sub_80168E8

sub_80168E8
	ldr r0, _08016AA8
	push {r4, r5, r6, r7, lr}
	ldr r0, [r0]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r1, [r0, #0x1c]
	sub sp, #0x94
	str r1, [sp, #0x90]
	add r0, sp, #4
	bl sub_80143E0
	movs r4, #0
	add r6, sp, #0x80
13
	ldr r0, _08016AC4
	ldr r0, [r0]
	bl sub_800116A
	lsls r5, r4, #2
	ldr r1, _08016AC8
	str r0, [r6, r5]
	lsls r7, r4, #1
	ldrh r1, [r1, r7]
	bl sub_800065C
	ldr r1, _08016AC8
	ldr r0, [r6, r5]
	adds r1, #8
	ldrh r1, [r1, r7]
	add r3, sp, #0
	strh r1, [r3]
	movs r1, #0x30
	strh r1, [r3, #2]
	ldrh r1, [r3]
	movs r3, #3
	lsls r3, r3, #0x14
	lsls r7, r1, #0x10
	ldr r1, [r0, #0x2c]
	ldr r2, [r0, #0x30]
	str r3, [r0, #0x30]
	str r7, [r0, #0x2c]
	subs r1, r7, r1
	ldr r7, [r0, #0x34]
	subs r2, r3, r2
	adds r7, r7, r1
	str r7, [r0, #0x34]
	ldr r7, [r0, #0x38]
	adds r3, r0, #0
	adds r7, r7, r2
	str r7, [r0, #0x38]
	ldr r7, [r0, #0x3c]
	adds r3, #0x34
	adds r1, r7, r1
	str r1, [r0, #0x3c]
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r3, #0xc]
	bl sub_804025C
	ldr r0, [r6, r5]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #8
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %14
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
14
	ldr r0, [r6, r5]
	movs r1, #1
	bl sub_80401E4
	cmp r4, #3
	bne %16
	ldr r5, [sp, #0x8c]
	movs r2, #1
	ldrh r1, [r5, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi %15
	adds r0, r5, #0
	bl sub_804025C
15
	ldr r0, [r5]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r5]
16
	adds r4, #1
	cmp r4, #4
	blo %13
	ldr r0, _08016AC4
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa3
	str r0, [sp, #0x7c]
	bl sub_80007A0
	ldr r1, _08016AC8
	add r3, sp, #0
	adds r1, #8
	ldrh r1, [r1, #6]
	ldr r0, [sp, #0x7c]
	movs r2, #0x13
	subs r1, #0x10
	strh r1, [r3]
	movs r1, #0x4c
	strh r1, [r3, #2]
	ldrh r1, [r3]
	ldr r3, [r0, #0x30]
	lsls r2, r2, #0x12
	subs r2, r2, r3
	lsls r4, r1, #0x10
	ldr r1, [r0, #0x2c]
	movs r3, #0x13
	lsls r3, r3, #0x12
	str r3, [r0, #0x30]
	str r4, [r0, #0x2c]
	subs r1, r4, r1
	ldr r4, [r0, #0x34]
	adds r3, r0, #0
	adds r4, r4, r1
	str r4, [r0, #0x34]
	ldr r4, [r0, #0x38]
	adds r3, #0x34
	adds r4, r4, r2
	str r4, [r0, #0x38]
	ldr r4, [r0, #0x3c]
	adds r1, r4, r1
	str r1, [r0, #0x3c]
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r3, #0xc]
	bl sub_804025C
	ldr r0, [sp, #0x7c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	movs r4, #0
	lsls r2, r1, #0x16
	bmi %17
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
17
	ldr r0, [sp, #0x7c]
	bl sub_8000914
	ldr r1, _08016AC8
	movs r3, #0
	adds r1, #8
	ldrsh r5, [r1, r3]
	ldr r0, [sp, #4]
	add r7, sp, #4
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #4]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r7, #0
	bl __call_via_r2
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #4]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r7, #0
	bl __call_via_r2
	ldr r0, [sp, #4]
	movs r2, #0x3c
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #4]
	adds r3, r0, r1
	adds r1, r5, #0
	adds r0, r7, #0
	bl __call_via_r3
	ldr r1, [sp, #4]
	adds r5, r7, #0
	ldr r1, [r1, #0x10]
	ldr r2, [sp, #4]
	adds r0, r7, #0
	adds r3, r1, r2
	movs r2, #0x20
	movs r1, #0x80
	bl __call_via_r3
	adds r0, r5, #0
	movs r2, #0
	ldr r1, [sp, #4]
	str r2, [sp]
	ldr r1, [r1, #0x20]
	b %18
	ALIGN

	ALIGN
_08016AA8 DCDU gUnknown_03003454
_08016AC4 DCDU gUnknown_03003EB8
_08016AC8 DCDU gUnknown_08050684

	END
