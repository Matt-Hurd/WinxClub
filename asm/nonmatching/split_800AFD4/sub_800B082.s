	non_word_aligned_thumb_func_start sub_800B082
sub_800B082
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	bx lr

