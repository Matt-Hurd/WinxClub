	non_word_aligned_thumb_func_start HostileCreature__54
	ldr r0, _0802B27C
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne %173
	movs r0, #0
173
	ldr r1, _0802B280
	adds r0, #0x42
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end HostileCreature__54

