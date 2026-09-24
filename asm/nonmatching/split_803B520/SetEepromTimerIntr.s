	thumb_func_start SetEepromTimerIntr
SetEepromTimerIntr
	str r1, [r0]
	ldr r1, _0803B598
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq %2
	ldr r2, _0803B59C
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
1
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne %1
2
	ldr r0, _0803B580
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
