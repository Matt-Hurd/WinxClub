	non_word_aligned_thumb_func_start sub_800C1CA
sub_800C1CA
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x78]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x18
	str r0, [r4, #0x78]
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq %48
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x48]
	b %49
48
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x10]
49
	ldr r1, [sp, #0x1c]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq %50
	adds r3, r1, #0
	b %51
50
	ldr r5, [r4, #0x18]
	ldr r3, [r0]
	lsls r6, r3, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r3, r5, r3
51
	str r3, [sp, #8]
	ldr r3, [sp, #0x1c]
	ldr r5, [r3, #0x14]
	adds r3, r2, #0
	cmp r1, #0
	bne %52
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x1c
52
	subs r0, r3, #1
	str r0, [sp, #4]
	adds r3, r0, #1
	beq %58
	movs r0, #3
	lsls r0, r0, #0xb
	adds r0, r4, r0
	movs r1, #0xc1
	lsls r1, r1, #5
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r2, #0x2f
	lsls r2, r2, #6
	adds r1, r4, r1
	adds r7, r4, r2
	subs r0, #0x10
	adds r2, r4, r0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
53
	ldr r0, [r5]
	ldr r1, _0800C458
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #3
	lsls r2, r2, #8
	bics r1, r2
	subs r2, #0xff
	subs r2, #1
	adds r1, r1, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xb
	ldrb r2, [r2, #0xf]
	lsrs r1, r1, #0x18
	cmp r1, r2
	bne %54
	ldrb r1, [r0, #7]
	ldr r2, [sp, #0xc]
	strb r1, [r2, #0xf]
54
	ldrb r2, [r0, #7]
	cmp r2, #0x80
	bhs %55
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	movs r3, #0x99
	ldrb r1, [r0, #8]
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2]
55
	ldrb r2, [r0, #8]
	cmp r2, #0x80
	bhs %56
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	ldr r3, _0800C45C
	ldrb r1, [r0, #7]
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2, #0xf]
56
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #0xe]
	strb r1, [r0, #7]
	ldr r0, [r5]
	ldr r2, [sp, #0xc]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	strb r0, [r2, #0xe]
	ldr r1, [sp, #0x10]
	movs r2, #1
	ldrb r0, [r1, #1]
	adds r0, #0xff
	strb r0, [r1, #1]
	ldr r0, [sp, #0x14]
	movs r1, #0xff
	str r2, [r0, #0x18]
	ldr r0, [r5]
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r5]
	ldr r1, [sp, #8]
	ldr r1, [r1, #4]
	lsls r3, r1, #0x14
	lsls r6, r1, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #4
	lsrs r6, r6, #0x18
	orrs r3, r6
	ldr r6, _0800C460
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #9
	ldrb r3, [r6, r3]
	beq %57
	movs r2, #0
57
	ldr r1, [sp, #0x1c]
	adds r3, r3, r2
	ldr r1, [r1, #0x44]
	cmp r1, #0
	beq %60
	lsrs r0, r0, #0x15
	lsrs r1, r0, #7
	lsls r1, r1, #7
	ldr r2, _0800C454
	adds r1, r1, r4
	adds r1, r1, r2
	movs r2, #8
	subs r6, r2, r3
	b %59
58
	b %66
59
	movs r2, #1
	lsls r2, r6
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r6, r3, #1
	lsrs r0, r6
	adds r0, r2, r0
	movs r2, #1
	str r2, [sp]
	adds r2, r0, #0
	adds r0, r4, #0
	bl sub_800BCE4
	b %64
60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r1, _0800C450
	adds r0, r0, r4
	adds r6, r0, r1
	ldr r0, [r6, #4]
	movs r2, #0x3f
	lsls r2, r2, #0xa
	adds r1, r0, #0
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	subs r0, r0, r2
	movs r2, #0x3f
	lsls r2, r2, #0xa
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	bne %64
	ldr r0, [r5]
	ldr r2, _0800C454
	lsrs r0, r0, #0x15
	lsrs r1, r0, #7
	lsls r1, r1, #7
	adds r1, r1, r4
	mov ip, r1
	add ip, r2
	movs r1, #8
	subs r2, r1, r3
	movs r1, #1
	lsls r1, r2
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r2, r3, #1
	lsrs r0, r2
	adds r0, r1, r0
	movs r2, #1
	str r2, [sp]
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, ip
	bl sub_800BCE4
	ldr r0, [r5]
	ldrb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne %61
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x18
	strb r0, [r7, #0xd]
61
	ldr r1, [r6, #4]
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	bhs %62
	lsls r0, r0, #3
	movs r2, #0x7d
	lsls r2, r2, #4
	adds r0, r0, r4
	adds r0, r0, r2
	movs r3, #0xff
	lsls r3, r3, #0x10
	ldr r2, [r0]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x10
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
62
	ldr r1, [r6, #4]
	lsls r0, r1, #8
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bhs %63
	lsls r0, r0, #3
	movs r2, #0x7d
	lsls r2, r2, #4
	adds r0, r0, r4
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r1, r1, #0x18
	lsls r2, r2, #8
	lsrs r2, r2, #8
	lsls r1, r1, #0x18
	orrs r1, r2
	str r1, [r0]
63
	ldrb r0, [r7, #0xc]
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #8
	lsls r0, r0, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldr r0, [r5]
	strb r0, [r7, #0xc]
	ldrb r0, [r7, #0xe]
	adds r0, #0xff
	strb r0, [r7, #0xe]
64
	ldr r1, _0800C464
	ldr r0, [r5]
	orrs r0, r1
	movs r1, #0xff
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1f
	bmi %65
	ldr r1, [sp, #8]
	ldr r2, _0800C44C
	ldr r1, [r1, #4]
	lsrs r1, r1, #0x14
	cmp r1, r2
	beq %65
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	cmp r0, #0x1f
	beq %65
	lsls r0, r0, #1
	adds r1, r0, r4
	movs r0, #0x1d
	lsls r0, r0, #5
	adds r0, r1, r0
	ldrh r1, [r0]
	cmp r1, r2
	beq %65
	adds r0, r4, #0
	bl sub_800C134
	movs r1, #0x1f
	ldr r0, [r5]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5]
65
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r1, #0x14
	subs r0, #1
	adds r5, #8
	adds r3, r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	beq %66
	b %53
66
	ldr r1, [sp, #0x1c]
	ldr r0, [r1]
	b %67
	ALIGN
_0800C44C DCDU 0x00000FFF
_0800C450 DCDU 0x000007CC
_0800C454 DCDU 0x000003C2
_0800C458 DCDU 0x00001318
_0800C45C DCDU 0x00001310
_0800C460 DCDU gUnknown_0804AB68
_0800C464 DCDU 0xFFE00000
67
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

