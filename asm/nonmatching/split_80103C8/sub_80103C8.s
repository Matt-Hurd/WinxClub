	thumb_func_start sub_80103C8
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x1c
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
2
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_80103C8

