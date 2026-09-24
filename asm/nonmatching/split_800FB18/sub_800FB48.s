	thumb_func_start sub_800FB48
sub_800FB48
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD30
	str r0, [r4]
	ldr r0, _0800FD34
	str r4, [r0]
	ldr r0, _0800FD38
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	adds r0, r4, #0
	bl sub_800FB18
	adds r0, r4, #0
	pop {r4}
	pop {r3}
	bx r3

