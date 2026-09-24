	non_word_aligned_thumb_func_start sub_800C55E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r6, #1
	orrs r0, r6
	sub sp, #0x24
	str r0, [r5, #0x78]
	ldrh r0, [r1, #0x28]
	adds r4, r1, #0
	ldr r1, _0800C8A4
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1b
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #0x1b
	bpl %76
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne %75
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	ldr r7, _0800C8A8
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl __16__rt_sdiv
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r0, r0, #2
	NEGS r1, r0
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl __16__rt_sdiv
	ldr r1, [sp, #0x18]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl __16__rt_sdiv
	ldr r1, [sp, #0x18]
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl __16__rt_sdiv
	ldr r1, [sp, #0x18]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x18]
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	strb r6, [r1, #0xb]
	str r6, [r0, #0x24]
75
	ldr r0, [r4]
	movs r1, #0x10
	bics r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
76
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0x10]
	cmp r0, #0
	beq %77
	ldr r2, [r4, #0x48]
77
	ldr r7, [r4, #0x18]
	cmp r7, #0
	beq %78
	adds r1, r7, #0
	b %79
78
	ldr r0, [r5, #0x18]
	ldr r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
79
	ldr r3, [r4, #0x14]
	adds r0, r6, #0
	mov ip, r3
	adds r3, r6, #0
	cmp r7, #0
	bne %80
	ldr r2, [r2]
	lsls r2, r2, #0xc
	lsrs r3, r2, #0x1c
80
	subs r2, r3, #1
	str r2, [sp, #0x14]
	adds r3, r2, #1
	beq %89
	movs r3, #3
	lsls r3, r3, #0xb
	adds r3, r5, r3
	movs r2, #0x13
	lsls r2, r2, #8
	adds r2, r5, r2
	str r3, [sp, #0x20]
81
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	bpl %88
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldr r0, [r1]
	beq %82
	lsls r0, r0, #4
	ldr r3, [r2, #0x14]
	lsrs r0, r0, #4
	str r0, [r3, #4]
	b %84
82
	ldr r6, _0800C8AC
	adds r3, r6, #0
	bics r3, r0
	bne %83
	ldr r0, [r2, #0x14]
	str r6, [r0, #4]
	b %84
83
	lsls r0, r0, #4
	ldr r3, [r5, #0x20]
	lsrs r0, r0, #2
	adds r0, r3, r0
	ldr r3, [r2, #0x14]
	str r0, [r3, #4]
84
	mov r3, ip
	ldr r0, [r3]
	ldr r3, _0800C8B0
	lsrs r0, r0, #0x15
	lsls r0, r0, #5
	adds r0, r0, r3
	ldr r3, [r2, #0x14]
	str r0, [r3]
	ldr r0, [r1, #4]
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r6, r3, #1
	lsls r3, r0, #0xc
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r3, r3, #1
	muls r6, r3
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r3, #0x40
	cmp r0, #9
	beq %85
	movs r3, #0x20
85
	ldr r0, [r2, #0x14]
	muls r6, r3
	strh r6, [r0, #8]
	ldr r0, [r2, #0x14]
	ldr r6, _0800C8AC
	ldr r3, [r0, #4]
	cmp r3, r6
	beq %86
	ldr r3, [r1]
	lsrs r3, r3, #0x1c
	strh r3, [r0, #0xa]
	b %87
86
	movs r3, #0
	str r3, [r0, #4]
	ldr r0, [r2, #0x14]
	strh r3, [r0, #0xa]
87
	ldr r0, [r2, #0x14]
	adds r0, #0xc
	str r0, [r2, #0x14]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bmi %88
	mov r3, ip
	ldr r3, [r3]
	lsrs r0, r3, #0x15
	lsls r3, r3, #0xb
	lsrs r6, r3, #0x18
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	ldr r6, _0800C8B4
	adds r3, r3, r5
	adds r3, r3, r6
	ldrh r6, [r3]
	lsls r0, r0, #0x16
	lsrs r6, r6, #0xa
	lsls r6, r6, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r6
	strh r0, [r3]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
88
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bpl %91
	mov r3, ip
	ldr r0, [r3]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800C8B8
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r3, [r4, #0x26]
	b %90
89
	b %102
90
	strh r3, [r0]
	ldrh r3, [r4, #0x28]
	movs r7, #3
	lsls r7, r7, #0xe
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x2a]
	strh r3, [r0, #4]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsrs r6, r6, #0x18
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r6, r6, #4
	orrs r3, r6
	ldr r6, _0800C8BC
	ldrb r3, [r6, r3]
	ldrh r6, [r0, #2]
	bics r6, r7
	lsls r7, r3, #0x1e
	lsrs r7, r7, #0x10
	orrs r6, r7
	strh r6, [r0, #2]
	mov lr, r6
	ldrh r6, [r0]
	movs r7, #3
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	lsls r7, r7, #0xe
	bics r6, r7
	lsls r3, r3, #0xe
	orrs r6, r3
	strh r6, [r0]
	str r6, [sp, #0x1c]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	lsrs r6, r6, #0x18
	lsls r7, r6, #2
	adds r3, #4
	str r3, [sp, #0xc]
	adds r7, #4
	str r7, [sp, #0x10]
	ldrh r6, [r0, #4]
	mov r3, ip
	ldr r3, [r3]
	lsrs r6, r6, #0xa
	lsls r3, r3, #1
	lsrs r3, r3, #0x16
	lsls r6, r6, #0xa
	orrs r3, r6
	strh r3, [r0, #4]
	adds r6, r3, #0
	mov r3, ip
	ldr r3, [r3]
	lsls r3, r3, #0x13
	lsrs r7, r3, #0x1b
	adds r3, r6, #0
	movs r6, #0xf
	lsls r6, r6, #0xc
	bics r3, r6
	lsls r6, r7, #0xc
	orrs r3, r6
	strh r3, [r0, #4]
	ldrb r3, [r4, #5]
	strb r3, [r0, #6]
	ldrh r3, [r4, #0x26]
	lsls r3, r3, #0x16
	lsrs r6, r3, #0x1e
	beq %94
	lsrs r3, r3, #0x1e
	cmp r3, #3
	bne %92
	mov r6, lr
	lsrs r3, r6, #9
	ldr r7, [sp, #0x10]
	lsls r3, r3, #9
	subs r6, r6, r7
	lsls r6, r6, #0x17
	lsrs r6, r6, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0xc]
	lsrs r3, r6, #8
	subs r6, r6, r7
	lsls r6, r6, #0x18
	lsls r3, r3, #8
	lsrs r6, r6, #0x18
	orrs r3, r6
	strh r3, [r0]
	b %93
91
	b %101
92
	ldr r7, [sp, #0x10]
	mov r6, lr
	asrs r3, r7, #1
	subs r3, r6, r3
	lsls r3, r3, #0x17
	lsrs r6, r6, #9
	lsls r6, r6, #9
	lsrs r3, r3, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r3, [sp, #0xc]
	ldr r6, [sp, #0x1c]
	asrs r3, r3, #1
	subs r3, r6, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r6, r6, #8
	lsls r6, r6, #8
	orrs r3, r6
	strh r3, [r0]
93
	ldr r7, [sp, #0x10]
	movs r3, #0x10
	asrs r6, r7, #1
	ldrsh r7, [r1, r3]
	movs r3, #0x20
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	mov lr, r3
	ldr r3, [sp, #0xc]
	asrs r6, r3, #1
	movs r3, #0x12
	ldrsh r7, [r1, r3]
	movs r3, #0x22
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	str r3, [sp, #8]
	ldr r7, [sp, #0x18]
	movs r3, #0
	ldrsh r6, [r7, r3]
	mov r3, lr
	muls r6, r3
	movs r3, #2
	ldrsh r7, [r7, r3]
	ldr r3, [sp, #8]
	muls r7, r3
	subs r3, r6, r7
	asrs r7, r3, #8
	str r7, [sp, #4]
	ldr r7, [sp, #0x18]
	mov r6, lr
	ldrh r3, [r7, #4]
	NEGS r3, r3
	muls r3, r6
	ldrh r6, [r7, #6]
	ldr r7, [sp, #8]
	muls r6, r7
	adds r3, r3, r6
	asrs r7, r3, #8
	ldrh r3, [r0, #2]
	mov lr, r7
	ldr r7, [sp, #4]
	lsrs r6, r3, #9
	adds r3, r3, r7
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r0]
	lsrs r6, r3, #8
	add r3, lr
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
	b %100
94
	b %95
95
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x13
	bpl %96
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	ldr r7, [sp, #0x10]
	subs r3, r7, r6
	b %97
	ALIGN
_0800C8A4 DCDU 0x00001824
_0800C8A8 DCDU gUnknown_080414B8
_0800C8AC DCDU 0x0FFFFFFF
_0800C8B0 DCDU 0x06010000
_0800C8B4 DCDU 0x0000131C
_0800C8B8 DCDU 0x00001318
_0800C8BC DCDU gUnknown_0804AC68
96
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
97
	mov r7, lr
	subs r3, r7, r3
	mov r6, lr
	lsrs r6, r6, #9
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x12
	bpl %98
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	ldr r3, [sp, #0xc]
	subs r3, r3, r6
	b %99
98
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
99
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x1c]
	lsrs r6, r6, #8
	subs r3, r7, r3
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
100
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
101
	ldr r0, [sp, #0x14]
	mov r3, ip
	adds r3, #8
	subs r0, #1
	mov ip, r3
	adds r1, #0x14
	adds r3, r0, #1
	str r0, [sp, #0x14]
	beq %102
	b %81
102
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r1
	movs r1, #0x40
	bics r0, r1
	movs r1, #0x80
	bics r0, r1
	str r0, [r4]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800C55E

