	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__300dword_803E2A0
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_802E4AA

sub_802E4AA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802E7F0
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4
	beq %5
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
5
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %6
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
6
	cmp r7, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0802E7F0 DCDU __VTABLE__300dword_803E2A0
_0802E7F4 DCDU gUnknown_03003EB8

	END
