	non_word_aligned_thumb_func_start sub_802F04E
sub_802F04E
	subs r1, r0, #4
	ldr r0, _0802F114
	push {r4, lr}
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	movs r4, #0
	lsrs r2, r2, #0x1c
	cmp r2, #9
	bhs %73
	add r3, pc, #0x8
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
64
	DCB 0x18
65
	DCB 0x05
66
	DCB 0x09
67
	DCB 0x18
68
	DCB 0x0D
69
	DCB 0x11
70
	DCB 0x18
71
	DCB 0x18
72
	DCB 0x15, 0x00
loc_802f07e
	adds r1, r0, #0
	adds r1, #0x10
	movs r4, #0xc
	b %73
loc_802f086
	adds r1, r0, #0
	adds r1, #0xc
	movs r4, #8
	b %73
loc_802f08e
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b %73
loc_802f096
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b %73
loc_802f09e
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
73
	adds r0, r1, #0
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, r0, r4
	pop {r4}
	pop {r3}
	bx r3

