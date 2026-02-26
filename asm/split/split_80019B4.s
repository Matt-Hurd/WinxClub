	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800F1DA

	thumb_func_start sub_80019B4

sub_80019B4
	ldr r1, _08001A58
	push {r3, lr}
	adds r0, r0, r1
	bl sub_800F1DA
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_08001A58 DCDU 0x00001AD4

	END
