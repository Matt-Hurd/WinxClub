	thumb_func_start sub_8005120
sub_8005120
	subs r0, #0xc
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	beq %5
4
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	bne %4
5
	ldr r0, [r0, #4]
	bx lr

