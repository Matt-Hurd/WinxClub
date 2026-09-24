	thumb_func_start sub_8016108
sub_8016108
	push {r3, lr}
	movs r1, #0xf8
	ldrb r1, [r1, r0]
	cmp r1, #5
	bhs %6
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x05
2
	DCB 0x08
3
	DCB 0x0B
4
	DCB 0x0E
5
	DCB 0x03, 0x00
loc_8016122
	bl sub_8015EC2
6
	add sp, #4
	pop {r3}
	bx r3
loc_801612c
	bl sub_8015B1E
	b %6
loc_8016132
	bl sub_8015A16
	b %6
loc_8016138
	bl sub_80158F0
	b %6

