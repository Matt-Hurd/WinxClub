	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT HostileCreature__Create
	IMPORT __VTABLE__323Static1
	IMPORT __nw__FUi

	thumb_func_start Static1__Create

Static1__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xe4
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
	ldr r0, _080368CC
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x288
	str r0, [r4, #0x4c]
	movs r0, #0xc
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _080368E4
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b %1

	ALIGN
_080368CC DCDU __VTABLE__323Static1
_080368E4 DCDU 0xF000FFFF

	END
