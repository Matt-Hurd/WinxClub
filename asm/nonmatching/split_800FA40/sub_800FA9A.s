	non_word_aligned_thumb_func_start sub_800FA9A
sub_800FA9A
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq %3
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq %3
	movs r0, #1
	bx lr
3
	movs r0, #0
	bx lr

