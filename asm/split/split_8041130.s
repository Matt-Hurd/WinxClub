	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT __VTABLE__361dword_803ECD4
	IMPORT sub_803DA18

	thumb_func_start sub_8041130
sub_8041130
	push {r3, lr}
	ldr r2, _0804114C
	ldr r3, _08041150
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
_0804114C DCDU __VTABLE__361dword_803ECD4
_08041150 DCDU gUnknown_03003E98
	END
