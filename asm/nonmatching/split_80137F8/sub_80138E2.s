	non_word_aligned_thumb_func_start sub_80138E2
sub_80138E2
	push {r4, r5}
	ldr r4, _08013B5C
	cmp r3, #0xff
	ldr r4, [r4]
	bne %7
	ldrb r3, [r4, #9]
7
	ldr r4, [r4, #4]
	lsls r2, r2, #4
	adds r2, r4, r2
	ldrh r5, [r2, #4]
	ldr r4, [r2, #8]
	lsls r3, r3, #2
	lsls r1, r5
	adds r1, r4, r1
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	pop {r4, r5}
	adds r1, r2, r1
	movs r2, #0
	b sub_80137F8

