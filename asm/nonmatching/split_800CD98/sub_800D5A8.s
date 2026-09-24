	thumb_func_start sub_800D5A8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r1, #0xff
	adds r3, r7, #0
	adds r1, #1
	movs r2, #0
	movs r6, #0x14
	movs r0, #1
	sub sp, #0x44
	bl sub_803D9C4
	adds r3, r7, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x38]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	adds r1, r5, #0
	add r3, sp, #0x2c
	add r2, sp, #0x30
	bl sub_800CD98
	movs r1, #0
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, #0
	bls %99
	add r7, sp, #0x18
	str r7, [sp, #0x40]
93
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq %94
	ldr r1, [sp, #0x28]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq %100
94
	ldr r1, [sp, #0x50]
	add r7, sp, #4
	ldrb r0, [r1]
	adds r6, #0x24
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x10]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x12]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x16]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x40]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x1c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq %95
	add r3, sp, #0
	ldrh r0, [r3, #0x10]
	ldrh r1, [r3, #0x12]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r6, r6, r0
95
	ldr r0, [sp, #0xc]
	lsls r0, r0, #2
	adds r7, r0, r6
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %97
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	bls %97
96
	ldr r0, [sp, #0x24]
	lsls r1, r6, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x2c]
	movs r2, #0
	strb r2, [r0, r1]
	ldr r0, [sp, #0xc]
	adds r6, #1
	cmp r0, r6
	bhi %96
97
	ldr r0, [sp, #4]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r7
	movs r0, #0
	cmp r1, #0
	mov ip, r1
	bls %103
98
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [sp, #0x20]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #8]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1c
	beq %102
	ldrh r3, [r1, #4]
	ldrh r1, [r1, #6]
	lsls r2, r2, #0x19
	muls r3, r1
	lsls r1, r3, #1
	lsrs r2, r2, #0x19
	b %101
99
	b %105
100
	b %104
101
	muls r1, r2
	adds r6, r1, r6
102
	adds r0, #1
	cmp ip, r0
	bhi %98
103
	ldr r0, [sp, #4]
	movs r1, #1
	ldr r2, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
104
	ldr r1, [sp, #0x28]
	adds r1, #1
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, r1
	bls %105
	b %93
105
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %108
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
106
	ldr r2, [sp, #0x2c]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %107
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
107
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo %106
108
	ldrb r1, [r4, #3]
	movs r0, #0
	cmp r1, #0
	bls %113
109
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq %110
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	beq %112
110
	ldr r1, [sp, #0x50]
	adds r6, #0x14
	ldrb r1, [r1, #3]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #3]
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [r4, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #4]
	ldr r3, [r1]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x18]
	ldrh r7, [r1, #8]
	add r3, sp, #0
	strh r7, [r3, #0x20]
	ldrh r2, [r1, #0xa]
	strh r2, [r3, #0x22]
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x10]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq %112
	ldr r1, [sp, #0x18]
	movs r2, #0
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq %114
	cmp r1, #2
	bne %111
	ldr r1, [sp, #0x1c]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
111
	adds r2, #3
	lsrs r1, r2, #2
	lsls r1, r1, #2
	adds r6, r6, r1
112
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi %109
113
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls %122
	b %116
114
	add r3, sp, #0
	ldrh r2, [r3, #0x20]
	ldrh r1, [r3, #0x22]
	ldr r3, [sp, #0x18]
	muls r2, r1
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	lsls r7, r1, #8
	cmp r3, r7
	bls %115
	movs r1, #2
115
	muls r2, r1
	b %111
116
	ldr r2, [sp, #0x38]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq %125
	ldr r1, [sp, #0x50]
	adds r0, r6, #0
	ldrb r1, [r1, #1]
	ldr r2, [sp, #0x50]
	add r7, sp, #0x18
	adds r1, #1
	strb r1, [r2, #1]
	mov r2, ip
	lsls r3, r2, #2
	adds r2, r3, r2
	ldr r1, [r4, #8]
	lsls r2, r2, #2
	adds r6, r1, r2
	ldm r6!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r2, [sp, #0x28]
	ldr r1, [r5]
	adds r0, #0x14
	adds r2, r2, r1
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x24]
	adds r1, r2, r1
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	adds r6, r1, #0
	lsls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	lsrs r3, r2, #0x1d
	adds r2, r1, #0
	lsls r2, r3
	muls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne %117
	lsrs r6, r6, #1
117
	ldr r3, [sp, #0x1c]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	beq %118
	add r3, sp, #0
	ldrh r3, [r3, #0x18]
	muls r3, r6
	adds r0, r3, r0
118
	add r3, sp, #0
	ldrh r3, [r3, #0x1a]
	lsls r3, r3, #2
	adds r6, r3, r0
	movs r0, #0x10
	cmp r2, #9
	beq %119
	movs r0, #1
119
	add r3, sp, #0
	ldrh r2, [r3, #0x1a]
	mov lr, r0
	movs r0, #0
	cmp r2, #0
	bls %125
120
	lsls r7, r0, #2
	ldr r1, [sp, #0x28]
	str r7, [sp, #0x3c]
	ldr r1, [r1, r7]
	cmp r1, #0
	blt %124
	movs r1, #0
	mov r2, lr
	cmp r2, #0
	bls %124
	movs r3, #1
121
	ldr r2, [sp, #0x28]
	ldr r7, [sp, #0x3c]
	ldr r2, [r2, r7]
	b %123
122
	b %126
	ALIGN
_0800D878 DCDU 0x00007C1F
_0800D87C DCDU REG_BG0CNT
_0800D880 DCDU REG_DMA3
_0800D884 DCDU 0x84000008
123
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	ldr r7, [sp, #0x34]
	adds r1, #1
	cmp r1, lr
	strb r3, [r7, r2]
	blo %121
124
	add r3, sp, #0
	ldrh r1, [r3, #0x1a]
	adds r0, #1
	cmp r1, r0
	bhi %120
125
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi %116
126
	ldrb r1, [r4, #2]
	movs r0, #0
	cmp r1, #0
	bls %129
127
	ldr r7, [sp, #0x34]
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq %128
	ldr r1, [sp, #0x50]
	ldrb r1, [r1, #2]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #2]
128
	ldrb r1, [r4, #2]
	adds r0, #1
	cmp r1, r0
	bhi %127
129
	adds r5, #0x20
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r4, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq %130
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
130
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq %131
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
131
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x38]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x34]
	bl sub_803D9A8
	adds r0, r4, #0
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800D5A8

