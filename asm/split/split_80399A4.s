	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__343Anonymous14
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_802913E
	IMPORT Boss__Create
	IMPORT Boss__ctor
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_80399A4
sub_80399A4
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xec
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Boss__Create
	ldr r0, _08039D6C
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xe0
	strb r1, [r0, #8]
	movs r1, #2
	strb r1, [r0, #9]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_80399D6
sub_80399D6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08039D6C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl Boss__ctor
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80399F8
sub_80399F8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r0, #0
	adds r5, #0x80
	adds r6, #0xa0
	movs r7, #0x46
	adds r4, r0, #0
	cmp r1, #0x3a
	sub sp, #0x1c
	beq %5
	cmp r1, #0x3b
	beq %6
	cmp r1, #0x3c
	beq %7
	cmp r1, #0x3d
	bne %4
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x71
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
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
	adds r0, #0x71
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x71
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x7a
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x74
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0x16
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x79
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _08039D70
	adds r0, #0x5a
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r5, #0x30]
4
	b %8
5
	b %9
6
	b %11
7
	b %15
8
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x17
	ldr r0, _08039D74
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #9]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	strb r1, [r0, #8]
	ldr r0, [r5, #0x1c]
	cmp r0, #0x10
	beq %10
	ldr r0, [r5, #0xc]
	lsls r1, r0, #0x13
	bmi %10
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r4, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	ldr r0, _08039D78
	ldr r1, [r4]
	beq %12
	lsls r1, r1, #0x1c
	bmi %13
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_80012F0
	b %13
9
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #3
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0xa5
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r1, #0
	str r2, [sp, #0x14]
	movs r2, #0x32
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r0, #0xb1
	str r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xab
	strh r0, [r4, #0xe]
	movs r0, #0xac
	strh r0, [r4, #0xa]
	movs r0, #0xad
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xae
	strh r0, [r4, #0x1e]
	movs r0, #0xaf
	strh r0, [r4, #0x1a]
	movs r0, #0xb0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xa8
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1b
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x6d
	str r1, [r5, #0x34]
	ldr r1, _08039D7C
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _08039D70
	lsls r0, r0, #7
	adds r0, #0x50
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %4
10
	b %18
11
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #3
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x8b
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r1, #0
	movs r0, #3
	str r0, [sp, #0xc]
	b %14
12
	b %16
13
	b %17
14
	str r2, [sp, #0x14]
	movs r2, #0x32
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	movs r0, #0x94
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0x97
	strh r0, [r4, #0xe]
	movs r0, #0x98
	strh r0, [r4, #0xa]
	movs r0, #0x99
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x9a
	strh r0, [r4, #0x1e]
	movs r0, #0x9b
	strh r0, [r4, #0x1a]
	movs r0, #0x9c
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x8e
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0x17
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x71
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _08039D70
	adds r0, #0x5a
	ands r0, r1
	movs r1, #0x19
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %4
15
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08039D80
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	adds r3, r7, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08039D84
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r7, #0x32
	adds r3, r7, #0
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #2
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xcd
	lsls r0, r0, #2
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	ldr r0, _08039D88
	movs r1, #0xff
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x65
	lsls r0, r0, #3
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1d
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x75
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _08039D70
	adds r0, #0x64
	ands r0, r1
	lsls r1, r7, #7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %4
	ALIGN
_08039D6C DCDU __VTABLE__343Anonymous14
_08039D70 DCDU 0xFFFF007F
_08039D74 DCDU gPlayerEntity
_08039D78 DCDU gUnknown_03003EB8
_08039D7C DCDU 0x00015998
_08039D80 DCDU 0x0000032B
_08039D84 DCDU 0x00000325
_08039D88 DCDU 0x0000032E
16
	lsls r1, r1, #0x1c
	bpl %17
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_8001338
17
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r5, #3
	orrs r0, r1
	str r0, [r4]
18
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	END
