	thumb_func_start sub_803F898
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F8B8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x10]
	pop {r4}
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	pop {r3}
	lsrs r0, r0, #0x10
	bx r3
	thumb_func_end sub_803F898
