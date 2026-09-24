	thumb_func_start sub_801197C
	push {r3, r4, r5, lr}
	ldr r4, _08011A14
	adds r4, #0x24
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x1f
	bmi %53
	movs r0, #0
	ldr r1, _08011A14
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68
	adds r1, #0x44
	bl CpuSet
	movs r0, #0
	ldr r5, _08011A6C
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08011A14
	movs r2, #1
	adds r0, #0x44
	str r0, [r4, #4]
	ldrh r0, [r4, #0x10]
	ldr r3, _08011A70
	adds r1, r4, #0
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrb r0, [r3]
	movs r2, #8
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	subs r4, r3, #3
52
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	ldr r2, [r5, r2]
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r2, [r4, #0x20]
	blo %52
	ldr r0, _08011A74
	adds r5, #0x20
	str r5, [r0]
	ldr r2, _08011A78
	str r2, [r0, #4]
	ldr r2, _08011A7C
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r1, [r1, #0x18]
	lsls r0, r2, #0x16
	bl Div
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C
	str r0, [r1]
	movs r0, #0x80
	strh r0, [r4, #4]
	ldr r0, _08011A4C
	strh r0, [r4, #2]
	ldr r0, _08011A54
	ldr r1, _08011A14
	str r0, [r1, #8]
53
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_801197C
