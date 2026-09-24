	thumb_func_start sub_8021B84
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08021E78
	sub sp, #0xc
	ldr r6, [r0]
	add r0, pc, #0x2EC
	str r0, [sp, #8]
	movs r0, #0x84
	ldr r0, [r0, r5]
	lsls r0, r0, #4
	lsrs r7, r0, #0x14
	bne %11
	movs r1, #5
	lsls r1, r1, #7
	movs r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	b %10
9
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	bhs %17
10
	lsls r0, r4, #2
	adds r0, r0, r6
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %9
	lsls r0, r4, #1
	adds r0, r0, r6
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	bmi %9
	b %17
11
	movs r4, #4
	b %13
12
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs %14
13
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %12
14
	ldr r0, _08021E90
	ldr r0, [r0]
	bl sub_80050FA
	lsrs r1, r7, #2
	str r1, [sp, #4]
	bl GetEWRAMStart
	ldr r1, [sp, #4]
	cmp r1, #0
	beq %15
	ldr r1, [sp, #4]
	movs r3, #0
	lsls r1, r1, #2
	mov ip, r1
	movs r2, #0
	adds r1, r0, #0
	mov r0, ip
	bl sub_803DA9C
	b %16
15
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	movs r0, #4
	bl sub_803DA80
16
	lsls r1, r4, #2
	adds r1, r1, r6
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r1, #0xff
	adds r1, #0x99
	adds r0, r0, r6
	strh r7, [r1, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	strh r1, [r0, #0x18]
17
	lsls r1, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r1, r1, r6
	adds r1, r1, r2
	movs r0, #1
	strh r0, [r1, #0x18]
	lsls r1, r4, #2
	subs r2, #0xff
	subs r2, #1
	adds r1, r1, r6
	ldr r0, [sp, #8]
	adds r1, r1, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	lsls r0, r0, #4
	adds r0, r6, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r1, #0xff
	ldr r0, [r5, #0x7c]
	lsls r1, r1, #0x10
	bics r0, r1
	lsls r1, r4, #0x10
	orrs r0, r1
	str r0, [r5, #0x7c]
	ldr r0, _08021E94
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80177D8
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, _08021E74
	ldr r0, [r0]
	bl sub_800116A
	adds r4, r5, #0
	adds r4, #0xff
	adds r4, #1
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x2c]
	bl sub_803F898
	adds r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_800065C
	ldr r0, [r4, #0x24]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x24]
	bl sub_803F2CC
	movs r1, #0x20
	ldr r0, [r4, #0x24]
	bl sub_80401C0
	ldr r0, [r5, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x24]
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x24]
	bl sub_80401E4
	adds r5, #0x58
	ldm r5!, {r0, r1}
	adds r4, #0x34
	stm r4!, {r0, r1}
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8021B84

