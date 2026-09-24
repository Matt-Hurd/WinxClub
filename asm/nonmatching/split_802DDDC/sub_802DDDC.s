	thumb_func_start sub_802DDDC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq %1
	ldr r0, _0802DFEC
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x44]
1
	ldr r5, _0802DFF0
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %2
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_802DDDC

