	non_word_aligned_thumb_func_start WinxClub__18
WinxClub__18
	push {r4, lr}
	adds r4, r0, #0
	bl m18__7DefaultFv
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r4}
	pop {r3}
	bx r3

