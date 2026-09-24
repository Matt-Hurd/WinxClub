	thumb_func_start MainLoop
MainLoop
	push {r3, r4, r5, lr}
	ldr r5, _080183B8
	subs r4, r5, #4
1
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl __call_via_r0
	ldrb r0, [r4]
	cmp r0, #0x18
	bne %1
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3
