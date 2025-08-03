	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0803E9B4
	IMPORT sub_802913E
	IMPORT sub_8029420
	IMPORT sub_8030668
	IMPORT sub_80306B4
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT sub_8041020

	thumb_func_start sub_803A050
sub_803A050
	push {r4, lr}
	adds r4, r0, #0
	bne _0803A068
	movs r0, #0xf4
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _0803A068
	adds r0, r4, #0
_0803A062
	pop {r4}
	pop {r3}
	bx r3
_0803A068
	adds r0, r4, #0
	bl sub_8030668
	ldr r0, _0803A420
	adds r1, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r1, #0xf0
	movs r2, #8
	adds r0, #0xe0
	ldr r3, _0803A424
	bl __vecmap1c__FPvT1iPFPv_v
	add r0, pc, #0x3A4
	str r0, [r4, #0x4c]
	movs r0, #0xb
	strh r0, [r4, #4]
	movs r0, #2
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _0803A440
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, #0x40
	ldr r1, [r0, #0x30]
	lsrs r2, r2, #0xa
	bics r1, r2
	movs r2, #8
	bics r1, r2
	movs r2, #0x10
	bics r1, r2
	movs r2, #0x20
	orrs r1, r2
	ldr r2, _0803A444
	ands r1, r2
	movs r2, #0x2d
	lsls r2, r2, #8
	adds r1, r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	bics r1, r2
	str r1, [r0, #0x30]
	adds r0, r4, #0
	b _0803A062

	non_word_aligned_thumb_func_start sub_803A0D2
sub_803A0D2
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803A420
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80306B4
	cmp r5, #0
	beq _0803A0EE
	adds r0, r4, #0
	bl sub_803DA18
_0803A0EE
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803A0F4
sub_803A0F4
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0xc0
	cmp r4, #0xf
	beq _0803A122
	cmp r4, #0x11
	beq _0803A134
	cmp r4, #0x12
	bne _0803A146
	ldr r0, [r3, #4]
	movs r3, #1
	lsls r3, r3, #0x10
	ldr r1, [r2, #0x30]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0xf
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x30]
_0803A11C
	pop {r4}
	pop {r3}
	bx r3
_0803A122
	ldr r0, [r3, #4]
	ldr r1, [r2, #0x30]
	movs r3, #8
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1c
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x30]
	b _0803A11C
_0803A134
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	orrs r0, r1
	str r0, [r2, #0x30]
	b _0803A11C
_0803A146
	bl sub_8029420
	b _0803A11C

	thumb_func_start sub_803A14C
sub_803A14C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	movs r3, #0xff
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r3, #0x2d
	adds r6, #0xa0
	movs r7, #0
	cmp r0, #0x37
	sub sp, #0x2c
	beq _0803A24E
	cmp r0, #0x38
	beq _0803A250
	cmp r0, #0x39
	bne _0803A252
	movs r1, #0
	movs r0, #0x17
	lsls r0, r0, #5
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	ldr r0, _0803A448
	movs r1, #0xff
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, _0803A44C
	movs r2, #0xf
	str r1, [r4, #0x70]
	str r7, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xf
	adds r1, r1, r2
	ldr r2, _0803A450
	ands r0, r2
	movs r2, #0x19
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	b _0803A254
_0803A24E
	b _0803A2BE
_0803A250
	b _0803A3A8
_0803A252
	b _0803A258
_0803A254
	bics r1, r0
	str r1, [r5, #0xc]
_0803A258
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0x28]
	adds r0, #0x1e
	mov ip, r0
	lsls r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0, #0x20]
	ldrh r6, [r4, #0x26]
	str r6, [sp, #0x24]
	adds r6, #0x1e
	lsls r2, r6, #0x10
	str r2, [r0, #0x24]
	ldrh r3, [r4, #0x20]
	mov lr, r6
	adds r6, r3, #0
	subs r3, #0x1e
	str r3, [sp, #0x20]
	lsls r3, r3, #0x10
	str r3, [r0, #0x28]
	str r3, [sp, #0x1c]
	ldrh r5, [r4, #0x22]
	adds r7, r5, #0
	subs r5, #0x1e
	lsls r3, r5, #0x10
	str r3, [r0, #0x2c]
	ldr r0, [sp, #0x28]
	subs r0, r6, r0
	ldr r6, [sp, #0x24]
	subs r7, r7, r6
	movs r6, #0xf
	lsls r6, r6, #0x18
	cmp r0, r7
	ble _0803A380
	ldr r3, [sp, #0x1c]
	subs r0, r3, r1
	asrs r0, r0, #1
	adds r0, r0, r1
	str r0, [r4, #0x58]
	str r2, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	bics r0, r6
	str r0, [r4, #0x7c]
	mov r0, ip
	strh r0, [r4, #0x24]
	ldr r3, [sp, #0x20]
	strh r3, [r4, #0x20]
_0803A2B6
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803A2BE
	movs r1, #0
	movs r0, #0xff
	adds r0, #0xd9
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0xdc
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, _0803A454
	str r1, [r4, #0x70]
	movs r1, #0xd
	lsls r1, r1, #0x10
	b _0803A382
_0803A380
	b _0803A458
_0803A382
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r2, _0803A450
	ands r0, r2
	movs r2, #0x19
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	bics r1, r0
	str r1, [r5, #0xc]
	b _0803A258
_0803A3A8
	movs r1, #0
	movs r0, #0xff
	adds r0, #0x15
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x18
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r2, _0803A450
	movs r1, #0x19
	lsls r1, r1, #9
	ands r0, r2
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _0803A258
	ALIGN
_0803A420 DCDU gUnknown_0803E9B4
_0803A424 DCDU sub_8041020
_0803A428 DCDU 0x6E616353
_0803A42C DCDU 0x2072656E
_0803A430 DCDU 0x69726353
_0803A434 DCDU 0x47207470
_0803A438 DCDU 0x70756F72
_0803A43C DCDU 0x00000000
_0803A440 DCDU 0xF000FFFF
_0803A444 DCDU 0xFFFF803F
_0803A448 DCDU 0x000002E3
_0803A44C DCDU 0x00010CD0
_0803A450 DCDU 0xFFFF007F
_0803A454 DCDU 0x00012668
_0803A458
	subs r0, r3, r2
	asrs r0, r0, #1
	adds r0, r0, r2
	str r0, [r4, #0x5c]
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	movs r1, #1
	bics r0, r6
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	mov r6, lr
	strh r6, [r4, #0x26]
	strh r5, [r4, #0x22]
	b _0803A2B6

	non_word_aligned_thumb_func_start sub_803A476
sub_803A476
	movs r1, #0
_0803A478
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq _0803A486
	movs r0, #1
	bx lr
_0803A486
	adds r1, #1
	cmp r1, #5
	blo _0803A478
	movs r0, #0
	bx lr
	END
