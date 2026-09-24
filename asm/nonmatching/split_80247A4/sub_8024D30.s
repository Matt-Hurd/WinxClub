	thumb_func_start sub_8024D30
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08024E38
	ldr r1, [sp, #8]
	adds r6, r0, #0
	movs r0, #5
	ldr r4, [r4]
	lsls r0, r0, #8
	ldr r2, _08024E50
	adds r0, r4, r0
	cmp r1, r2
	beq %24
	ldr r1, [r0, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne %24
	movs r5, #1
	b %25
24
	movs r5, #0
25
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq %26
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne %26
	movs r4, #1
	b %27
26
	movs r4, #0
27
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %35
	ldr r7, _08024E34
	ldr r0, [r7]
	adds r0, #0xc0
	cmp r5, #0
	beq %29
	movs r2, #0x40
	adds r1, r2, #0
	cmp r3, #0x40
	bhi %28
	adds r1, r3, #0
28
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r1, r2, r1
	movs r3, #0x64
	muls r1, r3
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1a
	adds r1, r2, r1
	asrs r1, r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [r0, #0x14]
	bl sub_80268BA
	ldr r0, [r7]
	adds r0, #0xc0
	bl sub_8028BE4
	cmp r0, #0
	bne %30
	ldr r0, [r7]
	adds r0, #0xc0
	bl sub_8028C2E
	b %30
29
	bl sub_80268AC
30
	adds r7, r6, #0
	adds r7, #0xc0
	ldr r0, [r7, #0x10]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, r5
	beq %31
	adds r1, r5, #0
	bl sub_80401E4
31
	ldr r0, [r7, #0x14]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, r4
	beq %35
	adds r1, r4, #0
	bl sub_80401E4
	adds r1, r4, #0
	ldr r0, [r7, #0x18]
	bl sub_80401E4
	adds r5, r6, #0
	adds r5, #0xff
	adds r5, #0x1d
	cmp r4, #0
	beq %32
	ldr r2, _08024E50
	ldr r1, [sp, #8]
	cmp r1, r2
	bne %33
32
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20
	bl sub_80137F8
	b %34
33
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_80138E2
34
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
35
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8024D30
