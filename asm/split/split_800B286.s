	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__366dword_803ECE8
	IMPORT gUnknown_03003EAC
	IMPORT sub_803DA18

	non_word_aligned_thumb_func_start sub_800B286

sub_800B286
	push {r3, lr}
	ldr r2, _0800B2C0
	ldr r3, _0800B2C4
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %8
	bl sub_803DA18
8
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_0800B2C0 DCDU __VTABLE__366dword_803ECE8
_0800B2C4 DCDU gUnknown_03003EAC

	END
