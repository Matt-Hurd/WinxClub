	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT eeprom

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
	ALIGN
_0803B580 DCDU REG_IME
_0803B584 DCDU REG_WAITCNT
_0803B588 DCDU 0x0000F8FF
_0803B58C DCDU eeprom
_0803B590 DCDU REG_DMA3
_0803B594 DCDU REG_DMA3DAD
_0803B598 DCDU REG_DMA3CNT_L
_0803B59C DCDU REG_DMA3CNT_H
	END
