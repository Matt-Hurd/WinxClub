	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT sub_8002004
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT CpuSet
	IMPORT sub_803FF24

	thumb_func_start sub_801C210
sub_801C210
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	movs r4, #0
	add r5, sp, #0x58
	adds r1, r5, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494
	bl CpuSet
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494
	add r1, sp, #8
	bl CpuSet
	ldr r0, _0801C498
	ldr r0, [r0]
	bl sub_8002004
	ldr r3, [r0, #4]
	movs r0, #5
	ldr r6, [sp, #0xa8]
	lsls r0, r0, #8
	adds r2, r6, r0
	ldr r0, [r2, #0x1c]
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801C2DC
	add r0, sp, #8
_0801C250
	ldr r6, [sp, #0xa8]
	lsls r5, r1, #2
	adds r5, r5, r6
	ldr r5, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r6, [r6]
	lsls r6, r6, #0x16
	lsrs r6, r6, #0x1f
	bne _0801C28E
	movs r6, #0x8c
	ldr r6, [r6, r5]
	lsls r6, r6, #0x11
	lsrs r6, r6, #0x1f
	beq _0801C28E
	ldr r6, [r5, #0x5c]
	ldr r5, [r5, #0x30]
	subs r6, r6, r3
	ldr r5, [r5, #0x10]
	asrs r7, r6, #0x1f
	lsrs r7, r7, #0x10
	ldr r5, [r5]
	adds r6, r7, r6
	lsls r5, r5, #1
	lsrs r5, r5, #0x16
	asrs r6, r6, #0x10
	adds r6, r5, r6
	lsls r5, r4, #2
	add r7, sp, #0x58
	str r6, [r7, r5]
	str r1, [r0, r5]
	adds r4, #1
_0801C28E
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi _0801C250
	cmp r4, #0
	beq _0801C2DC
	movs r5, #0
	subs r1, r4, #1
	beq _0801C2DC
	mov lr, r1
_0801C2A6
	movs r1, #0
	subs r0, r4, r5
	subs r2, r0, #1
	beq _0801C2D6
	subs r0, #1
	mov ip, r0
_0801C2B2
	lsls r0, r1, #2
	add r7, sp, #0x58
	ldr r2, [r7, r0]
	adds r6, r0, r7
	ldr r3, [r6, #4]
	cmp r2, r3
	bhs _0801C2D0
	str r3, [r7, r0]
	str r2, [r6, #4]
	add r7, sp, #8
	adds r2, r0, r7
	ldr r6, [r2, #4]
	ldr r3, [r7, r0]
	str r6, [r7, r0]
	str r3, [r2, #4]
_0801C2D0
	adds r1, #1
	cmp ip, r1
	bhi _0801C2B2
_0801C2D6
	adds r5, #1
	cmp r5, lr
	blo _0801C2A6
_0801C2DC
	movs r0, #0
	cmp r4, #0
	bls _0801C34A
	movs r5, #3
	lsls r5, r5, #0xa
	movs r6, #0x80
_0801C2E8
	lsls r1, r0, #2
	add r2, sp, #8
	ldr r1, [r2, r1]
	ldr r2, [sp, #0xa8]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x80
	bls _0801C322
	lsls r3, r0, #1
	adds r3, #0x82
	cmp r3, r2
	beq _0801C344
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0801C344
	orrs r2, r6
	str r2, [r1]
	b _0801C344
_0801C322
	lsls r3, r0, #1
	adds r3, #0x42
	cmp r3, r2
	beq _0801C344
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0801C344
	orrs r2, r6
	str r2, [r1]
_0801C344
	adds r0, #1
	cmp r0, r4
	blo _0801C2E8
_0801C34A
	add sp, #0xac
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801C352
sub_801C352
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #0x20]
	adds r0, #0xff
	adds r0, #0x41
	ldrh r0, [r0, #6]
	cmp r0, #0x3c
	bls _0801C42C
	movs r0, #5
	ldr r1, [sp, #0x18]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x1c]
	movs r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	bls _0801C42C
_0801C37A
	ldr r1, [sp, #0x18]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r5, [r0, #0x20]
	ldrh r0, [r5, #4]
	cmp r0, #0x12
	bne _0801C46C
	movs r0, #0xa0
	ldrh r0, [r0, r5]
	ldr r1, _0801C49C
	cmp r0, r1
	bne _0801C46C
	movs r0, #0x94
	ldr r0, [r0, r5]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	beq _0801C46C
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0x30]
	ldr r0, [r1, #0x20]
	adds r2, #0x2c
	ldr r0, [r0, #0x30]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r3, [r2]
	str r3, [sp, #8]
	ldr r2, [r2, #4]
	cmp r3, #0
	str r2, [sp, #0xc]
	beq _0801C46C
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	subs r4, r1, r3
	subs r7, r0, r2
	cmp r4, #0
	bge _0801C3C8
	NEGS r0, r4
	b _0801C3CA
_0801C3C8
	adds r0, r4, #0
_0801C3CA
	str r0, [sp, #0x10]
	cmp r7, #0
	bge _0801C3D4
	NEGS r1, r7
	b _0801C3D6
_0801C3D4
	adds r1, r7, #0
_0801C3D6
	cmp r0, r1
	ble _0801C400
	adds r0, r7, #0
	asrs r1, r7, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	ldr r3, [sp, #4]
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	cmp r4, #0
	bge _0801C3FA
	ldr r4, _0801C4A0
	b _0801C448
_0801C3FA
	movs r4, #1
	lsls r4, r4, #0x10
	b _0801C448
_0801C400
	cmp r7, #0
	bne _0801C416
	cmp r4, #0
	ble _0801C40C
	movs r4, #1
	b _0801C43C
_0801C40C
	cmp r4, #0
	bge _0801C43C
	movs r4, #0
	mvns r4, r4
	b _0801C43C
_0801C416
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	adds r4, r0, #0
	cmp r7, #0
	str r1, [sp, #4]
	bge _0801C42E
	NEGS r0, r7
	b _0801C430
_0801C42C
	b _0801C48A
_0801C42E
	adds r0, r7, #0
_0801C430
	asrs r1, r0, #0x1f
	adds r2, r4, #0
	ldr r3, [sp, #4]
	bl __16_ll_srdv
	adds r4, r0, #0
_0801C43C
	cmp r7, #0
	bge _0801C444
	ldr r0, _0801C4A0
	b _0801C448
_0801C444
	movs r0, #1
	lsls r0, r0, #0x10
_0801C448
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r0, r2, r0
	adds r1, r1, r4
	str r0, [r5, #0x5c]
	str r1, [r5, #0x58]
	cmp r1, #0
	bne _0801C46C
	cmp r0, #0
	bne _0801C46C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x2c]
	mov r1, sp
	bl sub_803FF24
	b _0801C46E
_0801C46C
	b _0801C47A
_0801C46E
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, sp
	bl sub_803FF24
_0801C47A
	ldr r0, [sp, #0x14]
	adds r6, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r6
	bls _0801C48A
	b _0801C37A
_0801C48A
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801C494 DCDU 0x05000014
_0801C498 DCDU gUnknown_03003450
_0801C49C DCDU 0x00002712
_0801C4A0 DCDU 0xFFFF0000
	END