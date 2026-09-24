	non_word_aligned_thumb_func_start sub_802913E
sub_802913E
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x80
	mov lr, r2
	ldr r2, [r1, #0x30]
	add r6, sp, #0x30
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	ldr r3, [r2]
	ldm r6!, {r4, r5, r6}
	lsrs r7, r3, #1
	mov r3, ip
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x1f
	lsls r7, r7, #1
	orrs r3, r7
	str r3, [r2]
	movs r7, #0xe
	bics r3, r7
	ldr r2, [r1, #0x30]
	mov r7, lr
	lsls r7, r7, #0x1d
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r7, r7, #0x1c
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0xff
	lsls r7, r7, #4
	bics r3, r7
	ldr r7, [sp, #0xc]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x14
	lsls r2, r2, #3
	adds r2, r2, r0
	orrs r3, r7
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, _08029364
	lsls r2, r2, #0xd
	ands r3, r7
	ldr r7, [sp, #0x24]
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	lsls r7, r7, #0x16
	lsrs r7, r7, #0xa
	adds r2, r2, r0
	adds r2, #0xb8
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x3f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	ldr r3, [r2]
	lsls r7, r7, #8
	bics r3, r7
	ldr r7, [sp, #0x28]
	lsls r4, r4, #0x1b
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, [sp, #0x2c]
	lsrs r3, r3, #8
	lsls r2, r2, #0xd
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	lsrs r2, r2, #0x1d
	lsls r3, r3, #8
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0xe
	bics r3, r7
	lsls r2, r2, #3
	lsrs r4, r4, #0xd
	orrs r3, r4
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	lsls r4, r7, #5
	bics r3, r4
	lsls r4, r5, #0x1b
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r4, r4, #8
	orrs r3, r4
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r3, #0x7f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r0, r2, r0
	adds r0, #0xb8
	ldr r2, [r0]
	lsls r3, r3, #0x17
	bics r2, r3
	lsls r3, r6, #0x19
	lsrs r3, r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x30]
	movs r2, #7
	lsls r2, r2, #0x10
	movs r4, #1
	adds r3, r0, #0
	lsls r4, r4, #0x10
	adds r0, r0, r4
	ands r0, r2
	bics r3, r2
	orrs r0, r3
	str r0, [r1, #0x30]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

