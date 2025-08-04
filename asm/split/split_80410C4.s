	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E8C
	IMPORT __VTABLE__358dword_803ECC8
	IMPORT sub_803DA18

	thumb_func_start sub_80410C4
sub_80410C4
	push {r3, lr}
	ldr r2, _080410E0
	ldr r3, _080410E4
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %1
	bl sub_803DA18
1
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_080410E0 DCDU __VTABLE__358dword_803ECC8
_080410E4 DCDU gUnknown_03003E8C
	END
