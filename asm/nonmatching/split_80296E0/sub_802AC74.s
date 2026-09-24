	thumb_func_start sub_802AC74
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	NEGS r4, r2
	subs r3, r1, r3
	cmp r2, #0
	blt %133
	adds r4, r2, #0
133
	NEGS r5, r3
	cmp r3, #0
	blt %134
	adds r5, r3, #0
134
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble %137
	cmp r2, #0
	ble %136
	str r1, [r0, #0x7c]
135
	pop {r4, r5, r6, r7}
	bx lr
136
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b %135
137
	cmp r5, r4
	ble %139
	cmp r3, #0
	ble %138
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b %135
138
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b %135
139
	cmp r2, #0
	ble %140
	str r1, [r0, #0x7c]
	b %135
140
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b %135
	thumb_func_end sub_802AC74

