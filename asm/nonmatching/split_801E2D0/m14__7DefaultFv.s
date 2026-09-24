	thumb_func_start m14__7DefaultFv
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x80
	ldr r2, [r4, #4]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xf5
	beq %198
	bgt %202
	movs r5, #1
	lsls r5, r5, #9
	lsrs r6, r5, #1
	movs r7, #0x80
	cmp r1, #0xf0
	beq %213
	bgt %201
	cmp r1, #0xed
	beq %198
	bgt %199
	cmp r1, #0
	bne %198
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl %197
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs %197
	movs r1, #0x82
	bl sub_80401C0
197
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bpl %198
	movs r1, #0x20
	bics r0, r1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #5
	bics r0, r1
	str r0, [r4, #0x10]
198
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
199
	cmp r1, #0xee
	beq %216
	cmp r1, #0xef
	bne %198
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x18
	cmp r1, #0xee
	bne %218
	ldr r0, [r4, #0x10]
	movs r1, #1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4, #0x10]
200
	b %198
201
	cmp r1, #0xf1
	bne %198
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x18
	cmp r1, #0xf0
	bne %215
	ldr r0, [r4, #0x10]
	movs r1, #1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4, #0x10]
	b %198
202
	adds r2, r1, #0
	subs r2, #0xf6
	cmp r2, #0xa
	bhs %198
	add r3, pc, #0x8
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
203
	DCB 0x05
204
	DCB 0x05
205
	DCB 0x05
206
	DCB 0x05
207
	DCB 0x05
208
	DCB 0x05
209
	DCB 0x05
210
	DCB 0x05
211
	DCB 0x06
212
	DCB 0x11
loc_801f1a6
	b %198
loc_801f1a8
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl %198
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs %198
	movs r1, #0x82
	bl sub_80401C0
	b %198
loc_801f1be
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl %198
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bls %198
	movs r1, #0x42
	bl sub_80401C0
	b %198
213
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bmi %214
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xf0
	beq %214
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r7
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0x10]
	b %198
214
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xf1
	bne %198
	movs r1, #1
	lsls r1, r1, #0xa
	orrs r0, r7
	orrs r0, r1
	str r0, [r4, #0x10]
	b %198
215
	lsrs r0, r0, #0x18
	bne %198
	ldr r0, [r4, #0x10]
	movs r1, #1
	lsls r1, r1, #0xa
	orrs r0, r7
	orrs r0, r1
	str r0, [r4, #0x10]
	b %198
216
	b %217
217
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bmi %219
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xee
	beq %219
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b %198
218
	b %220
219
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xef
	bne %198
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b %198
220
	lsrs r0, r0, #0x18
	bne %200
	ldr r0, [r4, #0x10]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b %198
	thumb_func_end m14__7DefaultFv

