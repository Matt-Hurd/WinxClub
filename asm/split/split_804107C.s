	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT __VTABLE__356dword_803ECC0
	IMPORT sub_803DA18

	thumb_func_start sub_804107C
sub_804107C
	push {r3, lr}
	ldr r2, _08041098
	ldr r3, _0804109C
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
_08041098 DCDU __VTABLE__356dword_803ECC0
_0804109C DCDU gUnknown_03003E84
	END
