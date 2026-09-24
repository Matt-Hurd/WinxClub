	non_word_aligned_thumb_func_start sub_8010746
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	sub sp, #0x5c
	cmp r0, #0
	beq %5
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
5
	ldr r0, [r4, #8]
	movs r5, #0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne %7
	movs r0, #1
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0xc
	str r0, [r4, #0x74]
	bl sub_803D9C4
	str r0, [r4, #0x70]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #0x12
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, [r4, #0x70]
	str r5, [r0, #8]
	ldr r0, [sp, #0x60]
	ldr r1, [r4, #0x70]
	str r0, [r1]
	ldr r0, [r4, #0x70]
	adds r0, #4
	ldr r1, [r0]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	str r1, [r0]
	ldr r0, [sp, #0x60]
	str r0, [r4, #4]
	movs r0, #1
6
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	str r0, [r4, #0x74]
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x70]
	movs r2, #0
	movs r1, #0
	str r1, [sp, #0x48]
	str r2, [sp, #0x4c]
	ldr r5, [sp, #0x60]
	adds r6, r0, #0
	ldr r0, [r4, #8]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	beq %9
	add r0, sp, #4
	adds r0, #2
	str r0, [sp, #0x58]
8
	ldr r0, _08010994
	movs r3, #0
	movs r2, #0x42
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #0x42
	bl __16__rt_memcpy
	ldr r0, [sp, #0x58]
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	adds r5, r0, r5
	ldr r0, [r4, #8]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bhi %8
9
	adds r5, #3
	lsrs r5, r5, #2
	lsls r5, r5, #2
	str r5, [r4, #4]
	ldr r0, [sp, #0x60]
	movs r1, #0
	str r1, [sp, #0x44]
	str r0, [sp, #0x50]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	beq %13
	add r0, sp, #0
	adds r0, #2
	str r0, [sp, #0x54]
10
	ldr r0, _08010994
	movs r3, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x50]
	movs r2, #0x42
	bl sub_800529A
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0x42
	bl __16__rt_memcpy
	add r3, sp, #0
	ldrh r0, [r3]
	ldr r1, [sp, #0x48]
	movs r7, #0
	subs r0, r0, r1
	beq %12
11
	ldr r0, _08010994
	movs r3, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x4c]
	lsrs r1, r1, #0x10
	adds r2, r1, r2
	str r2, [sp, #0x4c]
	lsls r2, r0, #0x13
	adds r1, r5, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r5, r0, r1
	add r3, sp, #0
	ldrh r0, [r3]
	ldr r1, [sp, #0x48]
	adds r7, #1
	subs r0, r0, r1
	cmp r0, r7
	bhi %11
12
	str r5, [r6]
	ldr r0, [r6, #4]
	ldr r2, [sp, #0x4c]
	lsrs r0, r0, #0x12
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x12
	orrs r0, r1
	str r0, [r6, #4]
	add r3, sp, #0
	ldrh r1, [r3]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0xe
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #4]
	ldr r0, [sp, #0x50]
	adds r0, #2
	str r0, [r6, #8]
	ldrh r1, [r3]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x48]
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, #2
	adds r1, r0, r1
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x44]
	adds r6, #0xc
	adds r1, #1
	str r1, [sp, #0x44]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bhi %10
13
	movs r0, #1
	b %6
	thumb_func_end sub_8010746

