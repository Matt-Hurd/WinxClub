	thumb_func_start sub_8035F1C
sub_8035F1C
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x18]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #0x12]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #0x14]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq %5
	lsrs r2, r2, #5
	ldr r4, _08036144
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne %5
	ldrh r1, [r1, #4]
	strh r1, [r0, #0x16]
4
	pop {r4}
	bx lr
5
	movs r1, #0
	strh r1, [r0, #0x16]
	b %4

