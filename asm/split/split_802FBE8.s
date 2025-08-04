	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_0803E3D4
	IMPORT sub_80003F4
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8002004
	IMPORT sub_8005106
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT Init_and_add_some_object
	IMPORT sub_801D714
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801E124
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT rand
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start sub_802FBE8
sub_802FBE8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802FC14
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802FC14
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802FC38
sub_802FC38
	push {r4, lr}
	adds r4, r0, #0
	bne _0802FC50
	movs r0, #0xb8
	bl __nw__FUi
	adds r4, r0, #0
	bne _0802FC50
	adds r0, r4, #0
_0802FC4A
	pop {r4}
	pop {r3}
	bx r3
_0802FC50
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _0802FFD8
	ldr r2, _0802FFDC
	str r0, [r4]
	movs r0, #6
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	add r1, pc, #0x36C
	str r1, [r4, #0x4c]
	movs r1, #0
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	subs r0, #0x10
	movs r2, #0x1e
	strb r2, [r0, #0xd]
	strb r1, [r0, #0xc]
	adds r0, r4, #0
	b _0802FC4A

	non_word_aligned_thumb_func_start sub_802FC86
sub_802FC86
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802FFD8
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802FCA2
	adds r0, r4, #0
	bl sub_803DA18
_0802FCA2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802FCA8
sub_802FCA8
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802FCB4
sub_802FCB4
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802FCC0
sub_802FCC0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802FCE8
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802FCE8
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802FD0C
sub_802FD0C
	adds r2, r1, #0
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xf
	adds r1, #0xa0
	cmp r2, #0x23
	beq _0802FD3E
	cmp r2, #0x24
	beq _0802FD58
	cmp r2, #0x25
	bne _0802FD3C
	movs r2, #0xff
	adds r2, #0x56
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	subs r2, #1
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
_0802FD3C
	bx lr
_0802FD3E
	movs r2, #0x1f
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	movs r2, #0x1e
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
	bx lr
_0802FD58
	ldr r2, _0802FFF4
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	subs r2, #1
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
	bx lr

	non_word_aligned_thumb_func_start sub_802FD72
sub_802FD72
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0x80
	adds r5, r0, #0
	ldr r0, [r7, #0x28]
	cmp r0, #0
	bne _0802FE52
	ldr r0, [r5, #0x7c]
	movs r4, #0
	lsls r1, r0, #8
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _0802FDB0
	ldr r0, _0802FFF8
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r3, r2, r0
	movs r2, #0xb
	lsls r2, r2, #7
	adds r2, r3, r2
	ldrh r3, [r2, #0x18]
	adds r0, r1, r0
	movs r1, #9
	lsrs r3, r3, #1
	lsls r3, r3, #1
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r2, #0x18]
	str r4, [r0, #0x18]
_0802FDB0
	ldr r1, _0802FFDC
	ldr r0, [r7, #4]
	movs r3, #1
	ands r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #0xc]
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r1, r3, #2
	bics r0, r1
	str r0, [r7, #0xc]
	str r3, [r7, #0x28]
	str r3, [r7, #0x2c]
	ldr r0, _0802FFFC
	strh r4, [r5, #0x26]
	strh r0, [r5, #0x22]
	strh r4, [r5, #0x24]
	strh r0, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r0, [r6]
	lsls r0, r0, #0x1e
	bpl _0802FE08
	ldr r0, _08030000
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r6, #0x2c]
	ldr r2, [r0]
	add r3, sp, #0
	subs r1, r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r3]
	ldr r1, [r6, #0x30]
	ldr r0, [r0, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	b _0802FE22
_0802FE08
	ldr r0, [r6, #0x2c]
	add r3, sp, #0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r6, #0x30]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r0, [r3]
	strh r1, [r3, #2]
_0802FE22
	ldr r0, [r5, #0x2c]
	adds r6, r5, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0xa0
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, _0802FFF8
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x58]
	ldr r1, [r7, #0x20]
	cmp r0, r1
	ble _0802FE54
	add r3, sp, #0
	ldrh r0, [r3]
	NEGS r0, r0
	strh r0, [r6, #0x12]
	b _0802FE5E
_0802FE52
	b _0802FFD2
_0802FE54
	add r3, sp, #0
	ldrh r0, [r3]
	movs r1, #0xf0
	subs r0, r1, r0
	strh r0, [r6, #0x12]
_0802FE5E
	add r3, sp, #0
	ldrh r0, [r3, #2]
	movs r1, #0xa
	subs r0, r1, r0
	strh r0, [r6, #0x10]
	bl rand
	ldrh r1, [r6, #0x10]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _0802FE8E
	bl rand
	ldrh r1, [r6, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	b _0802FE9C
_0802FE8E
	bl rand
	ldrh r1, [r6, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	subs r0, r1, r0
	strh r0, [r6, #0x12]
_0802FE9C
	ldrh r1, [r6, #0x14]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	movs r7, #0x80
	ldrb r1, [r0, #5]
	cmp r1, #0x20
	beq _0802FECA
	ldrh r1, [r0, #0x2a]
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r4
	strh r1, [r0, #0x2a]
	movs r2, #0x20
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802FECA
	orrs r1, r7
	str r1, [r0]
_0802FECA
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	ldr r4, [r5, #0x2c]
	movs r3, #1
	ldrh r2, [r4, #0x28]
	lsls r3, r3, #0xc
	lsrs r1, r0, #0x1f
	lsls r1, r1, #0xc
	bics r2, r3
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r1, r0, #0x1e
	bmi _0802FF78
	movs r6, #1
	ldr r1, [r4, #0x3c]
	lsls r6, r6, #9
	cmp r1, #0
	ldr r2, _08030004
	blt _0802FF12
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge _0802FF12
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0802FF12
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt _0802FF28
_0802FF12
	lsls r0, r0, #0x16
	bmi _0802FF78
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r7
	str r0, [r4]
	b _0802FF78
_0802FF28
	lsls r0, r0, #0x16
	bpl _0802FF42
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r2, #0x20
	bics r0, r6
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0802FF42
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
_0802FF78
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802FF8C
	bl sub_8000914
_0802FF8C
	ldr r1, [r5, #0x2c]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _0802FFA8
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_0802FFA8
	ldr r4, _08030008
	movs r5, #0x93
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	bne _0802FFD2
	movs r0, #0x25
	ldr r1, [r4]
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne _0802FFD2
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_8028C2E
_0802FFD2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802FFD8 DCDU gUnknown_0803E3D4
_0802FFDC DCDU 0xF000FFFF
_0802FFE0 DCDU 0x64726942
_0802FFE4 DCDU 0x72635320
_0802FFE8 DCDU 0x20747069
_0802FFEC DCDU 0x756F7247
_0802FFF0 DCDU 0x00000070
_0802FFF4 DCDU 0x000002D2
_0802FFF8 DCDU gUnknown_03003454
_0802FFFC DCDU 0x0000FFFF
_08030000 DCDU gUnknown_03003EA4
_08030004 DCDU gUnknown_03003EA0
_08030008 DCDU gUnknown_0300345C
	END
