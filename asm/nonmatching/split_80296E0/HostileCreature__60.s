	non_word_aligned_thumb_func_start HostileCreature__60
HostileCreature__60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #0x7c]
	movs r7, #0
	movs r6, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq %142
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bne %142
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x1e
	beq %141
	adds r0, r4, #0
	ldr r1, _0802AF70
	adds r0, #0x58
	cmp r2, #1
	ldr r1, [r1]
	beq %150
	cmp r2, #2
	bne %142
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x3c
	bhs %151
	movs r6, #1
	b %159
141
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble %143
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r5, #0x34]
142
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
143
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	ble %144
	movs r0, #0
	b %145
144
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
145
	ldr r1, [r5, #0x34]
	lsls r2, r1, #0x12
	lsrs r2, r2, #0x1c
	adds r0, r2, r0
	bpl %146
	adds r0, #0xc
	b %147
146
	cmp r0, #0xc
	blt %147
	subs r0, #0xc
147
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r3
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	beq %142
	lsrs r2, r1, #0x18
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne %148
	ldr r0, _0802AF80
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
148
	ldr r0, _0802AF84
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
149
	b %142
150
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x32
	bls %152
	movs r0, #1
	str r0, [sp, #8]
	b %155
151
	b %158
152
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble %153
	movs r7, #1
	b %155
153
	cmp r0, #0x75
	ble %154
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	subs r1, #0xff
	subs r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x34]
	b %155
154
	movs r0, #1
	str r0, [sp, #8]
155
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %159
	ldr r0, _0802AF70
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq %149
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne %156
	ldr r0, _0802AF80
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
156
	ldr r0, _0802AF84
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
157
	b %142
158
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble %160
	movs r7, #1
159
	b %162
160
	cmp r0, #0x75
	ble %161
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r5, #0x34]
	b %162
161
	movs r6, #1
162
	cmp r6, #0
	beq %167
	ldr r1, _0802AF70
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #4
	lsrs r0, r0, #0x1c
	adds r0, #2
	bpl %163
	adds r0, #4
	b %164
163
	cmp r0, #4
	blt %164
	subs r0, #4
164
	movs r2, #0xf
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	str r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq %157
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne %165
	ldr r0, _0802AF80
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
165
	ldr r0, _0802AF84
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
166
	b %142
	ALIGN
_0802AF70 DCDU gUnknown_03003458
_0802AF74 DCDU gUnknown_0300346C
_0802AF78 DCDU gUnknown_03003478
_0802AF7C DCDU gUnknown_0300327E
_0802AF80 DCDU gUnknown_03003454
_0802AF84 DCDU gUnknown_03003E88
167
	cmp r7, #0
	beq %157
	ldr r1, _0802B268
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq %166
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne %168
	ldr r0, _0802B26C
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
168
	ldr r0, _0802B270
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x21
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802B26C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b %142

