	thumb_func_start sub_802F00C
sub_802F00C
	push {r3, lr}
	adds r1, r0, #0
	ldr r0, _0802F114
	movs r3, #0
	movs r2, #0x90
	subs r1, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	lsrs r2, r2, #0x1c
	cmp r2, #6
	bhs %63
	add r3, pc, #0x4
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
57
	DCB 0x0A
58
	DCB 0x02
59
	DCB 0x0A
60
	DCB 0x0A
61
	DCB 0x05
62
	DCB 0x08
loc_802f036
	adds r1, r0, #0
	adds r1, #0x10
	b %63
loc_802f03c
	adds r1, r0, #0
	adds r1, #8
	b %63
loc_802f042
	adds r1, r0, #0
	adds r1, #8
63
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3

