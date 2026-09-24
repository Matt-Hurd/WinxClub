	non_word_aligned_thumb_func_start sub_8034A86
	push {r4, r5, r6, r7}
	movs r3, #0
	movs r5, #0
	mov ip, r0
18
	ldr r1, _08034D04
	mov r0, ip
	adds r0, r0, r3
	ldr r1, [r1]
	adds r0, #0xe0
	ldrb r0, [r0]
	ldr r1, [r1, #0x10]
	adds r3, #1
	ldr r1, [r1, #0x14]
	lsls r0, r0, #2
	ldr r4, [r1, r0]
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	adds r1, r2, #0
	subs r7, r5, r0
	ldr r0, [r2, #0x30]
	adds r1, #0x34
	subs r6, r5, r0
	ldr r0, [r2, #0x34]
	adds r0, r0, r7
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	adds r0, r0, r6
	str r0, [r2, #0x38]
	ldr r0, [r1, #8]
	adds r0, r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #0xc]
	adds r0, r0, r6
	str r0, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	movs r0, #0xff
	adds r0, #1
	orrs r1, r0
	str r1, [r2]
	ldr r2, [r4, #0x30]
	ldr r4, [r2, #0x2c]
	ldr r7, [r2, #0x34]
	subs r6, r5, r4
	ldr r4, [r2, #0x30]
	adds r7, r7, r6
	str r7, [r2, #0x34]
	ldr r7, [r2, #0x38]
	subs r4, r5, r4
	adds r7, r7, r4
	adds r1, r2, #0
	adds r1, #0x34
	str r7, [r2, #0x38]
	ldr r7, [r1, #8]
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1, #0xc]
	adds r4, r6, r4
	str r4, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	blo %18
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_8034A86

