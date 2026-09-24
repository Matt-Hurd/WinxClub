	thumb_func_start sub_80117A4
sub_80117A4
	ldr r0, _08011A14
	adds r0, #0x24
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

