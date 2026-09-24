	non_word_aligned_thumb_func_start sub_800C93A
sub_800C93A
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #4
	adds r4, r5, r0
	movs r0, #0x13
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x14]
	cmp r0, r4
	bls %107
	ldr r7, _0800CCE0
103
	ldr r0, [r4, #4]
	cmp r0, #0
	bne %105
	ldr r1, _0800CCE4
	ldr r0, [r1]
	cmp r0, #0
	beq %104
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r4, #8]
	movs r1, #5
	lsls r1, r1, #0x18
	lsrs r0, r0, #2
	orrs r0, r1
	adds r2, r0, #0
	mov r0, sp
	ldr r1, [r4]
	bl CpuSet
	b %106
104
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r7]
	ldr r0, [r4]
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x85
	lsrs r0, r0, #2
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b %106
105
	ldrh r1, [r4, #0xa]
	cmp r1, #0
	beq %108
	cmp r1, #1
	beq %110
	cmp r1, #2
	bne %106
	ldr r1, [r4]
	bl LZ77UnCompVram
106
	ldr r0, [r6, #0x14]
	adds r4, #0xc
	cmp r0, r4
	bhi %103
107
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r1, [r6, #0x10]
	adds r0, r5, r0
	cmp r1, r0
	bls %112
	b %111
108
	ldr r1, _0800CCE4
	ldr r1, [r1]
	cmp r1, #0
	beq %109
	ldrh r1, [r4, #8]
	movs r2, #1
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r2, r1
	ldr r1, [r4]
	bl CpuSet
	b %106
109
	str r0, [r7]
	ldr r0, [r4]
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x21
	lsrs r0, r0, #2
	lsls r1, r1, #0x1a
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b %106
110
	ldr r1, [r4]
	bl RLUnCompVram
	b %106
111
	ldr r4, [r0, #4]
	ldr r7, [r0]
	ldm r4!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r1, [r6, #0x10]
	adds r0, #8
	cmp r1, r0
	bhi %111
112
	movs r0, #3
	lsls r0, r0, #0xb
	adds r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %119
	movs r0, #0xc1
	lsls r0, r0, #5
	adds r1, r5, r0
	ldrb r3, [r1, #1]
	movs r0, #7
	movs r2, #1
	lsls r2, r2, #9
	lsls r0, r0, #0x18
	cmp r3, #0
	bne %115
	adds r3, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq %114
113
	stm r3!, {r2}
	ldr r4, [r3]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x10
	stm r3!, {r4}
	subs r0, #1
	bne %113
114
	movs r0, #0
	strb r0, [r1]
	b %119
115
	ldr r3, _0800CCE8
	ldr r4, _0800CCEC
	adds r3, r5, r3
116
	ldrb r6, [r3, #7]
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	adds r3, r3, r5
	adds r3, r3, r4
	ldrh r6, [r3]
	strh r6, [r0]
	ldrh r6, [r3, #2]
	strh r6, [r0, #2]
	ldrh r6, [r3, #4]
	strh r6, [r0, #4]
	ldrb r6, [r3, #7]
	adds r0, #8
	cmp r6, #0x80
	blo %116
	ldrb r3, [r1, #1]
	ldrb r4, [r1]
	cmp r4, r3
	bls %118
117
	stm r0!, {r2}
	ldr r4, [r0]
	adds r3, #1
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x10
	stm r0!, {r4}
	ldrb r4, [r1]
	cmp r4, r3
	bhi %117
118
	ldrb r0, [r1, #1]
	strb r0, [r1]
119
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq %122
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r5, r0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq %122
	ldr r0, _0800CCF0
	ldr r1, _0800CCF4
	adds r0, r5, r0
	movs r2, #0x1f
120
	ldrb r3, [r0, #8]
	cmp r3, #0
	beq %121
	ldrh r3, [r0]
	strh r3, [r1]
	ldrh r3, [r0, #2]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #6]
	strh r3, [r1, #0x18]
121
	adds r0, #0xc
	adds r1, #0x20
	subs r2, #1
	bhs %120
122
	adds r0, r5, #0
	bl sub_800B8CE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

