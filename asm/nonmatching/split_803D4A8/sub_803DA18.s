	thumb_func_start sub_803DA18
	GLOBAL __dl__FPv
__dl__FPv
	push {lr}
	adds r1, r0, #0
	beq %59
	ldr r0, _0803DA48
	ldr r0, [r0]
	cmp r0, #0
	bne %58
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq %57
56
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne %56
57
	ldr r0, [r0, #4]
58
	movs r3, #0
	movs r2, #0
	bl sub_8005220
59
	pop {r3}
	bx r3
	ALIGN
_0803DA48 DCDU gUnknown_030033E8
	thumb_func_end sub_803DA18

