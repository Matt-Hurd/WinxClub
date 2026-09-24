	non_word_aligned_thumb_func_start sub_8014436
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801472C
	adds r5, r1, #0
	str r0, [r4]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq %10
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
10
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq %11
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
11
	adds r0, r4, #0
	bl sub_803F55C
	movs r1, #0
	str r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x60
	str r1, [r4, #0x60]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	bl sub_80134F8
	movs r1, #0
	adds r0, r4, #0
	bl sub_801352C
	cmp r5, #0
	beq %12
	adds r0, r4, #0
	bl sub_803DA18
12
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8014436

