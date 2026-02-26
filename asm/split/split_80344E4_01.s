	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT HostileCreature__Create
	IMPORT __VTABLE__308Boss
	IMPORT __nw__FUi

	thumb_func_start Boss__Create

Boss__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xe8
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
	b %1

	ALIGN
_080348C4 DCDU __VTABLE__308Boss
_080348DC DCDU 0xF000FFFF

	END
