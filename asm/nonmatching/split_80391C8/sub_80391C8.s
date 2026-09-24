	thumb_func_start sub_80391C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080395AC
	ldr r0, [r0]
	bl sub_8028C2E
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r1, [r0, #0xd]
	movs r3, #0x13
	lsls r3, r3, #7
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r2, r2, r3
	ldr r2, [r2, #0x30]
	cmp r2, #0
	bne %2
	ldr r2, _080395B0
	strb r1, [r2]
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_802383A
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_8038EE2
	b %1
	thumb_func_end sub_80391C8

