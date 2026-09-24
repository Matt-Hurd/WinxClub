	thumb_func_start sub_8021EEC
sub_8021EEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802219C
	ldrb r0, [r0]
	cmp r0, #0
	beq %37
	movs r0, #0x35
	strh r0, [r4, #0x1e]
	movs r0, #0x36
	strh r0, [r4, #0x1a]
	movs r0, #0x37
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %38
37
	movs r0, #0x4e
	strh r0, [r4, #0x1e]
	movs r0, #0x4f
	strh r0, [r4, #0x1a]
	movs r0, #0x50
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
38
	ldr r0, _080221A0
	ldr r1, [r0]
	movs r0, #0x57
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	adds r1, #4
	strb r1, [r0, #4]
	movs r0, #0xf
	movs r1, #0x9c
	str r0, [r1, r4]
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	pop {r4}
	pop {r3}
	bx r3

