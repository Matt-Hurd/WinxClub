	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__346dword_803EC68
	IMPORT __VTABLE__364dword_803ECE0
	IMPORT gUnknown_03003EA4
	IMPORT sub_8002614
	IMPORT sub_800D912
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_8001B4A

sub_8001B4A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08001E88
	adds r5, r1, #0
	movs r1, #1
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800D912
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002614
	ldr r0, _08001E80
	ldr r1, _08001E84
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08001E80 DCDU __VTABLE__364dword_803ECE0
_08001E84 DCDU gUnknown_03003EA4
_08001E88 DCDU __VTABLE__346dword_803EC68

	END
