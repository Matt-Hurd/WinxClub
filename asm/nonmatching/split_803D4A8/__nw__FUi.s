	thumb_func_start __nw__FUi
__nw__FUi
	adds r1, r0, #0
	ldr r0, _0803DA14
	push {r3, lr}
	ldr r0, [r0, #8]
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	movs r2, #1
	bl sub_80051D6
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0803DA14 DCDU gUnknown_030033E8

