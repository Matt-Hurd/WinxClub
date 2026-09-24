	non_word_aligned_thumb_func_start sub_800EC0E
	push {r4, r5, r6, lr}
	sub sp, #8
	cmp r0, #2
	bne %46
	ldr r4, _0800ED6C
	ldrb r0, [r4]
	cmp r0, #0
	beq %43
	ldrh r1, [r4, #4]
	cmp r2, r1
	blo %46
43
	cmp r0, #0
	bne %44
	bl sub_8008160
	ldr r1, _0800ED74
	cmp r0, r1
	bhs %45
44
	ldrb r0, [r4]
	cmp r0, #1
	bne %46
	bl sub_8008160
	ldr r1, _0800ED78
	cmp r0, r1
	blo %46
45
	ldrb r0, [r4]
	movs r5, #0
	cmp r0, #0
	bne %47
	ldr r0, [r4, #0x14]
	ldrh r1, [r4, #2]
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r5, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r5
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	movs r2, #0
	adds r0, r0, r1
	adds r1, r0, #5
	ldr r0, [r4, #0x38]
	bl sub_80137F8
	movs r1, #1
	ldr r0, [r4, #0x38]
	bl sub_80139AC
	movs r0, #1
	strb r0, [r4]
46
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
47
	movs r1, #2
	ldr r0, [r4, #0x38]
	bl sub_80139AC
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4, #2]
	ldr r0, [r4, #0x14]
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r6
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	strb r5, [r3, #4]
	mov r0, sp
	bl atoi
	strh r0, [r4, #4]
	strb r5, [r4]
	b %46
	thumb_func_end sub_800EC0E
