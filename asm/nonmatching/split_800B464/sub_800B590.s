	thumb_func_start sub_800B590
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_801175C
	ldr r0, [r4, #8]
	lsls r0, r0, #0x1c
	bmi %11
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	bl sub_803D9A8
11
	movs r6, #8
	cmp r5, #0
	bne %12
	movs r1, #0x61
	lsls r1, r1, #5
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bics r0, r6
	str r0, [r4, #8]
	b %13
12
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
13
	ldr r0, [r4, #8]
	movs r1, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	movs r1, #4
	bics r0, r1
	str r0, [r4, #8]
	ldr r0, _0800B6D4
	ldr r1, _0800B6D0
	bl sub_80114B0
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_800B590

