	non_word_aligned_thumb_func_start sub_800CAE2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800CCF8
	movs r1, #0xc1
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	sub sp, #0x1fc
	sub sp, #0x18
	cmp r0, #1
	bls %126
	ldr r0, [r4, #0x78]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x78]
	ldr r0, _0800CCFC
	movs r1, #0
	adds r2, r4, r0
	str r2, [sp, #0x210]
	ldrb r0, [r2, #0xf]
	movs r2, #0
	add r7, sp, #0x200
	lsls r3, r0, #2
	adds r0, r3, r0
	movs r3, #0
	stm r7!, {r1, r2, r3}
	lsls r0, r0, #1
	ldr r6, _0800CCEC
	adds r0, r0, r4
	adds r0, r0, r6
	stm r7!, {r3}
	movs r5, #0
	subs r7, #0x10
123
	ldrb r2, [r0, #6]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	adds r2, r2, r7
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r0, #6]
	cmp r2, r5
	bhs %124
	movs r1, #1
124
	ldrb r0, [r0, #7]
	cmp r0, #0x80
	bhs %125
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r2, #0
	adds r0, r0, r6
	b %123
125
	cmp r1, #0
	bne %127
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
126
	add sp, #0x1fc
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
127
	movs r0, #0
	movs r2, #0
	adds r1, r7, #0
128
	ldrb r3, [r1, r0]
	strb r2, [r1, r0]
	adds r0, #1
	adds r2, r2, r3
	cmp r0, #0x10
	blt %128
	ldr r2, [sp, #0x210]
	adds r7, r6, #0
	ldrb r0, [r2, #0xf]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r0, r6
	adds r6, r4, r6
129
	subs r0, r5, r6
	bl sub_8040444
	ldrb r0, [r5, #6]
	adds r2, r1, #0
	add r1, sp, #0x200
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, r1, #1
	strb r3, [r0]
	add r0, sp, #0x100
	strb r2, [r0, r1]
	ldrb r1, [r5, #7]
	cmp r1, #0x80
	bhs %130
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r0, r7
	b %129
130
	add r5, sp, #0x200
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	movs r1, #0xc1
	lsls r1, r1, #5
	adds r1, r4, r1
	stm r5!, {r3}
	ldrb r3, [r1, #1]
	subs r5, #0x10
	cmp r3, #0
	ble %132
	ldr r7, _0800CD00
131
	ldrb r6, [r0, r2]
	adds r2, #1
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, r3, r7
	ldrb r3, [r3, #0xe]
	lsrs r3, r3, #4
	adds r3, r3, r5
	ldrb r6, [r3]
	adds r6, #1
	strb r6, [r3]
	ldrb r3, [r1, #1]
	cmp r3, r2
	bgt %131
132
	movs r2, #0
	movs r3, #0
133
	ldrb r6, [r5, r2]
	strb r3, [r5, r2]
	adds r2, #1
	adds r3, r3, r6
	cmp r2, #0x10
	blt %133
	ldrb r3, [r1, #1]
	movs r2, #0
	cmp r3, #0
	ble %135
134
	ldrb r5, [r0, r2]
	ldr r6, _0800CD00
	adds r2, #1
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, r3, r6
	ldrb r3, [r3, #0xe]
	add r6, sp, #0x200
	lsrs r3, r3, #4
	adds r3, r3, r6
	ldrb r6, [r3]
	adds r7, r6, #1
	strb r7, [r3]
	mov r3, sp
	strb r5, [r3, r6]
	ldrb r3, [r1, #1]
	cmp r3, r2
	bgt %134
135
	add r3, sp, #0
	ldrb r0, [r3]
	ldr r2, [sp, #0x210]
	strb r0, [r2, #0xf]
	ldrb r2, [r3]
	movs r0, #0xff
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r0, [r2]
	add r3, sp, #0
	ldrb r2, [r3]
	ldrb r0, [r3, #1]
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	ldr r3, _0800CD00
	adds r2, r2, r4
	adds r2, r2, r3
	strb r0, [r2, #0xf]
	ldrb r2, [r1, #1]
	movs r0, #1
	subs r2, #1
	cmp r2, #1
	ble %137
	mov r6, sp
136
	movs r3, #0
	ldrb r7, [r6, r0]
	mvns r3, r3
	adds r2, r6, r0
	ldrb r5, [r3, r2]
	lsls r3, r7, #2
	adds r3, r3, r7
	lsls r3, r3, #1
	movs r7, #0x99
	lsls r7, r7, #5
	adds r3, r3, r4
	adds r3, r3, r7
	strb r5, [r3]
	ldrb r5, [r6, r0]
	ldrb r2, [r2, #1]
	adds r0, #1
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #1
	adds r5, r7, #0
	subs r5, #0x10
	adds r3, r3, r4
	adds r3, r3, r5
	strb r2, [r3, #0xf]
	ldrb r2, [r1, #1]
	subs r2, #1
	cmp r2, r0
	bgt %136
137
	mov r6, sp
	ldrb r2, [r6, r0]
	mov r1, sp
	adds r1, r1, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	subs r1, #0x10
	ldrb r1, [r1, #0xf]
	lsls r2, r2, #1
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2]
	ldrb r0, [r6, r0]
	movs r1, #0xff
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800CD00
	adds r0, r0, r4
	adds r0, r0, r3
	strb r1, [r0, #0xf]
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	b %126
	thumb_func_end sub_800CAE2
