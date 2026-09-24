	thumb_func_start ObjectScriptGroup__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq %14
	cmp r2, #0x2c
	bne %15
	movs r0, #1
13
	add sp, #4
	pop {r3}
	bx r3
14
	movs r0, #1
	b %13
15
	bl m08__7DefaultFv
	b %13
	thumb_func_end ObjectScriptGroup__08

