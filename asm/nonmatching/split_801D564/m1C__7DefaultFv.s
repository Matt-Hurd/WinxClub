	thumb_func_start m1C__7DefaultFv
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	movs r5, #0
	cmp r0, #0
	ldr r6, _0801D950
	beq %4
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x2c]
4
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %5
	adds r1, r4, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x30]
5
	str r5, [r4, #0x34]
	movs r5, #0
6
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %7
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
7
	adds r5, #1
	cmp r5, #5
	blo %6
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	EXPORT __dt__7DefaultFv
	thumb_func_end m1C__7DefaultFv

