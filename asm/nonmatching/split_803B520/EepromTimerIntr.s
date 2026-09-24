	thumb_func_start EepromTimerIntr
EepromTimerIntr
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _0803B580
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _0803B584
	ldrh r4, [r5]
	ldr r3, _0803B588
	ands r4, r3
	ldr r3, _0803B58C
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _0803B590
	str r0, [r3]
	ldr r0, _0803B594

