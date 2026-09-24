	non_word_aligned_thumb_func_start sub_8011E22
	ldr r0, _0801209C
	ldrh r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	bne %48
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq %48
	movs r0, #1
	bx lr
48
	movs r0, #0
	bx lr
	thumb_func_end sub_8011E22

