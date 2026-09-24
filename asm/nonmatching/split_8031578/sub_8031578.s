	thumb_func_start sub_8031578
sub_8031578
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x10
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	ldr r1, _08031660
	str r1, [r0]
	ldr r1, _08031664
	str r0, [r1]
	ldr r1, _08031668
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
2
	add sp, #4
	pop {r3}
	bx r3

