	non_word_aligned_thumb_func_start WinxClub__20
WinxClub__20
	push {r4, lr}
	adds r4, r0, #0
	bl m20__7DefaultFv
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	pop {r4}
	pop {r3}
	bx r3
