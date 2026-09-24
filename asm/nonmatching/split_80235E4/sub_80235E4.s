	thumb_func_start sub_80235E4
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, sp, #4
	adds r0, r5, #0
	movs r4, #0
	movs r2, #0
	movs r1, #0x20
	bl sub_803F464
	ldr r0, _080239C8
	str r0, [sp, #4]
	ldr r0, _080239CC
	ldr r0, [r0, #8]
	ldrb r1, [r0]
	str r1, [sp, #8]
	ldrb r1, [r0, #1]
	str r1, [sp, #0xc]
	ldrb r1, [r0, #3]
	str r1, [sp, #0x10]
	ldrb r0, [r0, #2]
	str r0, [sp, #0x14]
	movs r0, #0
1
	lsls r1, r0, #2
	ldr r1, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	eors r4, r1
	cmp r0, #7
	blo %1
	str r4, [sp, #0x20]
	movs r2, #0x20
	str r2, [sp]
	ldr r0, _080239D0
	movs r2, #0
	adds r3, r5, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B314
	add sp, #0x24
	pop {r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_80235E4

