	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT SetNextGlobalFunction

	thumb_func_start MaybeHandleTransitionToArea

MaybeHandleTransitionToArea
	push {r3, lr}
	movs r0, #0x10
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	END
