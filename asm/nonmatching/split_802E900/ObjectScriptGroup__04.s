	thumb_func_start ObjectScriptGroup__04
ObjectScriptGroup__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq %11
	cmp r2, #0x2c
	bne %12
	bl sub_801DA2A
10
	add sp, #4
	pop {r3}
	bx r3
11
	bl sub_802EA80
	b %10
12
	bl m04__7DefaultFv
	b %10

