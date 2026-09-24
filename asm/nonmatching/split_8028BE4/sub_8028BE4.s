	thumb_func_start sub_8028BE4
sub_8028BE4
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_80121C4
	cmp r0, #0
	beq %2
	movs r0, #1
1
	add sp, #4
	pop {r3}
	bx r3
2
	movs r0, #0
	b %1

