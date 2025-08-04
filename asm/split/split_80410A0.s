	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT __VTABLE__357dword_803ECC4
	IMPORT sub_803DA18

	thumb_func_start sub_80410A0
sub_80410A0
	push {r3, lr}
	ldr r2, _080410BC
	ldr r3, _080410C0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080410B4
	bl sub_803DA18
_080410B4
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_080410BC DCDU __VTABLE__357dword_803ECC4
_080410C0 DCDU gUnknown_03003E88
	END
