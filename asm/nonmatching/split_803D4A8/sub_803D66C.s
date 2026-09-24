	thumb_func_start sub_803D66C
	ldrh r2, [r0]
	ldr r1, _0803D67C
	strh r2, [r1, #0x10]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x12]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0x14]
	bx lr
	ALIGN
_0803D67C DCDU REG_WIN0H
	thumb_func_end sub_803D66C

