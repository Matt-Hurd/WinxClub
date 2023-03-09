    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0

	thumb_func_start sub_8012334
sub_8012334 ;@ 0x08012334
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _08012346
	movs r1, #1
	str r1, [r4]
	str r1, [r0, #4]
_08012346
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801234C
sub_801234C ;@ 0x0801234C
	ldr r1, _08012460 ;@ =gUnknown_03003530
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq _080123B0
	ldrb r1, [r1, #0xf]
	ldr r6, _08012464 ;@ =gUnknown_030037A0
	adds r5, r1, #0
	adds r2, r2, r1
	cmp r1, r2
	bhs _08012374
_08012362
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldrh r3, [r3, #4]
	lsls r3, r3, #0x1f
	bmi _08012374
	adds r1, #1
	cmp r1, r2
	blo _08012362
_08012374
	cmp r1, r2
	bne _080123A2
	movs r3, #0x4c
	muls r3, r5
	adds r3, r3, r6
	adds r1, r5, #1
	cmp r1, r2
	ldr r4, [r3, #0xc]
	bhs _0801239C
_08012386
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldr r3, [r3, #0xc]
	cmp r3, r4
	bhs _08012396
	adds r5, r1, #0
	adds r4, r3, #0
_08012396
	adds r1, #1
	cmp r1, r2
	blo _08012386
_0801239C
	cmp r0, r4
	blo _080123AC
	adds r1, r5, #0
_080123A2
	movs r0, #0x4c
	muls r0, r1
	adds r0, r0, r6
_080123A8
	pop {r4, r5, r6}
	bx lr
_080123AC
	movs r0, #0
	b _080123A8
_080123B0
	movs r0, #0
	b _080123A8

	thumb_func_start sub_80123B4
sub_80123B4 ;@ 0x080123B4
	cmp r0, #0
	beq _080123E0
	ldr r2, _08012460 ;@ =gUnknown_03003530
	movs r3, #0x4c
	ldrb r1, [r2, #0xf]
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012464 ;@ =gUnknown_030037A0
	adds r1, r1, r3
	cmp r2, #0
	beq _080123DC
_080123CA
	ldr r3, [r1, #0x10]
	cmp r3, r0
	bne _080123D4
	adds r0, r1, #0
	bx lr
_080123D4
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne _080123CA
_080123DC
	movs r1, #1
	str r1, [r0]
_080123E0
	movs r0, #0
	bx lr

	thumb_func_start sub_80123E4
sub_80123E4 ;@ 0x080123E4
	push {r4, r5, r6, r7}
	ldr r1, _08012460 ;@ =gUnknown_03003530
	movs r3, #0x4c
	subs r1, #0x10
	ldrh r0, [r1, #0x12]
	ldr r7, _08012460 ;@ =gUnknown_03003530
	ldr r4, _08012464 ;@ =gUnknown_030037A0
	subs r7, #0x34
	muls r0, r3
	ldr r3, [r7, #0xc]
	adds r0, r0, r4
	str r3, [r0]
	subs r0, #0x4c
	movs r1, #0
	movs r2, #0
	cmp r0, r4
	blo _0801244E
	ldr r4, [r7, #0x10]
	ldr r5, [r7, #0x14]
	ldr r6, [r7, #0x18]
_0801240C
	ldrh r3, [r0, #4]
	lsls r3, r3, #0x1e
	beq _08012436
	ldr r7, _08012460 ;@ =gUnknown_03003530
	ldr r3, [r0, #0x4c]
	subs r7, #0x34
	ldr r7, [r7, #0xc]
	cmp r3, r7
	bne _08012422
	str r3, [r0]
	b _08012432
_08012422
	cmp r1, #2
	bhs _0801242E
	subs r3, #4
	str r3, [r0]
	adds r1, #1
	b _08012432
_0801242E
	movs r1, #0
	str r4, [r0]
_08012432
	adds r2, #1
	b _08012446
_08012436
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08012440
	str r5, [r0]
	b _08012442
_08012440
	str r6, [r0]
_08012442
	movs r2, #0
	movs r1, #0
_08012446
	ldr r3, _08012464 ;@ =gUnknown_030037A0
	subs r0, #0x4c
	cmp r0, r3
	bhs _0801240C
_0801244E
	movs r0, #0x4c
	ldr r4, _08012464 ;@ =gUnknown_030037A0
	muls r0, r2
	ldr r1, _08012460 ;@ =gUnknown_03003530
	adds r0, r0, r4
	subs r1, #0x10
	str r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr
	ALIGN
_08012460 DCDU gUnknown_03003530
_08012464 DCDU gUnknown_030037A0
