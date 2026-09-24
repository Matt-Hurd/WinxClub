	thumb_func_start sub_80143E0
sub_80143E0
	push {r4, lr}
	adds r4, r0, #0
	bne %9
	movs r0, #0x78
	bl __nw__FUi
	adds r4, r0, #0
	bne %9
	adds r0, r4, #0
8
	pop {r4}
	pop {r3}
	bx r3
9
	adds r0, r4, #0
	bl sub_80134B8
	ldr r0, _0801472C
	adds r1, r4, #0
	str r0, [r4]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x70]
	adds r1, #0x60
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0xff
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	adds r0, r4, #0
	bl sub_8013E2C
	adds r0, r4, #0
	b %8

