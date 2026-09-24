	thumb_func_start sub_800B04C
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bx lr
	thumb_func_end sub_800B04C

