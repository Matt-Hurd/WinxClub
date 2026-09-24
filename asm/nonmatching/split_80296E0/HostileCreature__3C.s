	non_word_aligned_thumb_func_start HostileCreature__3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %169
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
169
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl %170
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r2, r2, #0xa
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x34]
170
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	thumb_func_end HostileCreature__3C

