	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_80004CA
	IMPORT sub_80004F8
	IMPORT sub_8000CCE
	IMPORT sub_8005106
	IMPORT sub_800B8CE
	IMPORT __16__rt_memclr_w
	IMPORT __vec_ctor_p__FPvUiT2bPFPv_v
	IMPORT sub_803DA9C
	IMPORT sub_8040550

	thumb_func_start sub_800105C
sub_800105C
	push {r3, lr}
	adds r0, #4
	bl sub_8000CCE
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800106A
sub_800106A
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	adds r5, r1, #0
	lsls r0, r0, #6
	adds r4, r7, r0
	ldr r0, [r4, #0x28]
	movs r1, #1
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x28]
	ldr r0, _080012E4
	ldr r0, [r0]
	bl sub_800B8CE
	bl sub_8005106
	lsls r6, r5, #1
	adds r6, r6, r5
	lsls r6, r6, #5
	adds r6, #0x60
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	ldr r2, _080012E8
	movs r3, #0
	str r2, [sp]
	movs r2, #0x60
	adds r1, r5, #1
	bl __vec_ctor_p__FPvUiT2bPFPv_v
	adds r1, r6, #0
	str r0, [r4]
	bl __16__rt_memclr_w
	movs r3, #0
	ldr r0, [r4]
	movs r2, #1
	cmp r5, #1
	str r3, [r0, #0x14]
	blo _080010DC
	movs r6, #0
_080010C4
	adds r0, r2, #1
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	strh r0, [r1, r2]
	ldr r1, [r4]
	adds r1, r1, r2
	adds r2, r0, #0
	cmp r0, r5
	str r6, [r1, #0x14]
	bls _080010C4
_080010DC
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r7, r0
	strh r5, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x1e]
	movs r6, #0
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strh r6, [r4, #0xa]
	strh r6, [r4, #0xc]
	strh r6, [r4, #0xe]
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r5, #3
	adds r0, #8
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	movs r1, #0
	movs r6, #0xff
	lsls r6, r6, #0xd
	str r0, [r4, #0x10]
_08001118
	ldr r2, [r4, #0x10]
	lsls r0, r1, #3
	adds r2, r2, r0
	ldr r3, [r2]
	adds r1, #1
	orrs r3, r6
	str r3, [r2]
	ldr r2, [r4, #0x10]
	adds r7, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	orrs r2, r3
	str r2, [r7]
	ldr r7, _080012EC
	ldr r3, [r4, #0x10]
	orrs r2, r7
	adds r3, r3, r0
	str r2, [r3]
	ldr r3, [r4, #0x10]
	movs r7, #0xff
	orrs r2, r7
	adds r3, r3, r0
	str r2, [r3]
	ldr r2, [r4, #0x10]
	adds r0, r2, r0
	adds r0, #4
	ldr r2, [r0]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	str r2, [r0]
	cmp r1, r5
	bls _08001118
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0x12
	bics r0, r1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	movs r0, #0
	bx r3

	non_word_aligned_thumb_func_start sub_800116A
sub_800116A
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0xcd
	lsls r1, r1, #5
	adds r6, r0, r1
	ldrh r1, [r6, #0x1e]
	ldrh r2, [r6, #0x1c]
	cmp r1, r2
	bls _08001182
	movs r0, #0
_0800117C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08001182
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	movs r2, #1
	ldr r0, [r4, #0x28]
	lsls r2, r2, #0x12
	orrs r0, r2
	str r0, [r4, #0x28]
	lsls r3, r1, #1
	adds r1, r3, r1
	ldr r0, [r4]
	lsls r1, r1, #5
	adds r5, r0, r1
	ldrh r7, [r5]
	adds r0, r5, #0
	bl sub_80004F8
	ldrh r1, [r6, #0x1e]
	ldr r0, [r4, #0x10]
	movs r2, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x14]
	strh r7, [r6, #0x1e]
	ldr r0, [r4, #0x28]
	lsls r2, r2, #0x12
	lsrs r1, r0, #0x10
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	orrs r0, r1
	bics r0, r2
	str r0, [r4, #0x28]
	adds r0, r5, #0
	b _0800117C

	non_word_aligned_thumb_func_start sub_80011CA
sub_80011CA
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_80011D8
sub_80011D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	strh r2, [r0, #0x12]
	ldrh r1, [r4, #6]
	adds r1, #1
	strh r1, [r4, #6]
	ldrh r1, [r4, #4]
	cmp r1, #0
	bne _08001204
	strh r2, [r0, #0x14]
	b _0800121C
_08001204
	strh r1, [r0, #0x14]
	ldrh r1, [r4, #4]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x12]
_0800121C
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #4]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8001232
sub_8001232
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x40
	cmp r1, r2
	bne _0800125E
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #4]
	b _08001288
_0800125E
	ldrh r1, [r0, #0x12]
	cmp r1, #0
	beq _08001272
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	ldrh r2, [r0, #0x14]
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x14]
_08001272
	ldrh r2, [r0, #0x14]
	cmp r2, #0
	beq _08001288
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x12]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x12]
_08001288
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800129A
sub_800129A
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080012AE
_080012A8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080012AE
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #6]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble _080012E0
_080012C0
	cmp r3, r1
	bne _080012CE
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b _080012A8
_080012CE
	adds r3, #0x40
	ldrh r5, [r3, #0x14]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt _080012C0
_080012E0
	movs r0, #0
	b _080012A8
	ALIGN
_080012E4 DCDU gUnknown_03003EA0
_080012E8 DCDU sub_80004CA
_080012EC DCDU 0xFFE00000
	END