	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802913E

	thumb_func_start Monster__40

Monster__40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	subs r0, #0x27
	cmp r0, #0xc
	sub sp, #0x1c
	bhs %6
	add r3, pc, #0x10
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
6
	add sp, #0x1c
	pop {r4, r5}
	pop {r3}
	bx r3
7
	DCB 0x0F, 0x00
8
	DCB 0x64, 0x00
9
	DCB 0xBA, 0x00
10
	DCB 0x0F, 0x01
11
	DCB 0x64, 0x01
12
	DCB 0xD1, 0x01
13
	DCB 0x11, 0x02
14
	DCB 0x51, 0x02
15
	DCB 0xA9, 0x02
16
	DCB 0xFF, 0x02
17
	DCB 0x3F, 0x03
18
	DCB 0x94, 0x03
loc_8030728
	movs r2, #3
	movs r1, #4
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x1e
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xfe
	str r0, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	adds r0, #0xff
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0xb
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
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x1f
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xd
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84
	adds r1, #0x3c
	ands r1, r2
	lsrs r2, r3, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b %6
loc_80307d2
	movs r2, #3
	movs r1, #5
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x4c
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #2
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x4f
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x52
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x49
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x3f
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #7
	lsls r2, r2, #0x11
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84
	adds r1, #0x28
	ands r1, r2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b %6
loc_803087e
	movs r2, #3
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x42
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x3c
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x45
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x41
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xb
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84
	adds r1, #0x23
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b %6
loc_8030928
	movs r2, #3
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x36
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x30
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x39
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x41
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xb
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84
	adds r1, #0x23
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b %6
loc_80309d2
	movs r2, #1
	movs r1, #5
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	ldr r0, _08030A88
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	movs r3, #0x32
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08030A8C
	movs r3, #0xf
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	adds r0, #1
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	ldr r2, _08030A90
	lsls r3, r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #3
	lsls r2, r2, #0x12
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsrs r1, r1, #7
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	ldr r2, _08030A84
	lsls r1, r1, #7
	adds r1, #0x41
	ands r1, r2
	lsrs r2, r3, #6
	adds r1, r1, r2
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x10]
	ldr r2, _08030A94
	ands r1, r2
	movs r2, #0x43
	lsls r2, r2, #0x15
	adds r1, r1, r2
	ldr r2, _08030A98
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #0xd
	b %19
	ALIGN

	ALIGN
_08030A84 DCDU 0xFFFF007F
_08030A88 DCDU 0x000001FF
_08030A8C DCDU 0x00000202
_08030A90 DCDU 0x00017330
_08030A94 DCDU 0xE00FFFFF
_08030A98 DCDU 0xFFF007FF

	END
