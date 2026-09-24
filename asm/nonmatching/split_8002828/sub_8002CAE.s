	non_word_aligned_thumb_func_start sub_8002CAE
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x80
	str r0, [r4, #0x28]
	ldr r0, _080030A0
	adds r5, r1, #0
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r2, [r5, #0x48]
	movs r0, #6
	lsls r3, r2, #0x15
	bmi %34
	movs r0, #5
34
	str r0, [sp, #0x2c]
	lsls r0, r2, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r7, [r0, #0xc]
	ldr r3, [sp, #0x88]
	movs r0, #0x1e
	ldr r1, [r3]
	cmp r1, #0
	bgt %35
	movs r0, #0
35
	ldr r3, [sp, #0x88]
	movs r2, #0x14
	ldr r3, [r3, #4]
	cmp r3, #0
	bgt %36
	movs r2, #0
36
	str r2, [sp, #0x28]
	movs r2, #1
	cmp r1, #0
	ble %37
	movs r2, #0
37
	str r2, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	str r0, [sp, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x78]
	str r0, [sp, #0x74]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x70]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x74]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x6c]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge %38
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
38
	cmp r1, #0
	bge %39
	ldr r0, [sp, #0x6c]
	adds r1, r0, r1
39
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x68]
	adds r0, r0, r2
	ldr r2, [sp, #0x70]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x6c]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	adds r0, r6, #4
	cmp r3, #5
	bne %40
	movs r1, #0
	b %41
40
	movs r1, #1
41
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x2c]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq %42
	adds r0, r1, #0
42
	ldr r3, [sp, #0x2c]
	str r0, [sp, #0x60]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x58]
	str r2, [sp, #0x5c]
43
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %46
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x54]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x54]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %44
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %48
44
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne %45
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %45
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
45
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b %47
46
	b %49
47
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
48
	ldr r0, [sp, #8]
	ldr r3, _080030A4
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080030A0
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %53
49
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %50
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %52
50
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne %51
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %51
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
51
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
52
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _080030A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
53
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne %54
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x68]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	b %55
	ALIGN
_080030A0 DCDU gUnknown_03003EA4
_080030A4 DCDU 0xFFE007FF
_080030A8 DCDU 0x001FF800
54
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
55
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, #1
	adds r1, #0x20
	str r1, [sp, #0x10]
	cmp r0, #0x15
	str r0, [sp, #0xc]
	bge %56
	b %43
56
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #0x24]
	asrs r0, r0, #0x13
	adds r1, r0, r1
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	ldr r2, [sp, #0x28]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x44]
	bl __16__rt_sdiv
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x50]
	str r0, [sp, #0x40]
	bl __16__rt_sdiv
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge %57
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
57
	cmp r1, #0
	bge %58
	ldr r0, [sp, #0x40]
	adds r1, r0, r1
58
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x44]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #6
	str r1, [sp, #0x3c]
59
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x3c]
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq %62
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x38]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x38]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %60
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %64
60
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne %61
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %61
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
61
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b %63
62
	b %65
63
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
64
	ldr r0, [sp, #8]
	ldr r3, _08003644
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800364C
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b %69
65
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq %66
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b %68
66
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne %67
	ldr r0, [r6, #4]
	cmp r0, #0
	bne %67
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
67
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
68
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003644
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
69
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bne %70
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x34]
	b %71
70
	ldr r0, [sp, #0x34]
	adds r0, #2
	str r0, [sp, #0x34]
71
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	adds r0, #1
	adds r1, #1
	str r1, [sp, #0x20]
	cmp r0, #0x1e
	str r0, [sp, #0xc]
	bge %72
	b %59
72
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8002CAE


