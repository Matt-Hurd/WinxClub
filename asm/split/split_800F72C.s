	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__314dword_803E5C8
	IMPORT __nw__FUi
	IMPORT sub_800FB48

	thumb_func_start sub_800F72C

sub_800F72C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x8c
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
	bl sub_800FB48
	ldr r0, _0800FA38
	movs r1, #0x88
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x6c]
	str r0, [r1, r4]
	adds r0, r4, #0
	b %1

	ALIGN
_0800FA38 DCDU __VTABLE__314dword_803E5C8

	END
