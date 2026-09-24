	thumb_func_start sub_8023DD0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xff
	adds r0, #0x1d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
	movs r7, #0
10
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %11
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x10]
11
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %10
	movs r5, #0
12
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %13
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
13
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %12
	movs r5, #0
14
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq %15
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x48]
15
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %14
	movs r5, #0
16
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq %17
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0x98
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x18]
17
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %16
	movs r5, #0
18
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq %19
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x78]
19
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %18
	movs r5, #0
20
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x30]
	cmp r1, #0
	beq %21
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0xb0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
21
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %20
	movs r5, #0
22
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x60]
	cmp r0, #0
	beq %23
	ldr r0, _0802406C
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x60]
23
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %22
	movs r5, #0
24
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #8]
	cmp r1, #0
	beq %25
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0x88
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
25
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %24
	movs r5, #0
26
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq %27
	adds r1, r0, #0
	ldr r0, _0802406C
	adds r1, #0xd4
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x14]
27
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %26
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq %28
	ldr r0, _0802406C
	adds r1, r4, #0
	adds r1, #0xd0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0x10]
28
	ldr r0, [r5, #8]
	cmp r0, #0
	beq %29
	ldr r0, _0802406C
	adds r1, r4, #0
	adds r1, #0xc8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #8]
29
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq %30
	ldr r0, _0802406C
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0xc]
30
	ldr r0, _08024070
	ldr r0, [r0]
	adds r0, #0xc0
	bl sub_80268AC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8023DD0

