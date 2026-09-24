	thumb_func_start Boss__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne %8
	movs r0, #1
7
	add sp, #4
	pop {r3}
	bx r3
8
	bl HostileCreature__08
	b %7
	thumb_func_end Boss__08

