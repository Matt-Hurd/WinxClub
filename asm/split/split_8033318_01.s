	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Init_and_add_some_object
	IMPORT __VTABLE__336WinxClub
	IMPORT __nw__FUi
	IMPORT sub_8024E54

	thumb_func_start WinxClub__Create

WinxClub__Create
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xff
	adds r0, #1
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08033618
	adds r5, r4, #0
	str r0, [r4]
	adds r5, #0x80
	movs r6, #0
	str r6, [r5, #0x20]
	adds r0, r4, #0
	adds r0, #0xa8
	str r6, [r5, #0x24]
	bl sub_8024E54
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r1, [r0, #0x3c]
	movs r2, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r2
	movs r2, #0x30
	bics r1, r2
	movs r2, #0x3f
	lsls r2, r2, #6
	bics r1, r2
	str r1, [r0, #0x3c]
	adds r0, #0x30
	strb r6, [r0, #0xe]
	movs r1, #2
	strb r1, [r0, #0xf]
	add r0, pc, #0x2A8
	str r0, [r4, #0x4c]
	movs r0, #9
	strh r0, [r4, #4]
	movs r0, #4
	movs r1, #0x97
	strb r0, [r1, r4]
	ldr r0, [r5, #4]
	ldr r1, _08033634
	ands r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r5, #4]
	lsrs r0, r1, #0xf
	str r0, [r4, #0x70]
	ldr r0, [r5, #0xc]
	ldr r1, _08033638
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r1, r1, #5
	bics r0, r1
	str r0, [r5, #0xc]
	adds r0, r4, #0
	b %1

	ALIGN
_08033618 DCDU __VTABLE__336WinxClub
_08033634 DCDU 0xF000FFFF
_08033638 DCDU 0x00000501

	END
