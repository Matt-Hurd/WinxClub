	thumb_func_start sub_801E4D0
sub_801E4D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801E764
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	sub sp, #0x64
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne %44
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x60]
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	cmp r0, #0
	str r1, [sp, #0x48]
	beq %44
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x5c]
	subs r1, #0x30
	str r1, [sp, #0x58]
43
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x58]
	bl sub_8000AC4
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq %48
	ldr r7, _0801E768
	ldr r0, [r7]
	bl sub_80019B4
	ldr r2, [r4, #0x30]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r2, #0x50
	ldrb r2, [r2]
	cmp r2, #0
	beq %44
	lsls r3, r2, #0x1e
	bpl %49
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	cmp r0, #2
	bls %45
	ldr r0, [sp, #0x50]
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x54]
	str r0, [r4, #0x64]
44
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
45
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x60]
	adds r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x64]
	adds r0, r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0x58]
	str r0, [sp, #0x40]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x44]
	ldr r0, [r7]
	bl sub_80019C4
	adds r6, r0, #0
	movs r0, #0
	movs r5, #0
	cmp r6, #0
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	bls %47
46
	adds r2, r5, #0
	add r0, sp, #4
	ldr r1, [r7]
	bl sub_80019D4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x34]
	str r1, [sp, #0x30]
	ldr r1, [r7]
	add r0, sp, #4
	adds r2, r5, #0
	bl sub_80019E8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	ldr r1, [r7]
	add r0, sp, #8
	adds r2, r5, #0
	bl sub_80019FC
	ldr r0, [sp, #8]
	add r3, sp, #0x20
	movs r1, #4
	str r0, [sp, #0x24]
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x50]
	adds r5, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x50]
	movs r1, #5
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x54]
	lsls r5, r5, #0x18
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r5, r5, #0x18
	cmp r5, r6
	str r0, [sp, #0x54]
	blo %46
47
	add r0, sp, #0x50
	bl sub_8018620
	ldr r0, [sp, #0x50]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl __16_ll_shift_l
	add r7, pc, #0x190
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r5, r0, #0
	ldr r0, [sp, #0x54]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl __16_ll_shift_l
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
	b %50
48
	b %66
49
	b %55
50
	cmp r6, #1
	bls %51
	NEGS r0, r0
	b %52
51
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x34]
	subs r0, r1, r0
	ldr r1, [sp, #0x2c]
	subs r5, r1, r2
52
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	subs r1, r1, r0
	subs r2, r2, r5
	str r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	adds r0, r1, r0
	adds r1, r2, r5
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x38
	add r1, sp, #0x1c
	add r2, sp, #0x14
	add r3, sp, #0xc
	bl sub_8018884
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	subs r0, r0, r1
	ldr r1, [sp, #0x10]
	str r0, [r4, #0x60]
	subs r1, r1, r2
	str r1, [r4, #0x64]
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq %54
53
	b %43
54
	b %44
55
	lsls r2, r2, #0x1f
	bpl %53
	ldr r5, [r4, #0x2c]
	movs r2, #0
56
	lsls r3, r2, #2
	adds r3, r3, r4
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq %57
	ldr r3, [r3, #4]
	cmp r3, r5
	beq %58
57
	adds r2, #1
	cmp r2, #5
	blo %56
	movs r2, #0
	mvns r2, r2
58
	adds r3, r2, #1
	bne %54
	ldr r2, [r4, #0x30]
59
	lsls r6, r3, #2
	adds r6, r6, r4
	ldr r6, [r6, #0x38]
	cmp r6, #0
	beq %60
	ldr r6, [r6, #4]
	cmp r6, r2
	beq %61
60
	adds r3, #1
	cmp r3, #5
	blo %59
	movs r3, #0
	mvns r3, r3
61
	adds r6, r3, #0
	adds r3, r6, #1
	bne %54
	cmp r2, r1
	bne %62
	cmp r5, r0
	bne %63
62
	cmp r2, r0
	bne %54
	cmp r5, r1
	beq %54
63
	movs r5, #1
	ldr r3, [r4, #0x7c]
	lsls r5, r5, #0x1f
	orrs r3, r5
	str r3, [r4, #0x7c]
	cmp r2, r1
	bne %65
	str r0, [r4, #0x34]
64
	b %44
65
	str r1, [r4, #0x34]
	b %44
66
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0x12
	bpl %54
	ldr r0, _0801E764
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r3, #0
	ldrsb r1, [r0, r3]
	cmp r1, #0
	beq %67
	ldr r1, [sp, #0x5c]
	ldrb r1, [r1, #7]
	cmp r1, #2
	beq %68
	cmp r1, #0
	beq %68
67
	movs r3, #1
	ldrsb r0, [r0, r3]
	cmp r0, #0
	beq %54
	ldr r1, [sp, #0x5c]
	ldrb r0, [r1, #7]
	cmp r0, #4
	beq %68
	cmp r0, #6
	bne %54
68
	ldr r0, [r4, #0x2c]
	ldr r1, [sp, #0x58]
	bl sub_8000AC4
	cmp r0, #0
	beq %54
	ldr r7, _0801E768
	ldr r0, [r7]
	bl sub_80019B4
	ldr r2, [r4, #0x2c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r2, #0x50
	ldrb r2, [r2]
	cmp r2, #0
	beq %53
	lsls r3, r2, #0x1e
	bmi %53
	lsls r2, r2, #0x1f
	bpl %53
	ldr r2, [r4, #0x2c]
	movs r3, #0
69
	lsls r5, r3, #2
	adds r5, r5, r4
	ldr r5, [r5, #0x38]
	cmp r5, #0
	beq %70
	ldr r5, [r5, #4]
	cmp r5, r2
	beq %71
70
	adds r3, #1
	cmp r3, #5
	blo %69
	movs r3, #0
	mvns r3, r3
71
	adds r5, r3, #0
	adds r3, r5, #1
	bne %64
	ldr r5, [r4, #0x30]
72
	lsls r6, r3, #2
	adds r6, r6, r4
	ldr r6, [r6, #0x38]
	cmp r6, #0
	beq sub_801E756
	ldr r6, [r6, #4]
	cmp r6, r5
	beq %74


