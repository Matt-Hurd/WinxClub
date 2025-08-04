	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT __VTABLE__364dword_803ECE0
	IMPORT sub_803DA18

	thumb_func_start sub_804119C
sub_804119C
	push {r3, lr}
	ldr r2, _080411B8
	ldr r3, _080411BC
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
_080411B8 DCDU __VTABLE__364dword_803ECE0
_080411BC DCDU gUnknown_03003EA4
	END
