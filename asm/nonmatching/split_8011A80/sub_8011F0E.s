	non_word_aligned_thumb_func_start sub_8011F0E
sub_8011F0E
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0801209C
	ldrh r0, [r7]
	lsls r1, r0, #0x1d
	bmi %68
	movs r1, #4
	ldr r5, _080120A0
	orrs r0, r1
	ldr r4, _080120A0
	subs r5, #0x10
	adds r6, r5, #0
	strh r0, [r7]
	movs r1, #0xb
	ands r0, r1
	adds r6, #0x10
	subs r4, #0x34
	cmp r0, #1
	bne %72
	ldr r5, [r5, #0xc]
	cmp r5, #0
	beq %62
56
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne %71
	ldrh r0, [r7, #0xe]
	movs r3, #0x4c
	ldr r4, _080120A4
	strh r0, [r7, #0x10]
	ldrb r0, [r6, #0xf]
	muls r0, r3
	adds r0, r0, r4
	cmp r0, r4
	bls %60
57
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x1f
	bmi %59
	ldr r1, [r4, #8]
	cmp r1, #0
	beq %59
	ldrb r2, [r1, #0x14]
	cmp r2, #0
	beq %59
	lsls r2, r0, #0x1d
	bpl %58
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x10]
	subs r2, r2, r3
	ldr r3, _080120B4
	str r2, [r4, #0x1c]
	cmp r2, r3
	bls %58
	movs r0, #1
	strh r0, [r4, #4]
	b %59
58
	movs r2, #0x10
	orrs r0, r2
	adds r2, r4, #0
	adds r1, #0x14
	adds r2, #0x20
	strh r0, [r4, #4]
	bl sub_8011E64
59
	ldrb r0, [r6, #0xf]
	movs r3, #0x4c
	ldr r1, _080120A4
	muls r0, r3
	adds r0, r0, r1
	adds r4, #0x4c
	cmp r0, r4
	bhi %57
60
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne %69
	movs r3, #0x12
	ldrsh r1, [r7, r3]
	cmp r1, #0
	beq %67
	ldrh r0, [r7, #0x16]
	ldr r2, _080120A4
	adds r0, r0, r1
	cmp r1, #0
	ble %61
	ldrh r1, [r7, #0x14]
	cmp r1, r0
	bgt %61
	strh r1, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
	b %64
61
	cmp r0, #0
	bgt %63
	bl sub_8011D56
	ldrh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
62
	b %78
63
	strh r0, [r7, #0x16]
64
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq %67
	movs r3, #0x10
65
	ldrh r1, [r2, #4]
	lsls r4, r1, #0x1f
	bmi %66
	orrs r1, r3
	strh r1, [r2, #4]
66
	subs r0, #1
	adds r2, #0x4c
	cmp r0, #0
	bne %65
67
	bl sub_8040C78
	b %70
68
	b %79
69
	bl sub_80409E4
70
	ldrb r0, [r7, #3]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #3]
	ldrb r1, [r7, #4]
	cmp r0, r1
	blo %71
	movs r0, #0
	strb r0, [r7, #3]
71
	ldrh r0, [r7, #0x10]
	adds r4, r5, #0
	cmp r0, r5
	b %73
72
	b %75
73
	bhi %74
	adds r4, r0, #0
74
	subs r5, r5, r4
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	bl sub_80123E4
	adds r0, r4, #0
	ldr r4, _080120A0
	subs r4, #0x34
	ldr r1, [r4, #8]
	bl __call_via_r1
	cmp r5, #0
	bne %56
	b %78
75
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq %76
	bl sub_80123E4
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl __call_via_r1
76
	ldrh r0, [r7]
	lsls r0, r0, #0x1c
	bpl %78
	ldr r6, _0801209C
	adds r6, #0x68
	ldrb r4, [r6, #7]
	cmp r4, #0
	beq %77
	movs r1, #5
	ldr r0, [r6]
	bl %30
	ldrb r0, [r6, #6]
	adds r0, #0xff
	strb r0, [r7, #7]
	ldr r0, _080120B8
	strb r4, [r7, #0xb]
	muls r0, r4
	lsrs r1, r0, #0x17
	ldrh r0, [r5, #0x18]
	bl Div
	strh r0, [r7, #0xe]
	ldrb r0, [r6, #8]
	strb r0, [r7, #4]
	ldrb r0, [r6, #9]
	strb r0, [r7, #0xa]
	ldrh r0, [r6, #4]
	bl sub_8040C38
	b %78
77
	bl sub_80116D4
78
	ldrh r0, [r7]
	movs r1, #4
	bics r0, r1
	strh r0, [r7]
79
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
