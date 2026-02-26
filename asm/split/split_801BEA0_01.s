	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_801B56C
	IMPORT sub_801BBE0

	thumb_func_start gameExit

gameExit
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801BBE0
	adds r0, r4, #0
	bl sub_801B56C
	pop {r4}
	pop {r3}
	bx r3

	END
