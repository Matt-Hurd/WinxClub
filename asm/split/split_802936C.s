	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003D24
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_08050FD4
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_80012F0
	IMPORT sub_801E2DA
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT rand
	IMPORT __16__rt_sdiv

	thumb_func_start sub_802936C
sub_802936C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r5, [r4, #0x30]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _08029390
	ldr r0, _080296BC
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_08029390
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	beq _080293C6
	lsrs r0, r0, #0x1c
	ldr r1, _080296C0
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #0x20
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x30]
	bl sub_800065C
_080293C0
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080293C6
	ldr r1, _080296C4
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _080293C0

	thumb_func_start sub_80293D0
sub_80293D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	beq _080293E8
	adds r0, r5, #0
	bl sub_802936C
_080293E8
	ldr r1, _080296C8
	ldr r0, [r4, #0x2c]
	movs r2, #7
	ands r0, r1
	lsls r1, r6, #0x17
	lsrs r1, r1, #5
	orrs r1, r0
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	lsls r2, r2, #0x10
	bics r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r5]
	adds r0, r5, #0
	ldr r3, [r2, #0x40]
	lsls r1, r1, #6
	adds r2, r3, r2
	lsrs r1, r1, #0x18
	bl __call_via_r2
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	adds r5, #0xb0
	strb r0, [r5, #6]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8029420
sub_8029420
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0x80
	cmp r4, #0xd
	beq _0802947A
	bgt _0802945C
	cmp r4, #2
	beq _080294A6
	cmp r4, #3
	beq _08029456
	cmp r4, #4
	bne _080294E8
	ldr r1, [r3, #4]
	movs r0, #1
	lsls r1, r1, #0x10
	bne _08029446
	movs r0, #0
_08029446
	movs r3, #1
	lsls r3, r3, #0xe
	ldr r1, [r2, #0x34]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x11
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x34]
_08029456
	pop {r4}
	pop {r3}
	bx r3
_0802945C
	cmp r4, #0xe
	beq _08029494
	cmp r4, #0x13
	beq _080294AE
	cmp r4, #0x18
	bne _080294E8
	ldr r0, [r3, #4]
	ldr r3, _080296CC
	ldr r1, [r2, #0x2c]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ands r1, r3
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _08029456
_0802947A
	ldr r1, [r3, #4]
	ldr r3, [r2, #0x30]
	ldr r4, _080296D0
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x10
	ands r3, r4
	orrs r1, r3
	str r1, [r2, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	adds r0, #0xb0
	strb r1, [r0, #6]
	b _08029456
_08029494
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	orrs r0, r1
	str r0, [r2, #0x30]
	b _08029456
_080294A6
	ldr r1, [r3, #4]
	bl sub_80293D0
	b _08029456
_080294AE
	ldr r0, _080296D4
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r3, #4]
	adds r2, r0, r2
	ldr r3, [r2, #0x1c]
	movs r4, #0x7f
	lsls r4, r4, #0x14
	lsls r1, r1, #0x19
	lsrs r1, r1, #5
	bics r3, r4
	orrs r1, r3
	movs r3, #1
	lsls r3, r3, #9
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	str r1, [r2, #0x1c]
	movs r2, #0x29
	lsls r2, r2, #5
	movs r1, #0
	adds r0, r0, r2
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	b _08029456
_080294E8
	bl sub_801E2DA
	b _08029456

	non_word_aligned_thumb_func_start sub_80294EE
sub_80294EE
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r5, #0
	adds r4, #0x80
	ldrb r0, [r0, #4]
	ldr r1, [r4, #0x2c]
	lsrs r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #0xb
	bhs _0802959C
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08029518
	DCB 0x05
_08029519
	DCB 0x05
_0802951A
	DCB 0x1E
_0802951B
	DCB 0x1E
_0802951C
	DCB 0x1E
_0802951D
	DCB 0x1E
_0802951E
	DCB 0x41
_0802951F
	DCB 0x30
_08029520
	DCB 0x30
_08029521
	DCB 0x30
_08029522
	DCB 0x30, 0x00
loc_8029524
	bl rand
	adds r1, r0, #0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1d
	bl __16__rt_sdiv
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r0, r0, #3
	lsls r0, r0, #3
	lsrs r1, r1, #0x1d
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	movs r2, #1
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b _0802959C
loc_8029556
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #6
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b _0802959C
loc_802957a
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #1
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r0]
_0802959C
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0x1f
	bmi _080295BE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x58]
	adds r1, r2, r1
	bl __call_via_r1
_080295B8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080295BE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl __call_via_r1
	b _080295B8

	thumb_func_start sub_80295CC
sub_80295CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080296D4
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldm r0!, {r6, r7}
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
	beq _080296B8
	ldr r0, _080296D8
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802960E
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802960E
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x10
	lsls r0, r0, #4
	lsrs r2, r0, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x10]
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne _080296B8
	ldr r1, [r4, #0x30]
	ldr r2, _080296DC
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x1c
	beq _0802964E
	cmp r0, #1
	beq _0802965C
	cmp r0, #2
	beq _08029668
	cmp r0, #3
	bne _080296B8
	ldr r0, [r2]
	ldr r2, [r4, #0x5c]
	subs r0, r7, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt _080296B8
	b _08029674
_0802964E
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	subs r0, r6, r0
	adds r1, r2, r1
	cmp r0, r1
	blt _080296B8
	b _08029674
_0802965C
	ldr r0, [r2]
	ldr r1, [r4, #0x5c]
	subs r0, r7, r0
	cmp r0, r1
	blt _080296B8
	b _08029674
_08029668
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	adds r0, r6, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt _080296B8
_08029674
	ldr r0, _080296D8
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	ldr r1, [sp]
	asrs r0, r0, #2
	ldr r1, [r1, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0xd
	lsrs r2, r2, #0x1b
	cmp r2, r0
	bhi _080296B8
	lsls r2, r1, #8
	lsrs r2, r2, #0x1b
	cmp r2, r0
	blo _080296B8
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1a
_080296B2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080296B8
	movs r0, #0
	b _080296B2
	ALIGN
_080296BC DCDU gUnknown_03003EB8
_080296C0 DCDU gUnknown_08050FD4
_080296C4 DCDU 0x000011EF
_080296C8 DCDU 0xF803FFFF
_080296CC DCDU 0xFFFF000F
_080296D0 DCDU 0xFFFF007F
_080296D4 DCDU gUnknown_03003458
_080296D8 DCDU gUnknown_03003EA0
_080296DC DCDU gUnknown_03003D24
	END
