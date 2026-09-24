	thumb_func_start sub_80106BC
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r6, [r0, #4]
	movs r5, #0
	adds r4, r0, #0
	mvns r0, r5
	str r0, [r4, #0x6c]
	ldr r0, [sp, #4]
	movs r7, #0
	cmp r0, #0
	bls %3
1
	ldr r0, _08010994
	movs r3, #0
	movs r2, #8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x10
	lsls r2, r0, #0x13
	adds r5, r1, r5
	adds r1, r6, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r6, r0, r1
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r2, r0, #0
	adds r0, #1
	cmp r0, r1
	bge %2
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	cmp r1, r5
	bhi %2
	str r0, [r4, #0x6c]
2
	ldr r0, [sp, #4]
	adds r7, #1
	cmp r7, r0
	blo %1
3
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	str r5, [r4, #0x64]
	str r5, [r4, #0x68]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %4
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_80103EC
4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80106BC

