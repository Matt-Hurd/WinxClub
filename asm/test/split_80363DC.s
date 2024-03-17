    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_801EBCA

	thumb_func_start sub_80363DC
sub_80363DC ;@ 0x080363DC
	push {r4, r5, r6, r7}
	adds r3, r1, #0
	adds r1, r0, #0
	adds r6, r0, #0
	adds r4, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r4, #0x80
	adds r6, #0x90
	adds r1, #0xa0
	movs r7, #0x3c
	movs r5, #0
	cmp r3, #0x6c
	beq _080364C6
	bgt _08036448
	cmp r3, #0x69
	beq _08036498
	bgt _0803642A
	movs r4, #0x1e
	cmp r3, #0x42
	beq _08036466
	cmp r3, #0x67
	beq _0803647E
	cmp r3, #0x68
	bne _08036426
	ldr r3, _080365F0 ;@ =0x0000026F
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
_08036426
	pop {r4, r5, r6, r7}
	bx lr
_0803642A
	cmp r3, #0x6a
	beq _080364F6
	cmp r3, #0x6b
	bne _08036426
	strh r5, [r0, #0x1c]
	ldr r3, _080365F4 ;@ =0x0000028E
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r7, [r2, #0xd]
	strb r7, [r1, #8]
	b _08036426
_08036448
	adds r7, r3, #0
	subs r7, #0x6d
	cmp r7, #5
	bhs _0803645A
	add r3, pc, #0x8 ;@ =_0803645C
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0803645A
	b _08036426
_0803645C
	DCB 0x70, 0x00
_0803645E
	DCB 0x92, 0x00
_08036460
	DCB 0x36, 0x00
_08036462
	DCB 0x9E, 0x00
_08036464
	DCB 0x4E, 0x00
_08036466
	movs r3, #0x13
	lsls r3, r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
	b _08036426
_0803647E
	ldr r3, _080365F8 ;@ =0x0000024B
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
	b _08036426
_08036498
	ldr r3, _080365FC ;@ =0x00000266
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	subs r3, #5
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #5
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #0xb
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _08036426
_080364C6
	b _08036526
loc_80364c8
	ldr r3, _08036600 ;@ =0x000002AF
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #2
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #0xb
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _08036426
_080364F6
	b _0803655E
loc_80364f8
	ldr r3, _08036604 ;@ =0x000002BA
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	subs r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _08036426
_08036526
	strh r5, [r0, #0x1c]
	ldr r3, _08036608 ;@ =0x00000291
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r7, [r2, #0xd]
	strb r7, [r1, #8]
	b _08036426
loc_803653c
	strh r5, [r0, #0x1c]
	ldr r3, _0803660C ;@ =0x0000029A
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r4, #0xc]
	b _08036426
_0803655E
	strh r5, [r0, #0x1c]
	ldr r3, _08036610 ;@ =0x00000271
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r4, #0xc]
	b _08036426
loc_8036580
	strh r5, [r0, #0x1c]
	ldr r3, _08036614 ;@ =0x00000233
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	b _08036426
loc_8036598
	strh r5, [r0, #0x1c]
	ldr r3, _08036618 ;@ =0x000002B6
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	b _08036426

	thumb_func_start sub_80365B0
sub_80365B0 ;@ 0x080365B0
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080365E4
	ldr r0, _0803661C ;@ =gUnknown_03003EA0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _080365D8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080365D8
	ldrh r0, [r4, #0x1a]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	beq _080365E4
	strh r0, [r4, #0x18]
_080365E4
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_080365F0 DCDU 0x0000026F
_080365F4 DCDU 0x0000028E
_080365F8 DCDU 0x0000024B
_080365FC DCDU 0x00000266
_08036600 DCDU 0x000002AF
_08036604 DCDU 0x000002BA
_08036608 DCDU 0x00000291
_0803660C DCDU 0x0000029A
_08036610 DCDU 0x00000271
_08036614 DCDU 0x00000233
_08036618 DCDU 0x000002B6
_0803661C DCDU gUnknown_03003EA0
	END