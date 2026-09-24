	non_word_aligned_thumb_func_start sub_8016CB6
sub_8016CB6
	push {r4, lr}
	ldr r0, _08016D84
	ldr r4, [r1]
	ldr r0, [r0]
	cmp r0, #0
	beq %44
	bl sub_800B6A8
	ldrh r1, [r4, #4]
	cmp r0, r1
	beq %44
	lsls r2, r1, #0x18
	ldr r0, _08016D68
	lsrs r2, r2, #0x18
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
44
	pop {r4}
	pop {r3}
	bx r3

