    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT eeprom
	IMPORT EepromTimerIntr

	thumb_func_start Dma3Transmit
Dma3Transmit ;@ 0x0803B650
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #1
	bl sub_803B664
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_803B664
sub_803B664 ;@ 0x0803B664
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb0
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _0803B680 ;@ =eeprom
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0803B688
	ldr r0, _0803B684 ;@ =0x000080FF
	b _0803B7BC
	ALIGN
_0803B680 DCDU eeprom
_0803B684 DCDU 0x000080FF
_0803B688
	ldr r0, _0803B6C8 ;@ =eeprom
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r2, sp
	adds r3, r0, r2
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #0
_0803B69E
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_0803B6A4
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0803B6A4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803B69E
	movs r4, #0
	ldr r0, _0803B6C8 ;@ =eeprom
	adds r2, r0, #0
	ldr r0, [r0]
	b _0803B6DA
	ALIGN
_0803B6C8 DCDU eeprom
_0803B6CC
	strh r1, [r3]
	subs r3, #2
	lsrs r1, r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r2]
_0803B6DA
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _0803B6CC
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r6, #1
	strh r6, [r3]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0803B74C ;@ =eeprom
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0
	bl EepromTimerIntr
	movs r5, #0
	add r2, sp, #0xa4
	strh r5, [r2]
	mov r1, sp
	adds r1, #0xa6
	ldr r0, _0803B750 ;@ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0xac
	str r5, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803B720
	ldrh r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _0803B7B0
_0803B720
	add r3, sp, #0xa8
	ldr r0, _0803B750 ;@ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	beq _0803B79A
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bls _0803B754
	add r2, sp, #0xac
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r1, r1, r0
	ldr r0, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _0803B76A
	ALIGN
_0803B74C DCDU eeprom
_0803B750 DCDU REG_VCOUNT
_0803B754
	add r2, sp, #0xac
	add r0, sp, #0xa8
	ldrh r0, [r0]
	adds r0, #0xe4
	mov r1, sp
	adds r1, #0xa6
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0803B76A
	add r0, sp, #0xac
	ldr r0, [r0]
	cmp r0, #0x88
	bls _0803B790
	add r0, sp, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803B7BA
	movs r0, #0xd0
	lsls r0, r0, #0x14
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803B7BA
	ldr r5, _0803B78C ;@ =0x0000C001
	b _0803B7BA
	ALIGN
_0803B78C DCDU 0x0000C001
_0803B790
	mov r0, sp
	adds r0, #0xa6
	add r1, sp, #0xa8
	ldrh r1, [r1]
	strh r1, [r0]
_0803B79A
	add r2, sp, #0xa4
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803B720
	movs r0, #0xd0
	lsls r0, r0, #0x14
	movs r1, #1
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0803B720
_0803B7B0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	cmp r7, #0
	bne _0803B720
_0803B7BA
	adds r0, r5, #0
_0803B7BC
	add sp, #0xb0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	END