	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__359dword_803ECCC
	IMPORT gUnknown_03003E90
	IMPORT sub_803DA18

	thumb_func_start sub_8040380

sub_8040380
	push {r3, lr}
	ldr r2, _0804039C
	ldr r3, _080403A0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %7
	bl sub_803DA18
7
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_0804039C DCDU __VTABLE__359dword_803ECCC
_080403A0 DCDU gUnknown_03003E90

	END
