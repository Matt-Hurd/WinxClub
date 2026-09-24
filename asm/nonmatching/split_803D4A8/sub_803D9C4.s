	thumb_func_start sub_803D9C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0803D9F4
	sub sp, #8
	ldr r0, [r0, #8]
	str r3, [sp]
	adds r3, r2, #0
	muls r4, r1
	adds r5, r4, #0
	movs r2, #3
	adds r1, r5, #0
	bl sub_80051D6
	adds r4, r0, #0
	beq %55
	adds r1, r5, #0
	adds r0, r4, #0
	bl __16__rt_memclr
55
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0803D9F4 DCDU gUnknown_030033E8
	thumb_func_end sub_803D9C4

