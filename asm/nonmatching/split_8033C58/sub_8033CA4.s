	thumb_func_start sub_8033CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08034050
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %3
	ldr r0, _08034054
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
3
	ldr r5, _08034058
	movs r6, #0x45
	ldr r0, [r5]
	lsls r6, r6, #5
	adds r0, r6, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %4
	ldr r0, [r5]
	adds r0, r6, r0
	bl sub_80268AC
4
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %5
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
5
	ldr r0, [r4, #0x48]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8033CA4

