	non_word_aligned_thumb_func_start ScannerScriptGroup__Intersect
	push {r4, lr}
	adds r4, r0, #0
	bl TakeDamage__7DefaultFv
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3
	thumb_func_end ScannerScriptGroup__Intersect

