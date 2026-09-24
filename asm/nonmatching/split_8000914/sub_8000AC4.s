	thumb_func_start sub_8000AC4
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	sub sp, #4
	str r1, [sp]
	movs r0, #0
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r0, [r3]
	cmp r0, #0
	bne %15
	ldr r3, [sp, #8]
	ldr r0, [r3, #4]
	cmp r0, #0
	bne %15
14
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
15
	ldr r0, _08000B8C
	movs r1, #0x67
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrh r4, [r0, #8]
	ldr r2, [r0]
	ldrh r6, [r0, #0xa]
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #5
	adds r4, r2, r3
	movs r7, #0
	cmp r6, #0
	ble %18
16
	cmp r4, r5
	beq %17
	ldr r0, _08000B8C
	ldr r1, _08000BA0
	ldr r0, [r0]
	adds r2, r4, #0
	adds r0, r0, r1
	adds r1, r5, #0
	ldr r3, [sp, #8]
	bl sub_800F090
	cmp r0, #0
	beq %17
	movs r7, #1
	ldr r1, [sp]
	movs r0, #1
	strb r0, [r1]
17
	ldr r0, _08000B8C
	movs r1, #0x67
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, #0x40
	ldrh r1, [r4, #0x1a]
	subs r6, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	cmp r6, #0
	bgt %16
18
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl %20
	ldr r0, _08000BA4
	cmp r7, #0
	beq %19
	ldr r1, _08000B8C
	ldr r2, _08000BA8
	ldr r1, [r1]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_801537C
	cmp r0, #0
	beq %20
	ldr r1, [sp]
	movs r0, #3
	strb r0, [r1]
	b %20
19
	ldr r1, _08000B8C
	ldr r1, [r1]
	ldr r2, [sp, #8]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_801537C
	adds r7, r0, #0
	beq %20
	ldr r1, [sp]
	movs r0, #2
	strb r0, [r1]
20
	adds r0, r7, #0
	b %14
	thumb_func_end sub_8000AC4
