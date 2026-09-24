	thumb_func_start sub_800065C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08000900
	lsls r1, r1, #3
	ldr r0, [r0]
	ldr r2, [r0, #0x24]
	adds r5, r2, r1
	ldr r1, [r4, #0x10]
	cmp r1, r5
	beq %1
	movs r6, #0
	str r6, [r4, #0x44]
	str r6, [r4, #0x48]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	adds r2, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_803FA3C
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_800065C

