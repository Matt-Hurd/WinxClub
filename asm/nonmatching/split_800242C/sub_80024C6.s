	non_word_aligned_thumb_func_start sub_80024C6
sub_80024C6
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	ldr r2, [r2, #0x10]
	ldrb r0, [r0, r1]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r2, r0
	bx lr

