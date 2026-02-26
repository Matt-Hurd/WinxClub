	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__375dword_803ED94
	IMPORT sub_80164E6
	IMPORT sub_8017450
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_8016526

sub_8016526
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016694
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %6
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
6
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08016694 DCDU __VTABLE__375dword_803ED94

	END
