	non_word_aligned_thumb_func_start sub_8011E52
sub_8011E52
	ldr r1, _0801209C
	cmp r0, #0
	strh r0, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	strh r2, [r1, #0x14]
	ble %49
	movs r0, #0
	strh r0, [r1, #0x16]
49
	bx lr

