	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__384dword_803EEF0
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_800805E

sub_800805E
	ldr r2, _080081C0
	push {r3, lr}
	str r2, [r0]
	cmp r1, #0
	beq %5
	bl sub_803DA18
5
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_080081C0 DCDU __VTABLE__384dword_803EEF0

	END
