	thumb_func_start WinxClub__38
WinxClub__38
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

