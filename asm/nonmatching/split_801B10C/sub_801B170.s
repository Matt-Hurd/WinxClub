	thumb_func_start sub_801B170
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0801B468
	movs r6, #0
	ldr r7, [r4]
	adds r3, r6, #0
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803FC68
	adds r5, r0, #0
	adds r2, r0, #0
	cmp r0, #0xff
	strb r0, [r7, #0x14]
	bne %4
	ldr r0, [r4]
	ldrb r2, [r0, #0x14]
4
	ldr r0, _0801B46C
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x17
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	adds r2, r0, #0
	str r5, [sp]
	movs r3, #1
	movs r1, #2
	ldr r0, [r4]
	bl sub_8017A0A
	ldr r0, [r4]
	lsls r5, r5, #2
	strb r6, [r0, #0x14]
	movs r6, #5
	lsls r6, r6, #7
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %6
5
	movs r1, #0xff
	ldr r0, [r4]
	bl sub_8017620
	ldr r0, [r4]
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %5
6
	ldr r0, _0801B470
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_80015E6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801B170

