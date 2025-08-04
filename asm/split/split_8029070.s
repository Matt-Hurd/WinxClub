	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300327E
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0803E5F4
	IMPORT Init_and_add_some_object
	IMPORT sub_801D714
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT __call_via_r2
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_8029070
sub_8029070
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08029088
	movs r0, #0xe0
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _08029088
	adds r0, r4, #0
_08029082
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08029088
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08029354
	movs r2, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	str r2, [r0, #0x20]
	adds r1, r4, #0
	adds r1, #0xa0
	str r2, [r0, #0x24]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x2c]
	movs r3, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r3
	ldr r3, _08029358
	adds r5, r4, #0
	ands r1, r3
	movs r3, #0x33
	lsls r3, r3, #6
	adds r1, r1, r3
	movs r3, #1
	lsls r3, r3, #0x10
	orrs r1, r3
	lsls r3, r3, #1
	bics r1, r3
	ldr r3, _0802935C
	adds r5, #0xb8
	ands r1, r3
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	movs r3, #7
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r3, r3, #0x10
	bics r1, r3
	movs r3, #0xff
	lsls r3, r3, #0x13
	bics r1, r3
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x34]
	movs r3, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r3, r3, #8
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0xe
	bics r1, r3
	str r1, [r0, #0x34]
	movs r1, #0xb6
	strb r2, [r1, r4]
	movs r1, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	ldr r1, _08029360
	movs r3, #0xf
	ldrb r1, [r1, #3]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x34]
	adds r0, r4, #0
	b _08029082

	thumb_func_start sub_802911C
sub_802911C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08029354
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08029138
	adds r0, r4, #0
	bl sub_803DA18
_08029138
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802913E
sub_802913E
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x80
	mov lr, r2
	ldr r2, [r1, #0x30]
	add r6, sp, #0x30
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	ldr r3, [r2]
	ldm r6!, {r4, r5, r6}
	lsrs r7, r3, #1
	mov r3, ip
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x1f
	lsls r7, r7, #1
	orrs r3, r7
	str r3, [r2]
	movs r7, #0xe
	bics r3, r7
	ldr r2, [r1, #0x30]
	mov r7, lr
	lsls r7, r7, #0x1d
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r7, r7, #0x1c
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0xff
	lsls r7, r7, #4
	bics r3, r7
	ldr r7, [sp, #0xc]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x14
	lsls r2, r2, #3
	adds r2, r2, r0
	orrs r3, r7
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, _08029364
	lsls r2, r2, #0xd
	ands r3, r7
	ldr r7, [sp, #0x24]
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	lsls r7, r7, #0x16
	lsrs r7, r7, #0xa
	adds r2, r2, r0
	adds r2, #0xb8
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x3f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	ldr r3, [r2]
	lsls r7, r7, #8
	bics r3, r7
	ldr r7, [sp, #0x28]
	lsls r4, r4, #0x1b
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, [sp, #0x2c]
	lsrs r3, r3, #8
	lsls r2, r2, #0xd
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	lsrs r2, r2, #0x1d
	lsls r3, r3, #8
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0xe
	bics r3, r7
	lsls r2, r2, #3
	lsrs r4, r4, #0xd
	orrs r3, r4
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	lsls r4, r7, #5
	bics r3, r4
	lsls r4, r5, #0x1b
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r4, r4, #8
	orrs r3, r4
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r3, #0x7f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r0, r2, r0
	adds r0, #0xb8
	ldr r2, [r0]
	lsls r3, r3, #0x17
	bics r2, r3
	lsls r3, r6, #0x19
	lsrs r3, r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x30]
	movs r2, #7
	lsls r2, r2, #0x10
	movs r4, #1
	adds r3, r0, #0
	lsls r4, r4, #0x10
	adds r0, r0, r4
	ands r0, r2
	bics r3, r2
	orrs r0, r3
	str r0, [r1, #0x30]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802925C
sub_802925C
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	sub sp, #0x18
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8029290
sub_8029290
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r0, [r3]
	sub sp, #0x18
	cmp r0, #0x22
	beq _080292CE
	cmp r0, #0x24
	bne _080292DC
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
_080292C6
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3
_080292CE
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
	b _080292C6
_080292DC
	adds r0, r4, #0
	bl sub_801DD40
	b _080292C6

	thumb_func_start sub_80292E4
sub_80292E4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	beq _080292FA
	cmp r2, #0x24
	bne _0802934E
	movs r0, #1
_080292F4
	add sp, #4
	pop {r3}
	bx r3
_080292FA
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x1c]
	cmp r2, #4
	bne _0802934A
	ldr r2, [r1, #0x2c]
	movs r3, #8
	bics r2, r3
	str r2, [r1, #0x2c]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	adds r1, #0x80
	ldr r2, [r1, #0x38]
	lsls r1, r2, #0x1f
	bmi _08029346
	adds r1, r0, #0
	adds r1, #0x90
	ldrb r3, [r1, #9]
	cmp r3, #0
	beq _08029346
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne _08029330
	ldr r2, [r0, #0x74]
	str r2, [r0, #0x70]
_08029330
	ldr r0, _08029368
	movs r2, #0x29
	ldr r0, [r0]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrb r2, [r0, #2]
	adds r2, #0xff
	strb r2, [r0, #2]
	ldrb r0, [r1, #9]
	adds r0, #0xff
	strb r0, [r1, #9]
_08029346
	movs r0, #1
	b _080292F4
_0802934A
	movs r0, #0
	b _080292F4
_0802934E
	bl sub_801DF50
	b _080292F4
	ALIGN
_08029354 DCDU gUnknown_0803E5F4
_08029358 DCDU 0xFFFF000F
_0802935C DCDU 0xF803FFFF
_08029360 DCDU gUnknown_0300327E
_08029364 DCDU 0xFFC00FFF
_08029368 DCDU gUnknown_03003458
	END
