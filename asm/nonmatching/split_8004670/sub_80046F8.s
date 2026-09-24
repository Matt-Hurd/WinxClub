	thumb_func_start sub_80046F8
sub_80046F8
	push {r3, lr}
	cmp r0, #0
	bne %3
	movs r0, #6
	bl __nw__FUi
	cmp r0, #0
	beq %4
3
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
4
	add sp, #4
	pop {r3}
	bx r3

