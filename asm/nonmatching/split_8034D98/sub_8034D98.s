	thumb_func_start sub_8034D98
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08035180
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	ldr r4, _08035184
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq %2
1
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne %1
2
	ldr r4, _08035188
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	movs r0, #0xff
	adds r0, #0xed
	ldr r0, [r0, r6]
	cmp r0, #0
	beq %3
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r4]
	bl sub_8000DE6
3
	movs r5, #0
4
	lsls r0, r5, #2
	adds r4, r0, r6
	movs r0, #0xff
	adds r0, #0xf1
	ldr r0, [r0, r4]
	cmp r0, #0
	beq %5
	adds r1, r4, #0
	ldr r0, _08035188
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
5
	movs r0, #1
	lsls r0, r0, #9
	adds r7, r4, r0
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq %6
	movs r0, #0x23
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_8000DE6
6
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq %7
	movs r0, #0x21
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _08035188
	ldr r0, [r0]
	bl sub_8000DE6
7
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8034D98

