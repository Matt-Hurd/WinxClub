	non_word_aligned_thumb_func_start sub_8003CA6
sub_8003CA6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldr r0, [r6, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x28]
	ldr r0, _08003E94
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r7, r2, #0
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x48]
	adds r0, r0, r1
	ldr r5, [r0, #0xc]
	movs r0, #0
	ldr r1, [r7]
	mvns r0, r0
	adds r3, r0, #0
	cmp r1, #0
	mov lr, r1
	bgt %119
	ldr r1, [r4, #0x38]
	movs r3, #0x1f
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne %119
	movs r3, #0x1e
119
	ldr r1, [r7, #4]
	adds r2, r0, #0
	cmp r1, #0
	mov ip, r3
	bgt %120
	ldr r3, [r4, #0x3c]
	movs r2, #0x15
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne %120
	movs r2, #0x14
120
	str r2, [sp, #0xc]
	ldr r3, [r4, #0x38]
	movs r2, #0
	lsls r7, r3, #0xd
	lsrs r7, r7, #0x1d
	beq %121
	movs r2, #1
	mov r7, lr
	cmp r7, #0
	ble %121
	movs r2, #0
121
	str r2, [sp, #8]
	ldr r2, [r4, #0x3c]
	lsls r7, r2, #0xd
	lsrs r7, r7, #0x1d
	bne %122
	cmp r1, #0
	bgt %123
	movs r0, #0
	b %123
122
	cmp r1, #0
	bgt %123
	movs r0, #1
123
	asrs r1, r3, #0x13
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x44]
	ldr r0, [r4, #0x50]
	add r1, ip
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x38]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x3c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x34]
	bl __16__rt_sdiv
	cmp r7, #0
	bge %124
	ldr r0, [sp, #0x38]
	adds r7, r0, r7
124
	cmp r1, #0
	bge %125
	ldr r0, [sp, #0x34]
	adds r1, r0, r1
125
	ldr r0, [sp, #0x40]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	str r2, [sp, #0x30]
	adds r0, r0, r2
	ldr r2, [sp, #0x38]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	adds r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x28]
126
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %129
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r7, r1, r0
	adds r2, r1, #0
	ldr r1, [r7]
	ldr r0, [r4, #0x30]
	mov ip, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r2
	ldr r2, _08003E8C
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08003E90
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %128
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi %127
	ldr r0, [sp, #0x28]
127
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
128
	ldr r0, _08003E94
	adds r2, r4, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8002230
	b %131
129
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, _08003E8C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r5
	ldr r2, [r1]
	movs r7, #1
	lsls r7, r7, #0xb
	ands r3, r2
	subs r2, r2, r7
	ldr r7, _08003E90
	ands r2, r7
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0xb
	lsrs r1, r1, #0x16
	bne %131
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r0, [r5, r0]
	lsls r2, r0, #0xa
	bmi %130
	ldr r1, [sp, #0x28]
130
	lsls r2, r0, #0x15
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r0
	lsls r0, r2, #2
	ldr r2, [r6, #0x20]
	adds r0, r0, r2
	ldr r2, [r1]
	str r2, [r0]
	str r0, [r1]
131
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x50]
	bne %133
	b %132
	ALIGN
_08003E8C DCDU 0xFFE007FF
_08003E90 DCDU 0x001FF800
_08003E94 DCDU gUnknown_03003EA4
132
	ldrh r1, [r0, #0xe]
	str r1, [sp, #4]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x30]
	adds r1, r0, r1
	str r1, [sp, #0x10]
	b %134
133
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x10]
134
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x15
	bge %135
	b %126
135
	ldr r0, [r4, #0x38]
	ldr r2, [sp, #8]
	asrs r0, r0, #0x13
	adds r1, r0, r2
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #0xc]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x18]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x1c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	bl __16__rt_sdiv
	cmp r7, #0
	bge %136
	ldr r0, [sp, #0x18]
	adds r7, r0, r7
136
	cmp r1, #0
	bge %137
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
137
	ldr r0, [sp, #0x20]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	muls r2, r1
	lsls r1, r2, #1
	adds r1, r0, r1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	subs r7, r0, r7
	movs r0, #0
	str r0, [sp]
138
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %141
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004230
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %140
	mov r1, lr
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi %139
	ldr r0, [sp, #0x28]
139
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
140
	ldr r0, _08004238
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b %143
141
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %143
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi %142
	ldr r0, [sp, #0x28]
142
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
143
	subs r7, #1
	bne %144
	ldr r0, [r4, #0x50]
	ldrh r7, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r7, #1
	subs r0, #2
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b %145
144
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
145
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x1e
	bge %146
	b %138
146
	ldr r0, [r6, #0x28]
	movs r1, #2
	bics r0, r1
	str r0, [r6, #0x28]
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

