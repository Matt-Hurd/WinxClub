	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__355dword_803ECBC
	IMPORT gUnknown_03003E80
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_800496A

sub_800496A
	push {r3, lr}
	ldr r2, _08004B94
	ldr r3, _08004B98
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %19
	bl sub_803DA18
19
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_08004B94 DCDU __VTABLE__355dword_803ECBC
_08004B98 DCDU gUnknown_03003E80

	END
