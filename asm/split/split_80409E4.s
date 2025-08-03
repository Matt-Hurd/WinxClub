	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BF8
	IMPORT gUnknown_0804AEAC
	IMPORT DivRem
	IMPORT sub_8040978

	thumb_func_start sub_80409E4
sub_80409E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08040C28
	ldr r5, _08040C30
	ldrb r6, [r0, #0xf]
	ldr r4, _08040C2C
	cmp r6, #0
	beq _08040A86
_080409F2
	ldrh r0, [r5, #4]
	cmp r0, #5
	beq _08040AC4
	bgt _08040A16
	cmp r0, #5
	bhs _08040A08
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08040A08
	b _08040A76
	ALIGN
_08040A0C
	DCB 0x41, 0x00
_08040A0E
	DCB 0x63, 0x00
_08040A10
	DCB 0x6D, 0x00
_08040A12
	DCB 0x89, 0x00
_08040A14
	DCB 0xB2, 0x00
_08040A16
	cmp r0, #0xa
	beq _08040AE2
	bgt _08040A4E
	cmp r0, #6
	beq _08040AF6
	cmp r0, #7
	bne _08040A76
	ldrb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x19]
	ldr r3, _08040C34
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x19
	ldrh r0, [r3, r0]
	ldrb r1, [r4, #0x1a]
	muls r1, r0
	asrs r0, r1, #5
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble _08040B2C
	movs r0, #0x40
	strb r0, [r4, #0xf]
	b _08040BD6
_08040A4E
	cmp r0, #0xe
	beq _08040B2E
	cmp r0, #0x1b
	bne _08040A76
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08040A70
	ldr r0, [r4, #8]
	adds r0, #0x7c
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x40]
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r4, #7]
	beq _08040A76
_08040A70
	ldrb r0, [r4, #7]
	adds r0, #0xff
	strb r0, [r4, #7]
_08040A76
	adds r0, r4, #0
	bl sub_8040978
	subs r6, #1
	adds r4, #0x4c
	adds r5, #8
	cmp r6, #0
	bne _080409F2
_08040A86
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8040a8c
	ldrh r7, [r5, #6]
	cmp r7, #0
	beq _08040A76
	ldr r0, _08040C30
	subs r0, #0x30
	ldrb r0, [r0, #3]
	movs r1, #3
	bl DivRem
	cmp r0, #0
	beq _08040ABE
	cmp r0, #1
	beq _08040AC6
	cmp r0, #2
	bne _08040AB4
	ldrb r0, [r4, #0xd]
	lsls r1, r7, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r0, r1
	strb r0, [r4, #0xc]
_08040AB4
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040ABE
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	b _08040AB4
_08040AC4
	b _08040AF8
_08040AC6
	ldrb r0, [r4, #0xd]
	lsrs r1, r7, #4
	adds r0, r0, r1
	strb r0, [r4, #0xc]
	b _08040AB4
loc_8040ad0
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040AE2
	b _08040BE0
loc_8040ae4
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x16]
	subs r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040AF6
	b _08040B90
_08040AF8
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040B0C
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040B14
_08040B0C
	cmp r0, #0x40
	ble _08040B14
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040B14
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
loc_8040b1c
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08040A76
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0xd]
	cmp r1, r2
	beq _08040A76
	b _08040B30
_08040B2C
	b _08040BCE
_08040B2E
	b _08040C06
_08040B30
	lsls r7, r1, #7
	mov ip, r7
	lsls r7, r2, #7
	movs r3, #0x14
	ldrsh r2, [r4, r3]
	adds r3, r7, r2
	mov r7, ip
	subs r3, r7, r3
	NEGS r7, r3
	cmp r3, #0
	blt _08040B48
	adds r7, r3, #0
_08040B48
	cmp r7, r0
	ble _08040B5C
	cmp r3, #0
	ble _08040B56
	adds r0, r2, r0
	strh r0, [r4, #0x14]
	b _08040B64
_08040B56
	subs r0, r2, r0
	strh r0, [r4, #0x14]
	b _08040B64
_08040B5C
	movs r0, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
_08040B64
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
_08040B6C
	b _08040A76
loc_8040b6e
	ldrb r0, [r4, #0x1b]
	ldr r3, _08040C34
	ldrb r1, [r4, #0x1a]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	ldrsh r2, [r3, r2]
	muls r1, r2
	asrs r1, r1, #5
	strh r1, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040B90
	ldrb r0, [r4, #0x1b]
	ldr r3, _08040C34
	ldrb r1, [r4, #0x1a]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	ldrsh r2, [r3, r2]
	muls r1, r2
	asrs r1, r1, #5
	strh r1, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040BBC
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040BC4
_08040BBC
	cmp r0, #0x40
	ble _08040BC4
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040BC4
	ldrh r0, [r4, #4]
	movs r1, #0x18
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040BCE
	cmp r0, #0
	bge _08040BD6
	movs r0, #0
	strb r0, [r4, #0xf]
_08040BD6
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040BE0
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040BF4
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040BFC
_08040BF4
	cmp r0, #0x40
	ble _08040BFC
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040BFC
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040C06
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	cmp r0, #0xd
	bne _08040B6C
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08040B6C
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #6]
	bne _08040B6C
	ldrh r0, [r4, #4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r4, #4]
	b _08040A76
	ALIGN
_08040C28 DCDU gUnknown_03003530
_08040C2C DCDU gUnknown_030037A0
_08040C30 DCDU gUnknown_03003BF8
_08040C34 DCDU gUnknown_0804AEAC
	END
