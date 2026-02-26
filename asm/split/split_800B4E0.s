	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800B464
	IMPORT sub_800B496
	IMPORT sub_80114B0

	thumb_func_start sub_800B4E0

sub_800B4E0
	push {r3, lr}
	ldr r1, _0800B6D0
	ldr r0, _0800B6D4
	bl sub_80114B0
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_0800B6D0 DCDU sub_800B464
_0800B6D4 DCDU sub_800B496

	END
