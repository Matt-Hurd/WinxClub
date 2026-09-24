	thumb_func_start sub_8010B6C
sub_8010B6C
	push {r3, lr}
	ldr r1, [r0, #0x64]
	ldr r2, [r0, #0x68]
	movs r3, #0x7d
	lsls r3, r3, #3
	subs r1, r1, r2
	ldr r0, [r0, #0xc]
	muls r1, r3
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	bl __16__rt_sdiv
	add sp, #4
	pop {r3}
	bx r3

