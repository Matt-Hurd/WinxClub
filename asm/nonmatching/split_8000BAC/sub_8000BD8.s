	thumb_func_start sub_8000BD8
sub_8000BD8
	ldr r1, _08000C74
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x3c]
	ldr r0, _08000C78
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #4]
	ldr r1, [r1, #4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1d
	lsls r0, r0, #0x10
	lsls r0, r1
	ldr r1, _08000C78
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1]
	movs r0, #1
	bx lr

