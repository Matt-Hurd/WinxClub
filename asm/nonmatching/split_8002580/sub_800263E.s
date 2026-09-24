	non_word_aligned_thumb_func_start sub_800263E
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800281C
	sub sp, #8
	ldr r0, [r0]
	bl sub_800B082
	cmp r0, #3
	bhs %7
	movs r0, #1
	lsls r0, r0, #0x10
	b %8
7
	movs r0, #5
	lsls r0, r0, #0xe
8
	movs r1, #3
	lsls r1, r1, #0x19
	cmp r4, #0
	beq %10
	movs r2, #0
	str r2, [sp, #4]
	lsls r0, r0, #9
	lsrs r0, r0, #0xb
	movs r2, #5
	lsls r2, r2, #0x18
	orrs r2, r0
	add r0, sp, #4
	bl CpuSet
9
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
10
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, _08002820
	add r3, sp, #4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b %9
	thumb_func_end sub_800263E

