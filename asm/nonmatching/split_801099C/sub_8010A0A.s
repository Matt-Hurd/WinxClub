	non_word_aligned_thumb_func_start sub_8010A0A
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	movs r5, #0
	adds r4, r0, #0
	mvns r0, r5
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x10]
	movs r6, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	beq %6
3
	ldr r0, _08010D58
	movs r3, #0
	movs r2, #8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	ldr r1, [r1, #4]
	ldr r0, [r0]
	mov ip, r1
	ldr r1, [r4, #0x6c]
	ldr r3, [r4, #0x74]
	adds r2, r1, #0
	adds r1, #1
	lsrs r0, r0, #0x10
	adds r0, r0, r5
	cmp r1, r3
	mov lr, r1
	bge %4
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	cmp r1, r0
	bhi %4
	mov r1, lr
	str r1, [r4, #0x6c]
4
	ldr r1, [sp, #4]
	cmp r1, r5
	blo %5
	ldr r1, [sp, #4]
	cmp r1, r0
	bhs %5
	str r5, [r4, #0x68]
	str r5, [r4, #0x64]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r6
	str r0, [r4, #0x5c]
	b %6
5
	mov r2, ip
	lsls r2, r2, #0x13
	adds r1, r7, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	adds r1, r2, r1
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	mov r2, ip
	lsrs r2, r2, #0xd
	lsls r2, r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r2, r1
	adds r6, #1
	cmp r0, r6
	bhi %3
6
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %7
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_80103EC
7
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8010A0A

