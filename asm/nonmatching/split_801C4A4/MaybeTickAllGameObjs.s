	non_word_aligned_thumb_func_start MaybeTickAllGameObjs
MaybeTickAllGameObjs
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x29
	lsls r0, r0, #5
	adds r4, r5, r0
	ldrb r1, [r4]
	subs r0, #0x20
	adds r6, r5, r0
	movs r2, #1
	lsls r2, r2, #9
	cmp r1, #0
	ldr r0, [r6, #0x1c]
	sub sp, #0x1c
	beq %52
	lsls r1, r0, #0x16
	bmi %53
	orrs r0, r2
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F1AC
	b %53
52
	lsls r1, r0, #0x16
	bpl %53
	bics r0, r2
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F1AC
53
	ldrb r0, [r4, #1]
	movs r1, #1
	lsls r1, r1, #0xa
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq %54
	lsls r2, r0, #0x15
	bmi %55
	orrs r0, r1
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F23C
	b %55
54
	lsls r2, r0, #0x15
	bpl %55
	bics r0, r1
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F23C
55
	ldrb r0, [r4, #2]
	movs r1, #1
	lsls r1, r1, #0xb
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq %56
	lsls r2, r0, #0x14
	bmi %57
	orrs r0, r1
	str r0, [r6, #0x1c]
	b %57
56
	lsls r2, r0, #0x14
	bpl %57
	bics r0, r1
	str r0, [r6, #0x1c]
57
	ldr r0, [r6, #0x1c]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %62
58
	lsls r0, r7, #2
	adds r0, r0, r5
	ldr r4, [r0, #0x20]
	cmp r7, #0
	beq %59
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq %59
	movs r0, #0x94
	ldr r0, [r0, r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	bne %59
	ldr r0, _0801CB08
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq %66
59
	ldrh r0, [r4, #4]
	cmp r0, #0x10
	beq %67
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r7, #0
	adds r0, r5, #0
	bl sub_801C4A4
	adds r2, r4, #0
	adds r2, #0x80
	str r2, [sp, #0x18]
	ldr r1, [r2, #4]
	movs r3, #0xff
	lsls r0, r1, #0x18
	lsls r3, r3, #8
	bics r1, r3
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [r2, #4]
	ldr r0, _0801CB0C
	ldr r0, [r0]
	ldr r1, [r4, #0x58]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	movs r2, #0x13
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x20]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x54]
	ldr r2, [r2, #4]
	lsls r3, r2, #5
	lsrs r3, r3, #0x1d
	asrs r1, r3
	str r1, [sp, #4]
	ldr r1, [r4, #0x5c]
	lsls r2, r2, #2
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x10
	adds r1, r3, r1
	asrs r1, r1, #0x10
	lsrs r2, r2, #0x1d
	asrs r1, r2
	str r1, [sp, #8]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	lsls r0, r0, #0x1f
	bpl %60
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0xc]
	bl __16__rt_sdiv
	str r1, [sp, #4]
60
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x1e
	bpl %61
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldrh r0, [r0, #0xe]
	bl __16__rt_sdiv
	str r1, [sp, #8]
61
	movs r2, #1
	movs r1, #0
	ldr r0, [sp, #0x10]
	bl sub_8001B80
	ldr r1, [r0]
	movs r2, #0xff
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	adds r2, #1
	cmp r1, r2
	ldr r0, [r0, #0x10]
	bhi %64
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	b %63
62
	b %72
63
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	ldrb r0, [r0, r1]
	b %65
64
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	lsls r1, r1, #1
	ldrh r0, [r0, r1]
65
	ldr r2, [sp, #0x18]
	lsls r0, r0, #0x18
	ldr r1, [r2, #4]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	b %68
66
	b %70
67
	b %69
68
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b %71
69
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b %71
70
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq %71
	ldr r1, _0801CB10
	movs r0, #8
	ldr r1, [r1]
	ands r1, r0
	beq %71
	adds r0, r4, #0
	bl sub_801F65C
71
	ldr r0, [r6, #0x1c]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r7
	bls %72
	b %58
72
	adds r0, r5, #0
	bl sub_801C352
	adds r0, r5, #0
	bl sub_801C210
	adds r0, r5, #0
	bl sub_801BEB6
	ldr r0, [r5, #0x20]
	bl sub_802222C
	adds r0, r5, #0
	bl sub_801B332
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

