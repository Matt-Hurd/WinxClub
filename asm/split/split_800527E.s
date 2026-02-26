	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__356dword_803ECC0
	IMPORT gUnknown_03003E84
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_800527E

sub_800527E
	push {r3, lr}
	ldr r2, _080052B4
	ldr r3, _080052B8
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %3
	bl sub_803DA18
3
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_080052B4 DCDU __VTABLE__356dword_803ECC0
_080052B8 DCDU gUnknown_03003E84

	END
