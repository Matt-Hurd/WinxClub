	thumb_func_start sub_8020B50
sub_8020B50
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #1
	ldr r2, [r1, #0x34]
	ldr r1, [r1, #0x38]
	str r1, [r0, #0x5c]
	str r2, [r0, #0x58]
	b sub_8020AB6

