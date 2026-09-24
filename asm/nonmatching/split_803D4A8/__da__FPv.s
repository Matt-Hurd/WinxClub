	thumb_func_start __da__FPv
__da__FPv
	push {lr}
	adds r1, r0, #0
	beq %63
	ldr r0, _0803DA7C
	ldr r0, [r0]
	cmp r0, #0
	bne %62
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq %61
60
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne %60
61
	ldr r0, [r0, #4]
62
	movs r3, #0
	movs r2, #0
	bl sub_8005220
63
	pop {r3}
	bx r3
	ALIGN
_0803DA7C DCDU gUnknown_030033E8

