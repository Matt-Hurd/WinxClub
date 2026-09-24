	non_word_aligned_thumb_func_start sub_800B01A
sub_800B01A
	push {r3, lr}
	ldr r2, _0800B0C8
	ldr r3, _0800B0CC
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %3
	bl sub_803DA18
3
	add sp, #4
	pop {r3}
	bx r3

