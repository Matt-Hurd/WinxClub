	thumb_func_start sub_800C134
	lsls r1, r1, #1
	adds r2, r1, r0
	adds r2, #0x80
	push {r4}
	ldrh r1, [r2]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r4, r1, #0
	subs r1, #0xff
	subs r1, #1
	ands r1, r3
	bics r4, r3
	orrs r1, r4
	strh r1, [r2]
	lsrs r2, r1, #8
	bne %46
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1c
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	pop {r4}
	b sub_800C0EC
46
	pop {r4}
	bx lr
	thumb_func_end sub_800C134

