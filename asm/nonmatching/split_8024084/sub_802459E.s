	non_word_aligned_thumb_func_start sub_802459E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xc0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	cmp r1, #0
	beq %68
	cmp r0, #0
	bne %68
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r6, #0
59
	ldr r0, _0802479C
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x1c]
	ldr r1, _080247A0
	bl sub_800065C
	movs r0, #0x1f
	mvns r0, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x1c]
	bl sub_80401C0
	movs r1, #1
	cmp r6, #8
	ldr r5, [r7, #0x1c]
	bhs %60
	movs r1, #0
60
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r2, r3
	lsls r1, r1, #0xd
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_8000324
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi %61
	adds r0, r5, #0
	bl sub_804025C
61
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x1c]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x10
	blo %59
	movs r5, #0
62
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq %63
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %63
	movs r1, #0
	bl sub_80401E4
63
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %62
	movs r5, #0
64
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq %65
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %65
	movs r1, #0
	bl sub_80401E4
65
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %64
	movs r5, #0
66
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq %67
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %67
	movs r1, #0
	bl sub_80401E4
67
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	b %69
68
	b %82
69
	cmp r5, #6
	blo %66
	movs r5, #0
70
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq %71
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %71
	movs r1, #0
	bl sub_80401E4
71
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %70
	movs r5, #0
72
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %73
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %73
	movs r1, #0
	bl sub_80401E4
73
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %72
	movs r5, #0
74
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %75
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %75
	movs r1, #0
	bl sub_80401E4
75
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %74
	movs r5, #0
76
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq %77
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %77
	movs r1, #0
	bl sub_80401E4
77
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %76
	movs r5, #0
78
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq %79
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %79
	movs r1, #0
	bl sub_80401E4
79
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %78
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq %80
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %80
	movs r1, #0
	bl sub_80401E4
80
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %81
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %81
	movs r1, #0
	bl sub_80401E4
81
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
82
	cmp r0, #0
	beq %81
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x59
	strb r0, [r4, #0xd]
	b %81
	thumb_func_end sub_802459E
