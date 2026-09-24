	thumb_func_start sub_8014DD4
sub_8014DD4
	push {r4, r5, r6, r7}
	ldr r6, _08014EB0
	ldr r4, _08014EAC
	movs r1, #0
	ldr r2, _08014EB4
	movs r5, #0xff
1
	movs r0, #0
	lsls r3, r1, #3
	adds r3, r3, r6
	strb r5, [r4, r1]
2
	lsls r7, r0, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	strh r2, [r3, r7]
	blo %2
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x10
	blo %1
	pop {r4, r5, r6, r7}
	bx lr

