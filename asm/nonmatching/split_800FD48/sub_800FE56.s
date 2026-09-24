	non_word_aligned_thumb_func_start sub_800FE56
sub_800FE56
	ldr r1, _0800FE70
	ldrh r1, [r1, #4]
	ldr r2, [r0, #8]
	movs r0, #1
	lsls r0, r2
	movs r2, #1
	lsls r2, r2, #0x10
	subs r0, r2, r0
	subs r0, r1, r0
	bx lr

