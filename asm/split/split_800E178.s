	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003434
	IMPORT gUnknown_03003EB0
	IMPORT sub_80022E2
	IMPORT sub_8002762

	thumb_func_start sub_800E178
sub_800E178
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r0, r4, r0
	mov ip, r0
	ldr r0, [r0, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x17
	bics r0, r1
	mov r1, ip
	str r0, [r1, #0x3c]
	lsls r0, r0, #7
	bmi _0800E1B0
	ldr r5, _0800E220
	ldr r0, [r5]
	cmp r0, #0
	bne _0800E1B0
	movs r0, #1
	str r0, [r5]
	ldr r3, [r4, #8]
	movs r6, #0
	cmp r3, #0
	beq _0800E1AE
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0800E1B6
_0800E1AE
	str r6, [r5]
_0800E1B0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800E1B6
	movs r1, #0x21
	ldrb r3, [r3]
	lsls r1, r1, #6
	adds r1, r4, r1
	movs r2, #0
	cmp r3, #0
	ldr r0, _0800E224
	bls _0800E1F2
_0800E1C6
	ldr r3, [r1, #0x38]
	adds r2, #1
	asrs r7, r3, #0x1f
	lsrs r7, r7, #0x10
	adds r3, r7, r3
	asrs r3, r3, #0x10
	strh r3, [r0]
	ldr r3, [r1, #0x3c]
	adds r1, #0x58
	asrs r7, r3, #0x1f
	lsrs r7, r7, #0x10
	adds r3, r7, r3
	asrs r3, r3, #0x10
	strh r3, [r0, #2]
	ldr r7, [r4, #8]
	adds r3, r6, #0
	adds r0, #4
	cmp r7, #0
	beq _0800E1EE
	ldrb r3, [r7]
_0800E1EE
	cmp r3, r2
	bhi _0800E1C6
_0800E1F2
	ldr r0, _0800E228
	mov r1, ip
	ldr r0, [r0]
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1f
	bl sub_8002762
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	movs r2, #1
	adds r0, #0x48
	ldr r1, [r0]
	lsls r2, r2, #0xb
	bics r1, r2
	str r1, [r0]
	adds r0, r4, #0
	bl sub_80022E2
	str r6, [r5]
	b _0800E1B0
	ALIGN
_0800E220 DCDU gUnknown_03003434
_0800E224 DCDU REG_BG0HOFS
_0800E228 DCDU gUnknown_03003EB0
	END
