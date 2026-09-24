	thumb_func_start MaybeHandleTransitionToArea
	push {r3, lr}
	movs r0, #0x10
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
	thumb_func_end MaybeHandleTransitionToArea

