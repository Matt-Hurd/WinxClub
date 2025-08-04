	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA8
	IMPORT __VTABLE__365dword_803ECE4
	IMPORT sub_803DA18

	thumb_func_start sub_80411C0
sub_80411C0
	push {r3, lr}
	ldr r2, _080411DC
	ldr r3, _080411E0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080411D4
	bl sub_803DA18
_080411D4
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_080411DC DCDU __VTABLE__365dword_803ECE4
_080411E0 DCDU gUnknown_03003EA8
	END
