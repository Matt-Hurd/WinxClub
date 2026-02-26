	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT nullsub_5

	non_word_aligned_thumb_func_start sub_800F786

sub_800F786
	adds r2, r0, #0
	adds r2, #0x80
	push {r3, lr}
	ldr r1, [r2, #8]
	cmp r1, #0
	beq %4
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq %4
	ldr r0, _0800FA3C
	ldr r0, [r0]
	ldr r2, [r2]
	bl nullsub_5
4
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_0800FA3C DCDU gUnknown_03003E84

	END
