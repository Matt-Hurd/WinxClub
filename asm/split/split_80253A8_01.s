	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Init_and_add_some_object
	IMPORT __VTABLE__301Npc
	IMPORT __nw__FUi

	thumb_func_start Npc__Create

Npc__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xa0
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
	bl Init_and_add_some_object
	ldr r0, _0802576C
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3A0
	str r0, [r4, #0x4c]
	movs r0, #8
	strh r0, [r4, #4]
	movs r0, #4
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	movs r3, #0x3c
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0, #4]
	ldr r3, _08025784
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #4]
	ldr r1, [r0]
	ldr r3, _08025788
	ands r1, r3
	ldr r3, _0802578C
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _08025790
	lsls r1, r1, #0xc
	adds r1, r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b %1

	ALIGN
_0802576C DCDU __VTABLE__301Npc
_08025784 DCDU 0xF000FFFF
_08025788 DCDU 0xFF8007FF
_0802578C DCDU 0x0027B000
_08025790 DCDU 0x0000052A

	END
