	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__313dword_803E59C
	IMPORT __VTABLE__354dword_803ECB8
	IMPORT gUnknown_03003E7C
	IMPORT sub_800FB18
	IMPORT sub_800FD48

	non_word_aligned_thumb_func_start sub_800FB72

sub_800FB72
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD38
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FD48
	adds r0, r4, #0
	bl sub_800FB18
	ldr r0, _0800FD30
	ldr r1, _0800FD34
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_0800FD30 DCDU __VTABLE__354dword_803ECB8
_0800FD34 DCDU gUnknown_03003E7C
_0800FD38 DCDU __VTABLE__313dword_803E59C

	END
