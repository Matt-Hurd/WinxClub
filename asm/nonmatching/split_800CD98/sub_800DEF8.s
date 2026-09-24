	thumb_func_start sub_800DEF8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	movs r2, #0x27
	lsls r2, r2, #6
	adds r1, r0, r2
	sub sp, #0x10
	str r1, [sp, #0xc]
	adds r7, r0, #0
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0xc]
	movs r6, #0
	str r0, [r1, #0x3c]
	adds r0, r2, #0
	subs r0, #0xff
	subs r0, #0x81
	adds r4, r7, r0
	ldr r1, [r7, #8]
	movs r0, #0
	cmp r1, #0
	beq %170
	ldrb r0, [r1]
170
	cmp r0, #0
	bls %177
171
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	mov ip, r0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne %173
	ldr r0, [r4, #0x50]
	ldr r2, [r0]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq %172
	cmp r2, #2
	bne %173
172
	ldr r2, [sp, #0x14]
	ldr r2, [r2]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x10
	ldrsh r5, [r0, r3]
	asrs r2, r2, #8
	muls r2, r5
	add r2, ip
	str r2, [r4, #0x38]
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #4]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	asrs r2, r2, #8
	muls r2, r0
	adds r0, r2, r1
	str r0, [r4, #0x3c]
	b %174
173
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne %185
	lsls r0, r6, #2
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq %174
	adds r1, r4, #0
	adds r1, #0x38
	ldr r2, [r0, #0x2c]
	adds r0, r6, #0
	bl __call_via_r3
174
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, #3
	bne %179
	ldr r1, [sp, #4]
	cmp r1, #7
	ble %175
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #4]
	b %176
175
	ldr r1, [sp, #4]
	adds r3, r1, #7
	bge %176
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #4]
176
	ldr r0, [sp, #8]
	cmp r0, #7
	ble %178
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #8]
	b %179
177
	b %199
178
	ldr r0, [sp, #8]
	adds r3, r0, #7
	bge %179
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #8]
179
	ldr r1, [sp, #4]
	movs r5, #0
	movs r0, #0
	cmp r1, #0
	beq %184
	ldr r1, [r4, #0x40]
	lsls r2, r1, #0xd
	mov ip, r2
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x38]
	bne %180
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq %181
	movs r5, #1
	b %181
180
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %181
	movs r0, #1
181
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x38]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq %183
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq %182
	movs r0, #1
182
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq %183
	movs r5, #1
183
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
184
	ldr r1, [sp, #8]
	cmp r1, #0
	beq %191
	ldr r1, [r4, #0x44]
	lsls r2, r1, #0xd
	mov ip, r2
	b %186
185
	b %197
186
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x3c]
	bne %187
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq %188
	movs r2, #2
	orrs r5, r2
	b %188
187
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %188
	movs r2, #2
	orrs r0, r2
188
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x3c]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq %190
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq %189
	movs r2, #2
	orrs r0, r2
189
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq %190
	movs r2, #2
	orrs r5, r2
190
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
191
	cmp r0, #0
	beq %192
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq %192
	ldr r0, _0800E174
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl __call_via_r3
192
	cmp r5, #0
	beq %193
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq %193
	ldr r0, _0800E174
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl __call_via_r3
193
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	ldr r2, [r4, #0x38]
	lsls r0, r0, #0x13
	lsls r1, r1, #0x13
	cmp r2, r0
	ble %194
	subs r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	subs r0, r2, r0
	str r0, [r4, #0x40]
	b %195
194
	NEGS r3, r0
	cmp r2, r3
	bge %195
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [r4, #0x40]
195
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble %196
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	b %197
196
	NEGS r2, r1
	cmp r0, r2
	bge %197
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
197
	ldr r1, [r7, #8]
	adds r6, #1
	adds r4, #0x58
	movs r0, #0
	cmp r1, #0
	beq %198
	ldrb r0, [r1]
198
	cmp r0, r6
	bls %199
	b %171
199
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x3c]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800DEF8
