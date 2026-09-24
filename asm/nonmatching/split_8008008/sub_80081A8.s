	thumb_func_start sub_80081A8
sub_80081A8
	ldr r1, _080081C8
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _080081C4
	str r0, [r1]
	str r0, [r1, #4]
	bx lr

