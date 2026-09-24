	non_word_aligned_thumb_func_start sub_8020B6E
sub_8020B6E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08020DAC
	ldr r6, _08020DB8
	ldrb r0, [r0]
	cmp r0, #0
	beq %141
	ldr r0, [r6]
	ldr r0, [r0, #8]
	bl sub_80406C4
	cmp r0, #0
	bne %141
	ldr r0, _08020DB0
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
141
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #0xe
	bhs %142
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
142
	b %162
	ALIGN
143
	DCB 0x42, 0x03
144
	DCB 0x0F, 0x00
145
	DCB 0x53, 0x00
146
	DCB 0x0F, 0x00
147
	DCB 0x42, 0x03
148
	DCB 0x90, 0x01
149
	DCB 0x8D, 0x00
150
	DCB 0x42, 0x03
151
	DCB 0x42, 0x03
152
	DCB 0x42, 0x03
153
	DCB 0xBA, 0x00
154
	DCB 0x09, 0x01
155
	DCB 0x42, 0x03
156
	DCB 0x3E, 0x01
loc_8020bc8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %157
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	adds r0, r4, #0
	bl sub_801F906
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %157
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
157
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %158
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
158
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %159
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %162
	adds r0, r4, #0
	bl sub_801F906
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %162
159
	movs r0, #4
	str r0, [r5, #0x1c]
	b %162
loc_8020c50
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %160
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %160
	bl sub_8000914
160
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %161
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
161
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %163
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %162
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
162
	b %169
163
	movs r0, #4
	str r0, [r5, #0x1c]
	b %169
loc_8020cc4
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %164
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
164
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %165
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
165
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq %169
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	b %169
loc_8020d1e
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1c
	cmp r1, #2
	beq %166
	lsrs r0, r0, #0x1c
	bne %170
166
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x71
	beq %167
	movs r2, #0
	movs r1, #0x71
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %167
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
167
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq %168
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
168
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %169
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %169
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
169
	b %177
170
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x41
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	movs r0, #0x98
	strb r1, [r0, r4]
	str r1, [r4, #0x78]
	b %177
	ALIGN
_08020DAC DCDU gUnknown_03003D20
_08020DB0 DCDU gPlayerEntity
_08020DB4 DCDU gUnknown_03003EB8
_08020DB8 DCDU gUnknown_03003E98

loc_8020dbc
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x47
	beq %171
	movs r2, #0
	movs r1, #0x47
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %171
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
171
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq %172
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
172
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %177
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %177
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %177
loc_8020e26
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %173
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %173
	bl sub_8000914
173
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %174
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
174
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %177
	ldr r0, _0802123C
	ldrb r0, [r0]
	cmp r0, #0
	beq %175
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %176
175
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
176
	movs r0, #4
	str r0, [r5, #0x1c]
177
	b %191
loc_8020eca
	movs r0, #0xff
	adds r0, #0x3d
	ldr r0, [r0, r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bhs %178
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
178
	b %191
179
	DCB 0x09, 0x00
180
	DCB 0x4E, 0x00
181
	DCB 0xB2, 0x00
182
	DCB 0xA5, 0x01
183
	DCB 0xE2, 0x00
184
	DCB 0x3D, 0x01
185
	DCB 0x78, 0x01
186
	DCB 0xA5, 0x01
187
	DCB 0xA5, 0x01
loc_8020ef6
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #1
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0xa
	bmi %189
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %188
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
188
	ldr r0, _08021240
	ldr r1, [r6]
	ldr r0, [r0]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	adds r1, #0x55
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	movs r1, #0xff
	ldr r0, [r5, #0x3c]
	adds r1, #0xf1
	bics r0, r1
	ldr r1, [r4, #0x70]
	adds r0, #0x50
	str r1, [r4, #0x74]
	movs r1, #0
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #0x3c]
189
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	cmp r0, #1
	bne %191
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #0x74]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r1, [r4, #0x70]
	movs r1, #1
	adds r0, #1
	lsls r1, r1, #0x15
	bics r0, r1
	str r0, [r5, #0x3c]
	b %191
loc_8020f80
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	cmp r0, #0xa
	bne %190
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #2
	str r1, [r0, #0x3c]
	movs r0, #0
	str r0, [r4, #0x70]
	b %191
190
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	adds r6, r4, #0
	adds r6, #0xff
	adds r6, #1
	ldr r1, [r6, #0x3c]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	cmp r0, r1
	bls %191
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne %191
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne %191
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfc
	bne %192
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #6
	lsls r1, r1, #9
	bics r0, r1
	str r0, [r6, #0x3c]
	ldr r0, [r4, #0x5c]
	movs r1, #0x15
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %191
	movs r1, #0
	bl sub_80401E4
191
	b %193
192
	cmp r0, #0xfa
	bne %193
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #6
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r6, #0x3c]
	ldr r0, [r4, #0x5c]
	movs r1, #0xd
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %193
	movs r1, #0
	bl sub_80401E4
	b %193
loc_8021048
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %193
	ldr r0, [r4, #0x30]
	movs r6, #4
	ldr r1, [r0]
	bics r1, r6
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08021240
	ldr r1, [r0]
	movs r0, #0x15
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	str r1, [r0, #0x3c]
	str r6, [r5, #0x1c]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	movs r0, #0
	str r0, [r4, #0x78]
193
	b %199
loc_80210a8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5b
	beq %196
	movs r2, #0
	movs r1, #0x5b
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #0x14
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %194
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
194
	ldr r0, _08021240
	ldr r1, [r0]
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08021244
	cmp r0, r1
	beq %195
	ldr r0, [r4, #0x30]
	bl sub_800065C
195
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %196
	movs r1, #1
	bl sub_80401E4
196
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %199
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	lsls r2, r1, #0xf
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x5c]
	subs r0, r0, r2
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r2, [r0, #0x3c]
	lsrs r2, r2, #4
	lsls r2, r2, #4
	str r2, [r0, #0x3c]
	str r1, [r5, #0x1c]
	b %199
loc_802115e
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5a
	beq %198
	movs r2, #0
	movs r1, #0x5a
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %197
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
197
	ldr r0, _08021240
	ldr r1, [r0]
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x74]
	movs r0, #0
	str r0, [r4, #0x70]
198
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %199
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #6
	lsls r2, r2, #9
	orrs r1, r2
	str r1, [r0, #0x3c]
199
	b %202
loc_80211d4
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x56
	beq %201
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5a
	bne %201
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r0, #0xff
	adds r0, #0x3d
	ldr r0, [r0, r4]
	lsls r0, r0, #0x16
	bpl %200
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #0x14
	adds r0, r0, r1
	str r0, [r4, #0x5c]
200
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %201
	movs r1, #0
	bl sub_80401E4
201
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %202
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
202
	adds r0, r4, #0
	bl m10__7DefaultFv
	pop {r4, r5, r6}
	pop {r3}
	bx r3
