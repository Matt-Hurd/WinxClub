	thumb_func_start sub_801897C
sub_801897C
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp]
	asrs r1, r0, #5
	asrs r0, r2, #5
	bl sub_80184BC
	cmp r0, #0x7f
	ble %1
	movs r1, #0xff
	adds r1, #1
	subs r0, r1, r0
	NEGS r0, r0
1
	NEGS r0, r0
	bpl %2
	adds r0, #0xff
	adds r0, #1
2
	add sp, #0xc
	pop {r3}
	bx r3

