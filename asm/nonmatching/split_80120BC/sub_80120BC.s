	thumb_func_start sub_80120BC
sub_80120BC
	ldr r1, _08012328
	movs r0, #0
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq %1
	ldrb r0, [r1, #2]
1
	bx lr

