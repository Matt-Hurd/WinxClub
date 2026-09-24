	thumb_func_start sub_8037A10
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %1
	movs r1, #0
	bl sub_80401E4
	b %2
1
	movs r1, #1
	bl sub_80401E4
2
	ldr r1, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq %8
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq %14
	cmp r0, #2
	bne %7
	ldr r0, _08037CB8
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %3
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
3
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %17
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %4
	bl sub_8000914
4
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %5
	bl sub_8000914
5
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl %6
	ldr r0, _08037CBC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
6
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
8
	ldr r0, [r4, #4]
	ldr r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1f
	bne %7
	lsls r2, r1, #6
	lsrs r2, r2, #0x1c
	bne %13
	lsls r2, r1, #0x18
	movs r1, #0xf
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x18
	cmp r2, #0
	beq %11
	cmp r2, #1
	beq %9
	cmp r2, #2
	beq %10
	cmp r2, #3
	bne %12
	ldr r2, [r4, #0x20]
	subs r1, r2, r1
	str r1, [r4, #0x20]
	b %12
9
	ldr r2, [r4, #0x20]
	adds r1, r2, r1
	str r1, [r4, #0x20]
	b %12
10
	ldr r2, [r4, #0x1c]
	subs r1, r2, r1
	str r1, [r4, #0x1c]
	b %12
11
	ldr r2, [r4, #0x1c]
	adds r1, r2, r1
	str r1, [r4, #0x1c]
12
	movs r1, #1
	movs r2, #0x40
	strb r1, [r2, r4]
13
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #4]
	bl sub_8000914
	b %15
14
	b %20
15
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %16
	bl sub_8000914
16
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	b %18
17
	b %23
18
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
19
	b %7
20
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq %22
	cmp r0, #0
	beq %21
	ldr r0, _08037CBC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
21
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %7
	ldr r0, _08037CBC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b %7
22
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b %7
23
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %19
	cmp r0, #0
	beq %24
	ldr r0, _08037CBC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
24
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %19
	ldr r0, _08037CBC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b %7
	thumb_func_end sub_8037A10

