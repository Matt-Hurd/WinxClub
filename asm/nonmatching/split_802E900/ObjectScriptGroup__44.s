	thumb_func_start ObjectScriptGroup__44
ObjectScriptGroup__44
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _0802EC38
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	sub sp, #0x1c
	beq %16
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
16
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %20
	adds r5, r4, #0
	adds r5, #0xa0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq %19
	ldr r0, [r4, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #8]
	ldr r0, _0802EC14
	ldrh r1, [r5, #6]
	ldr r0, [r0]
	ldr r6, [r4, #0x2c]
	ldr r0, [r0, #0x10]
	lsls r1, r1, #2
	ldr r0, [r0, #0x14]
	ldr r7, [r0, r1]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne %17
	ldr r0, _0802EC38
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
17
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #0x18]
	strh r0, [r3, #0x1a]
	ldr r6, [r4, #0x2c]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne %18
	ldr r0, _0802EC38
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
18
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #0x14]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #2]
	movs r3, #0
	mvns r3, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	add r1, sp, #0xc
	add r2, sp, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	movs r0, #0
	strh r0, [r5, #6]
19
	ldr r0, _0802EC3C
	ldr r0, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	ldrh r1, [r4, #0x1a]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	movs r0, #0
	adds r4, #0x70
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
20
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802EC08 DCDU __VTABLE__310Object
_0802EC0C DCDU 0xFF8007FF
_0802EC10 DCDU 0x0027E000
_0802EC14 DCDU gUnknown_03003454
_0802EC18 DCDU 0x656A624F
_0802EC1C DCDU 0x53207463
_0802EC20 DCDU 0x70697263
_0802EC24 DCDU 0x72472074
_0802EC28 DCDU 0x0070756F
_0802EC2C DCDU gUnknown_03003468
_0802EC30 DCDU gUnknown_03003EB8
_0802EC34 DCDU gUnknown_03003478
_0802EC38 DCDU gUnknown_03003EA0
_0802EC3C DCDU gUnknown_0300345C

