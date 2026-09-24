	non_word_aligned_thumb_func_start HostileCreature__DamagePlayer
HostileCreature__DamagePlayer
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x2c]
	bx lr

