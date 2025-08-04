	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0803E424
	IMPORT HostileCreature__Create
	IMPORT HostileCreature__ctor
	IMPORT sub_802913E
	IMPORT sub_8029290
	IMPORT HostileCreature__08
	IMPORT sub_80294EE
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start Boss__Create
Boss__Create
	push {r4, lr}
	adds r4, r0, #0
	bne _080344FC
	movs r0, #0xe8
	bl __nw__FUi
	adds r4, r0, #0
	bne _080344FC
	adds r0, r4, #0
_080344F6
	pop {r4}
	pop {r3}
	bx r3
_080344FC
	adds r0, r4, #0
	bl HostileCreature__Create
	ldr r0, _080348C4
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3BC
	str r0, [r4, #0x4c]
	movs r0, #0xf
	strh r0, [r4, #4]
	movs r0, #0
	strb r0, [r1, r4]
	movs r1, #0xff
	movs r2, #0xb6
	strb r1, [r2, r4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #4]
	ldr r3, _080348DC
	ands r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r1, #4]
	adds r1, #0x60
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	adds r0, r4, #0
	b _080344F6

	non_word_aligned_thumb_func_start Boss__ctor
Boss__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080348C4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl HostileCreature__ctor
	cmp r5, #0
	beq _08034552
	adds r0, r4, #0
	bl sub_803DA18
_08034552
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8034558
sub_8034558
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	adds r1, r0, #0
	adds r1, #0xe0
	ldrb r3, [r1, #5]
	adds r0, r3, r0
	adds r0, #0xe0
	strb r2, [r0]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	bx lr

	thumb_func_start Boss__04
Boss__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r3, [r2]
	cmp r3, #0x21
	beq _08034598
	cmp r3, #0x28
	bne _0803459E
	adds r1, r0, #0
	adds r1, #0xe0
	ldrb r3, [r1, #5]
	ldrh r2, [r2, #4]
	adds r0, r3, r0
	adds r0, #0xe0
	strb r2, [r0]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08034592
	add sp, #4
	pop {r3}
	bx r3
_08034598
	bl sub_80294EE
	b _08034592
_0803459E
	bl sub_8029290
	b _08034592

	thumb_func_start Boss__08
Boss__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne _080345B6
	movs r0, #1
_080345B0
	add sp, #4
	pop {r3}
	bx r3
_080345B6
	bl HostileCreature__08
	b _080345B0

	thumb_func_start Boss__40
Boss__40
	push {r4, r5, r6, r7, lr}
	movs r7, #0xff
	adds r5, r0, #0
	adds r6, r0, #0
	adds r6, #0xa0
	adds r5, #0x80
	lsls r7, r7, #0x13
	adds r4, r0, #0
	cmp r1, #0x33
	sub sp, #0x1c
	beq _080346B8
	cmp r1, #0x34
	beq _080346BA
	cmp r1, #0x35
	beq _080346BC
	cmp r1, #0x36
	bne _080346A4
	movs r2, #0
	movs r0, #5
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _080348E0
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #1
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _080348E4
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xe5
	lsls r0, r0, #2
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _080348E8
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
	ldr r0, _080348EC
	movs r1, #0xd
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x16
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x69
	str r1, [r5, #0x34]
	ldr r1, _080348F0
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #7
	lsls r1, r1, #0x12
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #9
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4
	lsls r0, r0, #7
	adds r0, #0x5a
	ands r0, r1
	movs r1, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x30]
_080346A4
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x17
	ldr r0, _080348F8
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #9]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #0x10
	b _080346BE
_080346B8
	b _080346CA
_080346BA
	b _08034778
_080346BC
	b _08034820
_080346BE
	lsrs r1, r1, #0x17
	strb r1, [r0, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080346CA
	movs r2, #5
	movs r1, #7
	movs r0, #5
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x9b
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x1e
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #4
	movs r1, #7
	movs r0, #5
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x9e
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x1e
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0xa8
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
	subs r0, #6
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #0x17
	lsls r1, r1, #0x15
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x5d
	str r1, [r5, #0x34]
	ldr r1, _080348F0
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #0x13
	lsls r1, r1, #0x10
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4
	lsls r0, r0, #7
	adds r0, #0x64
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _080346A4
_08034778
	movs r2, #4
	movs r1, #5
	movs r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	ldr r0, _080348FC
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	movs r3, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #5
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08034900
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08034904
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
	subs r0, #5
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #3
	lsls r1, r1, #0x18
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x61
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #0xf
	lsls r1, r1, #0x11
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _080348F4
	adds r0, #0x6e
	ands r0, r1
	movs r1, #0x23
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _080346A4
_08034820
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x20
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #7
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x29
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x2c
	strh r1, [r4, #0xe]
	movs r2, #0x2d
	strh r2, [r4, #0xa]
	movs r0, #0x2e
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x26
	strh r0, [r6, #8]
	movs r0, #0x23
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #0x19
	lsls r1, r1, #0x15
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x65
	str r1, [r5, #0x34]
	ldr r1, _08034908
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #0xd
	lsls r1, r1, #0x11
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #9
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4
	lsls r0, r0, #7
	adds r0, #0x78
	ands r0, r1
	movs r1, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _080346A4
	ALIGN
_080348C4 DCDU gUnknown_0803E424
_080348C8 DCDU 0x73736F42
_080348CC DCDU 0x72635320
_080348D0 DCDU 0x20747069
_080348D4 DCDU 0x756F7247
_080348D8 DCDU 0x00000070
_080348DC DCDU 0xF000FFFF
_080348E0 DCDU 0x0000038B
_080348E4 DCDU 0x00000397
_080348E8 DCDU 0x0000039A
_080348EC DCDU 0x00000391
_080348F0 DCDU 0x00012668
_080348F4 DCDU 0xFFFF007F
_080348F8 DCDU gPlayerEntity
_080348FC DCDU 0x0000036A
_08034900 DCDU 0x0000036D
_08034904 DCDU 0x00000376
_08034908 DCDU 0x00010CD0
	END
