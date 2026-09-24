	non_word_aligned_thumb_func_start sub_8021F42
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x80
	adds r5, r1, #0
	ldr r1, [r0, #0x1c]
	adds r6, r3, #0
	cmp r1, #0xf
	sub sp, #0xc
	beq %39
	cmp r1, #0x10
	bne %41
39
	movs r0, #0
40
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
41
	ldr r0, [r0, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq %42
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b %40
42
	adds r0, r4, #0
	adds r0, #0xa0
	adds r7, r0, #0
	ldr r2, [r0, #4]
	adds r7, #0x60
	cmp r2, #0
	beq %46
	ldr r0, [r0, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne %46
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	ldr r0, _0802219C
	ldrb r0, [r0]
	cmp r0, #0
	beq %44
	lsrs r0, r6, #1
	lsls r0, r0, #0x18
	movs r1, #0
	mvns r1, r1
	asrs r0, r0, #0x18
	cmp r0, #0
	ble %43
	NEGS r1, r0
43
	ldr r5, _080221A4
	lsls r1, r1, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
	movs r0, #1
	b %40
44
	ldr r0, [r7, #0x3c]
	movs r2, #7
	lsls r1, r0, #0xc
	lsrs r1, r1, #0x1d
	adds r3, r1, r6
	lsls r2, r2, #0x11
	cmp r3, #5
	blo %45
	bics r0, r2
	str r0, [r7, #0x3c]
	movs r3, #5
	subs r6, r3, r1
	movs r0, #0
	lsls r1, r3, #6
	strh r0, [r1, r4]
	b %47
45
	lsls r1, r6, #0x11
	adds r1, r0, r1
	ands r1, r2
	bics r0, r2
	orrs r0, r1
	str r0, [r7, #0x3c]
	movs r0, #1
	b %40
46
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne %47
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne %47
	cmp r1, #0xb
	beq %47
	movs r2, #3
	lsls r2, r2, #0xf
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801F450
47
	movs r0, #0x97
	ldrsb r0, [r0, r5]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	cmp r0, #9
	bhs %60
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
48
	DCB 0x05
49
	DCB 0x05
50
	DCB 0x2A
51
	DCB 0x2A
52
	DCB 0x9F
53
	DCB 0x9A
54
	DCB 0x62
55
	DCB 0x62
56
	DCB 0xA3, 0x00
loc_802203e
	NEGS r0, r6
	ldr r5, _080221A4
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl ModifyPlayerHealth
	lsrs r0, r6, #1
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
	ldr r0, [r5]
	movs r1, #4
	adds r0, #0xac
	bl sub_8023AA2
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq %57
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %67
57
	adds r0, r4, #0
	bl sub_8021EEC
	b %67
loc_8022088
	movs r1, #0xac
	ldr r1, [r1, r5]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	str r1, [sp, #8]
	subs r1, #0x37
	cmp r1, #2
	bhi %65
	cmp r0, #2
	bne %58
	adds r0, r4, #0
	bl sub_8020A74
	adds r7, #0x34
	ldm r7!, {r0, r1}
	str r0, [r4, #0x58]
	str r1, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_8020AB6
	ldr r1, [sp, #8]
	cmp r1, #0x39
	bne %67
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	movs r2, #5
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r0, [sp]
	ldr r0, _080221A8
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r1, sp
	bl sub_801CA1E
	b %67
58
	adds r0, r4, #0
	bl sub_8020A74
	movs r0, #0
59
	lsls r1, r0, #2
	adds r1, r1, r5
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq %61
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1f
	beq %61
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %67
	movs r0, #0
	b %62
60
	b %69
61
	adds r0, #1
	cmp r0, #5
	blo %59
	b %67
62
	lsls r1, r0, #2
	adds r1, r1, r5
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq %63
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1f
	beq %63
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	b %64
63
	adds r0, #1
	cmp r0, #5
	blo %62
	movs r0, #0
64
	bl sub_80384FA
	b %67
65
	NEGS r0, r6
	ldr r5, _080221A4
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl ModifyPlayerHealth
	ldr r0, _0802219C
	ldrb r0, [r0]
	cmp r0, #0
	beq %66
	lsrs r0, r6, #1
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
66
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq %68
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
67
	b %70
68
	adds r0, r4, #0
	bl sub_8021EEC
	b %70
loc_8022172
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	b %70
loc_802217a
	movs r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b %70
69
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
70
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b %40
	thumb_func_end sub_8021F42
