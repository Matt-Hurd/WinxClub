	thumb_func_start sub_8004038
sub_8004038
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0xb
	adds r5, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x24]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r7, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r7, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x20]
	ldr r0, _08004238
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r6, [r0, #0xc]
	ldr r1, [r5]
	movs r0, #0
	cmp r1, #0
	bgt %147
	movs r0, #0x1e
147
	ldr r1, [r4, #0x44]
	asrs r3, r1, #0x13
	str r3, [sp, #0x1c]
	ldr r2, [r4, #0x3c]
	asrs r5, r2, #0x13
	cmp r3, r5
	bne %148
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x1d
	bne %150
	lsls r3, r2, #0xd
	lsrs r3, r3, #0x1d
	beq %150
148
	movs r2, #0x15
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne %149
	movs r2, #0x14
149
	str r2, [sp, #8]
	b %152
150
	movs r1, #0x15
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %151
	movs r1, #0x14
151
	str r1, [sp, #8]
152
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	ldrh r0, [r7, #0xc]
	str r0, [sp, #0x18]
	bl __16__rt_sdiv
	ldrh r0, [r7, #0xe]
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	adds r7, r0, #0
	bl __16__rt_sdiv
	cmp r5, #0
	bge %153
	ldr r0, [sp, #0x18]
	adds r5, r0, r5
153
	cmp r1, #0
	bge %154
	adds r1, r7, r1
154
	lsls r2, r5, #1
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	subs r7, r7, r1
	muls r2, r1
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	cmp r1, #0
	ble %159
	ldr r0, [sp, #0x28]
	adds r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	adds r0, #4
	str r0, [sp, #0xc]
155
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %158
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
	adds r0, r0, r6
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
	bne %157
	mov r1, lr
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi %156
	ldr r0, [sp, #0xc]
156
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
157
	ldr r0, _08004238
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b %162
158
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
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
	bne %162
	mov r1, ip
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi %161
	b %160
159
	b %165
160
	ldr r0, [sp, #0xc]
161
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
162
	subs r7, #1
	ldr r0, [r4, #0x50]
	bne %163
	ldrh r7, [r0, #0xe]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x14]
	adds r5, r0, r1
	b %164
163
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #1
	adds r5, r0, r5
164
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	bge %165
	b %155
165
	ldr r2, [sp, #0x24]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
