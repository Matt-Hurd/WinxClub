	thumb_func_start sub_800212C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, [r6]
	mov ip, r0
	adds r0, r3, #0
	ldr r1, [r3, #0x30]
	lsls r3, r2, #0xc
	lsrs r4, r3, #0x1a
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r1, r1, r3
	ldr r3, [r6]
	ldrh r1, [r1, #4]
	lsls r5, r3, #0x12
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	ldr r7, [r0, #0x30]
	lsls r3, r3, #3
	adds r3, r7, r3
	ldrh r3, [r3, #4]
	lsrs r5, r5, #0x12
	lsls r2, r2, #0x12
	adds r5, r3, r5
	lsls r3, r5, #1
	adds r3, r3, r5
	lsrs r2, r2, #0x12
	adds r1, r1, r2
	movs r5, #0x27
	lsls r5, r5, #6
	movs r2, #0x27
	lsls r2, r2, #6
	add r5, ip
	mov r4, ip
	adds r4, r4, r2
	ldr r5, [r5, #0x14]
	ldr r2, [r4, #0x3c]
	lsls r3, r3, #2
	adds r3, r5, r3
	adds r3, #4
	ldr r5, [r3]
	ldr r7, _080023E8
	lsls r2, r2, #0x14
	mov lr, r2
	lsrs r2, r2, #0x15
	ands r5, r7
	cmp r2, #0
	sub sp, #4
	bne %1
	str r5, [r3]
	b %2
1
	mov r2, lr
	lsrs r2, r2, #0x15
	lsls r2, r2, #0xd
	orrs r2, r5
	str r2, [r3]
	ldr r3, [r4, #0x3c]
	ldr r2, [r4, #0x14]
	lsls r3, r3, #0x14
	lsrs r5, r3, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, #8
	ldr r3, [r2]
	lsls r5, r1, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r5, r5, #0x15
	orrs r3, r5
	str r3, [r2]
2
	ldr r3, _080023EC
	ldr r2, [r4, #0x3c]
	lsls r5, r1, #1
	ands r2, r3
	lsls r3, r1, #0x15
	lsrs r3, r3, #0x14
	orrs r2, r3
	str r2, [r4, #0x3c]
	ldr r2, [r4, #0x14]
	adds r5, r5, r1
	lsls r5, r5, #2
	adds r1, r2, r5
	adds r1, #8
	ldr r2, [r1]
	lsrs r2, r2, #0xb
	lsls r2, r2, #0xb
	str r2, [r1]
	ldr r1, [r4, #0x14]
	movs r2, #0x21
	adds r7, r1, r5
	mov r1, ip
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r7, #4
	subs r0, r0, r1
	bl sub_8040504
	lsls r0, r1, #0x1e
	ldr r1, [r7]
	lsrs r0, r0, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, [r4, #0x14]
	ldr r2, _080023F0
	str r6, [r0, r5]
	ldr r0, [r4, #0x14]
	adds r0, r0, r5
	adds r0, #4
	ldr r1, [r0]
	ands r1, r2
	ldr r2, [sp, #0xc]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x13
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	movs r2, #4
	adds r0, r0, r5
	orrs r1, r2
	str r1, [r0, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800212C

