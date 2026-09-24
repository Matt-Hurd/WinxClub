	non_word_aligned_thumb_func_start sub_80241DA
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	movs r7, #0
	cmp r0, #0
	sub sp, #0x14
	beq %14
	ldr r1, _08024478
	ldr r1, [r1]
	ldr r2, [r1, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	cmp r2, r0
	blo %13
	movs r1, #1
	str r7, [r4]
13
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	cmp r2, r1
	beq %14
	bl sub_80401E4
14
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq %15
	cmp r0, #3
	bne %19
15
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802447C
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	movs r1, #0x11
	lsls r0, r0, #2
	lsls r1, r1, #0x14
	bl __16_ll_mulss
	add r2, pc, #0x234
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	movs r0, #0xf0
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r6, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	movs r5, #0
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
16
	lsls r0, r5, #5
	adds r1, r0, #0
	adds r1, #0x20
	str r1, [sp, #8]
	cmp r1, r6
	ble %17
	ldr r0, [sp, #0xc]
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
	b %18
17
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r1, [sp, #8]
	movs r0, #0xf0
	subs r0, r0, r1
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
18
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %16
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r1, #1
	bne %20
	adds r0, #2
	strb r0, [r4, #0xd]
	b %21
19
	b %47
20
	adds r0, #0xfe
	strb r0, [r4, #0xd]
21
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	cmp r0, #0
	bgt %35
	cmp r1, #3
	bne %35
	movs r0, #0
	ldr r7, _08024488
	strb r0, [r4, #0xc]
	movs r5, #0
22
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq %23
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r6, #0x1c]
23
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x10
	blo %22
	movs r5, #0
24
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq %25
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %25
	movs r1, #1
	bl sub_80401E4
25
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %24
	movs r5, #0
26
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq %27
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %27
	movs r1, #1
	bl sub_80401E4
27
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %26
	movs r5, #0
28
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq %29
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %29
	movs r1, #1
	bl sub_80401E4
29
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %28
	movs r5, #0
30
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq %31
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %31
	movs r1, #1
	bl sub_80401E4
31
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %30
	movs r5, #0
32
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %33
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %33
	movs r1, #1
	bl sub_80401E4
33
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %32
	movs r5, #0
34
	lsls r0, r5, #2
	b %36
35
	b %48
36
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %37
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %37
	movs r1, #1
	bl sub_80401E4
37
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %34
	movs r5, #0
38
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq %39
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %39
	movs r1, #1
	bl sub_80401E4
39
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %38
	ldr r6, _0802446C
	movs r5, #0
40
	ldr r0, [r6]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	cmp r1, r5
	bls %41
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_80401E4
41
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %40
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq %42
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %42
	movs r1, #1
	bl sub_80401E4
42
	ldr r0, [r5, #8]
	cmp r0, #0
	beq %44
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %44
	movs r1, #1
	b %43
	ALIGN
_0802446C DCDU gPlayerEntity
_08024470 DCDU gUnknown_03003EA0
_08024474 DCDU gUnknown_0805104C
_08024478 DCDU gUnknown_03003E98
_0802447C DCDU gUnknown_080414B8
_08024480 DCDU 0x00010000
_08024484 DCDU 0x00000000
_08024488 DCDU gUnknown_03003448
43
	bl sub_80401E4
44
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq %45
	adds r0, r4, #0
	bl sub_802416A
45
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %46
	adds r0, r4, #0
	bl sub_8024084
46
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %47
	adds r0, r4, #0
	bl sub_8023FE4
47
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
48
	cmp r0, #0x5a
	blt %47
	movs r0, #2
	strb r0, [r4, #0xc]
	b %47
	thumb_func_end sub_80241DA

