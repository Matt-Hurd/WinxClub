	non_word_aligned_thumb_func_start sub_8010456
	movs r2, #0x1f
	asrs r3, r0, #3
	cmp r3, #0x1f
	bge %5
	movs r2, #0
	cmp r0, #0
	blt %5
	ldr r2, _08010698
	lsls r0, r0, #0x1d
	ldrb r1, [r2, r1]
	lsrs r0, r0, #0x1d
	cmp r1, r0
	bhs %3
	movs r0, #1
	b %4
3
	movs r0, #0
4
	adds r2, r0, r3
5
	adds r0, r2, #0
	bx lr
	thumb_func_end sub_8010456

