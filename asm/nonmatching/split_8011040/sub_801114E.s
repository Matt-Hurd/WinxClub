	non_word_aligned_thumb_func_start sub_801114E
sub_801114E
	adds r1, r0, #0
	ldr r1, [r1, #0x5c]
	movs r0, #1
	cmp r1, #0
	ble %15
	movs r0, #0
15
	bx lr

