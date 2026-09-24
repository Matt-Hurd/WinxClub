	thumb_func_start Npc__3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	sub sp, #8
	subs r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %4
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
4
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end Npc__3C

