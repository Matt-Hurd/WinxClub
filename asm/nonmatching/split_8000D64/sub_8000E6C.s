	thumb_func_start sub_8000E6C
sub_8000E6C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r7, r6, r0
	ldrh r0, [r7, #0x1c]
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r6, r1
	movs r5, #1
	cmp r0, #1
	blt %5
3
	lsls r1, r5, #1
	adds r1, r1, r5
	ldr r0, [r4]
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq %4
	mov r1, sp
	adds r0, r6, #0
	bl sub_8000DE6
4
	ldrh r0, [r7, #0x1c]
	adds r5, #1
	cmp r0, r5
	bge %3
5
	movs r6, #1
	ldr r0, [r4, #0x28]
	lsls r6, r6, #0x12
	orrs r0, r6
	str r0, [r4, #0x28]
	ldr r0, [r4]
	bl __da__FPv
	movs r5, #0
	str r5, [r4]
	ldr r0, [r4, #0x10]
	bl __da__FPv
	str r5, [r4, #0x10]
	strh r5, [r7, #0x1c]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	ldr r0, [r4, #0x28]
	ldr r5, _08001058
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r5]
	cmp r0, #0
	beq %6
	bl sub_800B8CE
	ldr r0, [r5]
	bl sub_800B916
6
	ldr r0, [r4, #0x28]
	bics r0, r6
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

