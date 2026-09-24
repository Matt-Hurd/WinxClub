	non_word_aligned_thumb_func_start m10__7DefaultFv
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x80
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	sub sp, #0xc
	cmp r0, #0x14
	bhs %144
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
144
	b %174
	ALIGN
145
	DCB 0x15, 0x00
146
	DCB 0x42, 0x02
147
	DCB 0x42, 0x02
148
	DCB 0x42, 0x02
149
	DCB 0x4F, 0x00
150
	DCB 0x42, 0x02
151
	DCB 0x42, 0x02
152
	DCB 0x42, 0x02
153
	DCB 0x42, 0x02
154
	DCB 0x29, 0x01
155
	DCB 0x42, 0x02
156
	DCB 0x42, 0x02
157
	DCB 0x42, 0x02
158
	DCB 0x42, 0x02
159
	DCB 0x42, 0x02
160
	DCB 0x7C, 0x01
161
	DCB 0x42, 0x02
162
	DCB 0xED, 0x01
163
	DCB 0xCD, 0x01
164
	DCB 0x06, 0x02
loc_801ec10
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %165
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %165
	bl sub_8000914
165
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %166
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
166
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq %167
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %174
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b %174
167
	movs r0, #4
	str r0, [r4, #0x1c]
	b %174
loc_801ec84
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x55
	bne %168
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %174
	movs r2, #0
	movs r1, #0x6e
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	b %174
168
	ldrh r0, [r5, #4]
	cmp r0, #4
	bne %177
	ldr r0, _0801EF78
	ldrb r0, [r0]
	cmp r0, #0
	beq %177
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %170
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %169
	bl sub_8000914
169
	movs r0, #0
	str r0, [r5, #0x78]
170
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %171
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
171
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %174
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq %172
	bl rand
	lsls r0, r0, #0x1c
	bne %172
	movs r0, #0x3b
	strh r0, [r5, #0x1e]
	movs r0, #0x3c
	strh r0, [r5, #0x1a]
	movs r0, #0x3d
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	b %173
172
	movs r0, #0x3e
	strh r0, [r5, #0x1e]
	movs r0, #0x3f
	strh r0, [r5, #0x1a]
	movs r0, #0x40
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
173
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	b %175
174
	b %186
175
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %176
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
176
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b %186
177
	b %178
178
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %180
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r1, [r5, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %179
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0801EF7C
	ldr r0, [r0]
	bl sub_8001432
179
	ldr r0, [r4]
	movs r1, #2
	bics r0, r1
	str r0, [r4]
	movs r0, #0
	str r0, [r5, #0x78]
180
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %181
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
181
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi %183
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq %183
	bl rand
	lsls r0, r0, #0x19
	bne %183
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %182
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
182
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
183
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bpl %186
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %186
	bl sub_803FC14
	ldr r0, [r4]
	movs r1, #2
	bics r0, r1
	str r0, [r4]
	b %186
loc_801ee38
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %184
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %184
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
184
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %185
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %185
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
185
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %186
	ldr r1, [r4, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq %187
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	ldr r0, [r4, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r4, #0x14]
186
	b %191
187
	movs r0, #4
	str r0, [r4, #0x1c]
	b %191
loc_801eede
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %188
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %188
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
188
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %189
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %189
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
189
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %191
	movs r0, #0x10
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	movs r1, #0
	orrs r0, r1
	str r0, [r4, #0xc]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r5, #0x30]
	bl sub_803F170
	b %191
	ALIGN
_0801EF74 DCDU gUnknown_030033E8
_0801EF78 DCDU gUnknown_03003D20
_0801EF7C DCDU gUnknown_03003EB8

loc_801ef80
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #1
	adds r1, r1, r5
	subs r1, #0x20
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	beq %190
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %190
	bl sub_8000914
190
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %191
	movs r0, #0x11
	str r0, [r4, #0x1c]
	b %191
loc_801efc0
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #1
	adds r1, r1, r5
	subs r1, #0x20
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	beq %191
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %191
	bl sub_8000914
191
	b %195
loc_801eff2
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %192
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %192
	bl sub_8000914
192
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %193
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
193
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq %194
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %195
	ldr r1, [r4, #0x14]
	lsls r1, r1, #0xd
	bpl %195
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b %195
194
	movs r0, #0x11
	str r0, [r4, #0x1c]
195
	ldr r0, [r4, #0x10]
	lsls r0, r0, #3
	lsrs r0, r0, #0x17
	beq %196
	ldr r0, _0801F2EC
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	adds r1, r5, #0
	str r0, [sp, #8]
	add r0, sp, #4
	adds r1, #0x58
	bl sub_80187A0
	ldr r1, [r4, #0x10]
	lsls r2, r1, #0xc
	lsrs r2, r2, #0x17
	cmp r2, r0
	bls %196
	ldr r7, _0801F2F0
	lsls r1, r1, #4
	lsrs r6, r1, #0x18
	ldr r5, [r7]
	ldr r1, [r4, #0x14]
	subs r0, r2, r0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	muls r1, r0
	adds r0, r2, #0
	bl __16__rt_udiv
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r6, #5
	adds r0, r0, r5
	str r1, [r0, #0x14]
	bl sub_80268BA
	ldr r0, [r7]
	ldr r1, [r4, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne %196
	ldr r0, [r7]
	ldr r1, [r4, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
196
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end m10__7DefaultFv

