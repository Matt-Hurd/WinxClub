	thumb_func_start Monster__Create
Monster__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xe0
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl HostileCreature__Create
	ldr r0, _08030A64
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3D8
	str r0, [r4, #0x4c]
	movs r0, #0xa
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _08030A80
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b %1

