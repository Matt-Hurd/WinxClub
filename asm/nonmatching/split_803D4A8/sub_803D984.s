	thumb_func_start sub_803D984
sub_803D984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9A4
	sub sp, #8
	ldr r0, [r0, #8]
	str r2, [sp]
	movs r2, #3
	adds r3, r1, #0
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9A4 DCDU gUnknown_030033E8

