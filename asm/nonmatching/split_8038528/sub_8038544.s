	thumb_func_start sub_8038544
sub_8038544
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldrb r1, [r4]
	sub sp, #8
	bpl %1
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	subs r1, #1
	bl __16__rt_sdiv
	strb r1, [r4]
	b %2
1
	cmp r0, #0
	ble %2
	adds r1, #1
	ldrb r0, [r4, #1]
	bl __16__rt_udiv
	strb r1, [r4]
2
	ldrb r0, [r4]
	ldr r1, _08038854
	movs r2, #0
	ldrb r3, [r1, r0]
	movs r1, #0x72
	adds r0, r4, #4
	bl sub_80138E2
	ldrb r0, [r4]
	movs r1, #0x52
	lsls r3, r0, #4
	subs r0, r3, r0
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #0x36
	strh r0, [r3, #6]
	movs r0, #0xb
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, _08038858
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

