	thumb_func_start sub_80114B0
sub_80114B0
	push {r3, r4}
	ldr r3, _08011730
	ldr r2, _0801172C
	mov r4, sp
	str r2, [r3, #8]
	movs r2, #0
	str r2, [sp]
	ldr r2, _08011734
	str r4, [r2]
	ldr r4, _08011730
	adds r4, #0x24
	str r4, [r2, #4]
	ldr r4, _08011738
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _0801173C
	str r4, [r2, #4]
	ldr r4, _08011740
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _08011730
	adds r4, #0x1c
	str r4, [r2, #4]
	ldr r4, _08011744
	str r4, [r2, #8]
	ldr r2, [r2, #8]
	stm r3!, {r0, r1}
	pop {r3, r4}
	bx lr

