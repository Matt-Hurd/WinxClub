	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__304dword_803E32C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_800CD58
	IMPORT sub_8023A70
	IMPORT sub_8028C2E
	IMPORT sub_802B670
	IMPORT sub_802B6F4
	IMPORT sub_802B8B0
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803FF24

	thumb_func_start sub_802BA20
sub_802BA20
	push {r3, lr}
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq %1
	cmp r1, #1
	beq %2
	cmp r1, #2
	beq %3
	cmp r1, #3
	bne %1
	bl sub_802B8B0
1
	add sp, #4
	pop {r3}
	bx r3
2
	bl sub_802B6F4
	b %1
3
	bl sub_802B670
	b %1
	ALIGN

	thumb_func_start sub_802BA4C
sub_802BA4C
	push {r4, lr}
	adds r4, r0, #0
	bne %5
	movs r0, #0x40
	bl __nw__FUi
	adds r4, r0, #0
	bne %5
	adds r0, r4, #0
4
	pop {r4}
	pop {r3}
	bx r3
5
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802BCD4
	str r0, [r4]
	adds r0, r4, #0
	b %4

	non_word_aligned_thumb_func_start sub_802BA72
sub_802BA72
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BCD4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802BA94
sub_802BA94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0xd
	bics r6, r7
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	adds r6, r4, #0
	str r3, [r4, #0x20]
	adds r6, #0x1c
	adds r3, r0, #1
	str r5, [r4, #0x1c]
	bne %7
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %8
7
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
8
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs %14
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
9
	DCB 0x02
10
	DCB 0x1E
11
	DCB 0x3A
12
	DCB 0x56
13
	DCB 0x71, 0x00
loc_802bb12
	movs r1, #0xf
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #7
	lsls r1, r1, #0x11
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0xa
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xca
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8
	ldrb r0, [r0]
	cmp r0, #0
	beq %14
	ldr r0, _0802BCDC
	movs r1, #0xc
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b %14
loc_802bb4a
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x11
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x12
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0xf
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xd0
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8
	ldrb r0, [r0]
	cmp r0, #0
	beq %14
	ldr r0, _0802BCDC
	movs r1, #0x11
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
14
	b %15
loc_802bb82
	movs r1, #5
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x12
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0x14
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xcd
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8
	ldrb r0, [r0]
	cmp r0, #0
	beq %15
	ldr r0, _0802BCDC
	movs r1, #0x15
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b %15
loc_802bbba
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x11
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #0x15
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #5
	movs r1, #0x3c
	strb r0, [r1, r4]
	ldr r0, _0802BCE0
	movs r2, #0xff
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	orrs r0, r1
	str r0, [r4, #0x34]
	b %15
loc_802bbf0
	movs r0, #3
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0x84
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x14]
	movs r2, #0xff
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
15
	ldr r0, _0802BCE4
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %16
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
16
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi %18
	ldr r0, _0802BCE4
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi %17
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq %17
	ldr r0, _0802BCE8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800CD58
17
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl %18
	orrs r0, r7
	str r0, [r5]
18
	ldr r1, [r4, #0x34]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne %20
	ldr r0, _0802BCEC
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
19
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	b %19
	ALIGN
_0802BCD4 DCDU __VTABLE__304dword_803E32C
_0802BCD8 DCDU gUnknown_03003D20
_0802BCDC DCDU gPlayerEntity
_0802BCE0 DCDU 0x00000337
_0802BCE4 DCDU gUnknown_03003EB8
_0802BCE8 DCDU gUnknown_03003EA0
_0802BCEC DCDU gUnknown_0300345C
	END
