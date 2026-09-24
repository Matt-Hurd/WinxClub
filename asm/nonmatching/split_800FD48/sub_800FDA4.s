	thumb_func_start sub_800FDA4
sub_800FDA4
	ldr r0, _0800FE6C
	ldrh r1, [r0, #0xa]
	movs r2, #0x1d
	lsls r2, r2, #9
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	lsrs r2, r0, #0xb
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldr r1, _0800FE7C
	ldr r1, [r1]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, _0800FE80
	str r1, [r0, #4]
	ldr r1, _0800FE84
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr

