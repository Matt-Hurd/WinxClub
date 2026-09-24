	non_word_aligned_thumb_func_start HostileCreature__PlayerIframe
	adds r0, #0x80
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr
	thumb_func_end HostileCreature__PlayerIframe

