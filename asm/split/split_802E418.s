	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__300dword_803E2A0
	IMPORT __nw__FUi

	thumb_func_start sub_802E418

sub_802E418
	push {r4, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x3c
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	ldr r1, _0802E7F0
	movs r3, #7
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #8
	lsrs r2, r2, #8
	lsls r2, r2, #8
	bics r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xb
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x13
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	movs r3, #0xf
	lsls r3, r3, #0x16
	bics r2, r3
	str r1, [r0, #0x38]
	str r2, [r0, #0x34]
	adds r4, r0, #0
	adds r4, #0x2c
	movs r2, #0
	movs r3, #0
	stm r4!, {r2, r3}
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
2
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_0802E7F0 DCDU __VTABLE__300dword_803E2A0

	END
